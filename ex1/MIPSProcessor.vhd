-- part of tdt4255 computer design laboratory exercises
-- group for computer architecture and design
-- department of computer and information science
-- norwegian university of science and technology

-- MIPSProcessor.vhd
-- the mips processor component to be used in exercise 1 and 2.

-- todo replace the architecture dummyarch with a working behavioral

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity MIPSProcessor is
  generic (
            ADDR_WIDTH : integer := 8;
            DATA_WIDTH : integer := 32
          );
  port (
    clk, reset        : in  std_logic;
    processor_enable  : in  std_logic;
    imem_data_in      : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    imem_address      : out std_logic_vector(ADDR_WIDTH-1 downto 0);
    dmem_data_in      : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    dmem_address      : out std_logic_vector(ADDR_WIDTH-1 downto 0);
    dmem_data_out     : out std_logic_vector(DATA_WIDTH-1 downto 0);
    dmem_write_enable : out std_logic
);
end MIPSProcessor;

architecture behavioral of MIPSProcessor is

  -- pc signals
  signal pc_in : std_logic_vector(31 downto 0);
  signal pc_out : std_logic_vector(31 downto 0);
  signal write_enable_in : std_logic;

  -- control signals
  signal instruction : std_logic_vector(31 downto 26);
  signal ir_write : std_logic;
  signal i_or_d : std_logic;
  signal pc_write : std_logic;
  signal pc_write_cond : std_logic;
  signal pc_source : std_logic_vector(1 downto 0);
  signal mem_read : std_logic;
  signal mem_to_reg : std_logic;
  signal alu_op : std_logic_vector(1 downto 0);
  signal mem_write : std_logic;
  signal alu_src_a : std_logic;
  signal alu_src_b : std_logic_vector(1 downto 0);
  signal reg_write : std_logic;
  signal reg_dst : std_logic;

  -- memory unit signals
  signal mem_data_out : std_logic_vector(31 downto 0);
  signal write_data_in : std_logic_vector(31 downto 0);

  -- alu signals
  signal alu_result_zero : std_logic;
  signal alu_result_out : std_logic_vector(31 downto 0);

  signal alu_control_out : std_logic_vector(3 downto 0);

  -- register signals
  signal read_data_1_out : std_logic_vector (31 downto 0);
  signal read_data_2_out : std_logic_vector (31 downto 0);

  -- instruction register signals
  signal instruction_opcode_out : std_logic_vector (31 downto 26);
  signal instruction_rs_out : std_logic_vector (25 downto 21);
  signal instruction_rt_out : std_logic_vector (20 downto 16);
  signal instruction_address_out : std_logic_vector (15 downto 0);

  -- MUX signals
  signal write_register_mux_out : std_logic_vector(4 downto 0);
  signal write_data_mux_out : std_logic_vector(31 downto 0);
  signal alu_a_mux_out : std_logic_vector(31 downto 0);
  signal alu_b_mux_out : std_logic_vector(31 downto 0);
  signal pc_mux_out : std_logic_vector(31 downto 0);

  -- Latches
  signal latch_alu_out : std_logic_vector (DATA_WIDTH - 1 downto 0);
  signal latch_memory_data_register : std_logic_vector (DATA_WIDTH - 1 downto 0);
  signal latch_a_out : std_logic_vector (DATA_WIDTH - 1 downto 0);
  signal latch_b_out : std_logic_vector (DATA_WIDTH - 1 downto 0);

  -- Misc
  signal sign_extend_a_out : std_logic_vector (DATA_WIDTH - 1 downto 0);
  signal shift_left_a_out : std_logic_vector (DATA_WIDTH -1 downto 0);

  signal sign_extend_b_out : std_logic_vector (27 downto 0);
  signal shift_left_b_out : std_logic_vector (27 downto 0);

  signal sign_extend_b_in : std_logic_vector(25 downto 0);

begin

  alu: entity work.alu
  port map (
             operand_a_in => alu_a_mux_out,
             operand_b_in => alu_b_mux_out,
             alu_control_in => ALU_CONTROL_ADD,
             zero_out => alu_result_zero,
             alu_result_out => alu_result_out);

  alu_control : entity work.alu_control
  port map (
             alu_function_in => instruction_address_out(5 downto 0),
             control_alu_op => alu_op,
             alu_control_out => alu_control_out);

  memory_unit: entity work.memory_unit
  port map (
             clk => clk, reset => reset,
             control_i_or_d => i_or_d,
             control_mem_read => mem_read,
             control_mem_write => mem_write,
             pc_in => pc_out,
             alu_out_in => latch_alu_out,
             mem_data_out => mem_data_out,
             write_data_in => write_data_in,
             imem_data_in => imem_data_in,
             imem_address_out => imem_address,
             dmem_data_in => dmem_data_in,
             dmem_data_out => dmem_data_out,
             dmem_address_out => dmem_address,
             dmem_write_enable_out => dmem_write_enable);

  pc: entity work.pc
  port map (
             clk => clk,
             control_pc_write => pc_write,
             control_pc_write_cond => pc_write_cond,
             alu_result_zero => alu_result_zero,
             pc_in => pc_in,
             pc_out => pc_out);

  control_unit: entity work.control_unit
  port map (
             clk => clk,
             reset => reset,
             instruction => instruction,
             ir_write => ir_write,
             i_or_d => i_or_d,
             pc_write => pc_write,
             pc_write_cond => pc_write_cond,
             pc_source => pc_source,
             mem_read => mem_read,
             mem_to_reg => mem_to_reg,
             alu_op => alu_op,
             mem_write => mem_write,
             alu_src_a => alu_src_a,
             alu_src_b => alu_src_b,
             reg_write => reg_write,
             reg_dst => reg_dst);

  registers : entity work.registers
  port map (
             clk => clk, reset => reset,
             read_register_1_in => instruction_rs_out,
             read_register_2_in => instruction_rt_out,
             write_register_in => write_register_mux_out,
             write_data_in => write_data_mux_out,
             reg_write_in => reg_write,
             read_data_1_out => read_data_1_out,
             read_data_2_out => read_data_2_out);

  instruction_register : entity work.instruction_register
  Port map (
             clk => clk, reset => reset,
             mem_data_in => mem_data_out,
             control_ir_write_in => ir_write,
             instruction_opcode_out => instruction_opcode_out,
             instruction_rs_out => instruction_rs_out,
             instruction_rt_out => instruction_rt_out,
             instruction_address_out => instruction_address_out);

  -- Muxes
  write_register_mux : entity work.mux
  Generic map (
    DATA_WIDTH => 5)
  Port map (
             a_in => instruction_rt_out,
             b_in => instruction_address_out(15 downto 11),
             select_in => reg_dst,
             data_out => write_register_mux_out);

  write_data_mux : entity work.mux
  Port map (
             a_in => latch_alu_out,
             b_in => latch_memory_data_register,
             select_in => mem_to_reg,
             data_out => write_data_mux_out);

  alu_a_mux : entity work.mux
  Port map (
             a_in => pc_out,
             b_in => latch_a_out,
             select_in => alu_src_a,
             data_out => alu_a_mux_out);

  alu_b_mux : entity work.mux_4
  Port map (
             a_in => latch_b_out,
             b_in => x"00000004",
             c_in => sign_extend_a_out,
             d_in => shift_left_a_out,
             select_in => alu_src_b,
             data_out => alu_b_mux_out);

  pc_mux : entity work.mux_4
  port map (
             a_in => alu_result_out,
             b_in => latch_alu_out,
             c_in => shift_left_b_out,
             d_in => x"00000000",
             select_in => pc_source,
             data_out => pc_mux_out);

  -- Latches
  alu_out : entity work.value_storage
  Port map (
             clk => clk,
             value_in => alu_result_out,
             value_out => latch_alu_out);

  memory_data_register : entity work.value_storage
  Port map (
             clk => clk,
             value_in => mem_data_out,
             value_out => latch_memory_data_register);

  latch_a : entity work.value_storage
  Port map (
             clk => clk,
             value_in => read_data_1_out,
             value_out => latch_a_out);

  latch_b : entity work.value_storage
  Port map (
             clk => clk,
             value_in => read_data_2_out,
             value_out => latch_b_out);

  shift_left_a : entity work.shift_left_2
  port map (
             data_in => sign_extend_a_out,
             data_out => shift_left_a_out);

  sign_extend_a : entity work.sign_extend
  port map (
             data_in => instruction_address_out,
             data_out => sign_extend_a_out);

  shift_left_b : entity work.shift_left_2
  generic map (DATA_WIDTH => 28)
  port map (
             data_in => sign_extend_b_out,
             data_out => shift_left_b_out);

  sign_extend_b_in <= instruction_rs_out & instruction_rt_out & instruction_address_out;

  sign_extend_b : entity work.sign_extend
  generic map (DATA_IN_WIDTH => 26, DATA_OUT_WIDTH => 28)
  port map (
             data_in => sign_extend_b_in,
             data_out => sign_extend_b_out);
end behavioral;
