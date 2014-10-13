-- part of tdt4255 computer design laboratory exercises
-- group for computer architecture and design
-- department of computer and information science
-- norwegian university of science and technology

-- MIPSProcessor.vhd
-- the mips processor component to be used in exercise 1 and 2.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity MIPSProcessor is
  generic ( ADDR_WIDTH : integer := 8;
            DATA_WIDTH : integer := 32);

  port ( clk, reset        : in  std_logic;
         processor_enable  : in  std_logic;
         imem_data_in      : in  std_logic_vector(DATA_WIDTH-1 downto 0);
         imem_address      : out std_logic_vector(ADDR_WIDTH-1 downto 0);
         dmem_data_in      : in  std_logic_vector(DATA_WIDTH-1 downto 0);
         dmem_address      : out std_logic_vector(ADDR_WIDTH-1 downto 0);
         dmem_data_out     : out std_logic_vector(DATA_WIDTH-1 downto 0);
         dmem_write_enable : out std_logic;
         control_instruction : inout std_logic_vector(5 downto 0);
         state             : inout state_t;
         write_register_mux_out : inout std_logic_vector(4 downto 0);
         write_data_mux_out : inout std_logic_vector(31 downto 0);
         read_data_1_out : inout std_logic_vector(31 downto 0));
end MIPSProcessor;

architecture behavioral of MIPSProcessor is

  -- pc signals
  signal pc_out : std_logic_vector(31 downto 0);
  signal write_enable_in : std_logic;

  -- control signals
  signal ir_write : std_logic;
  signal pc_write : std_logic;
  signal pc_write_cond : std_logic;
  signal pc_source : std_logic_vector(1 downto 0);
  signal mem_to_reg : std_logic;
  signal alu_op : std_logic_vector(1 downto 0);
  signal mem_write : std_logic;
  signal alu_src_a : std_logic_vector(1 downto 0);
  signal alu_src_b : std_logic_vector(1 downto 0);
  signal reg_write : std_logic;
  signal reg_dst : std_logic;

  -- alu signals
  signal alu_result_zero : std_logic;
  signal alu_result_out : std_logic_vector(31 downto 0);

  signal alu_control_out : alu_control_t;

  -- register signals
  --signal read_data_1_out : std_logic_vector (31 downto 0);
  signal read_data_2_out : std_logic_vector (31 downto 0);

  -- Instruction aliases
  alias instruction_opcode : std_logic_vector(31 downto 26) is imem_data_in(31 downto 26);
  alias instruction_rs : std_logic_vector(25 downto 21) is imem_data_in(25 downto 21);
  alias instruction_rt : std_logic_vector(20 downto 16) is imem_data_in(20 downto 16);
  alias instruction_rd : std_logic_vector(15 downto 11) is imem_data_in(15 downto 11);
  alias instruction_address : std_logic_vector(15 downto 0) is imem_data_in(15 downto 0);
  alias instruction_funct : std_logic_vector(5 downto 0) is imem_data_in(5 downto 0);
  alias instruction_jump_address : std_logic_vector(25 downto 0) is imem_data_in(25 downto 0);

  -- MUX signals
  signal alu_a_mux_out : std_logic_vector(31 downto 0);
  signal alu_b_mux_out : std_logic_vector(31 downto 0);
  signal pc_mux_out : std_logic_vector(31 downto 0);

  -- Latches
  signal latch_alu_out : std_logic_vector (DATA_WIDTH - 1 downto 0);

  -- Misc
  signal sign_extend_a_out : std_logic_vector (DATA_WIDTH - 1 downto 0);
  signal sign_extend_b_out : std_logic_vector (27 downto 0);
  signal pc_mux_c_in : std_logic_vector(31 downto 0);
  signal imem_address_keepalive : std_logic_vector(31 downto 0);

begin

  -- Debug wires
  control_instruction <= instruction_opcode;

  -- Wire it up!
  dmem_write_enable <= mem_write;
  dmem_data_out <= read_data_2_out;
  dmem_address <= latch_alu_out(7 downto 0);

  -- To create the illusion of single-cycle Instruction loads,
  -- simply keep the instruction memory address constant during
  -- the entire execution cycle.
  process (ir_write)
  begin
    if rising_edge(ir_write) then
      imem_address_keepalive <= pc_out;
    end if;
  end process;

  with ir_write select
    imem_address <= pc_out(7 downto 0) when '1',
                    imem_address_keepalive(7 downto 0) when others;

  -- Here be entity declarations
  alu: entity work.alu
  port map (
             operand_a_in => alu_a_mux_out,
             operand_b_in => alu_b_mux_out,
             alu_control_in => alu_control_out,
             zero_out => alu_result_zero,
             alu_result_out => alu_result_out);

  alu_control : entity work.alu_control
  port map (
             alu_function_in => instruction_funct,
             control_alu_op => alu_op,
             alu_control_out => alu_control_out);

  pc: entity work.pc
  port map (
             clk => clk,
             reset => reset,
             control_pc_write => pc_write,
             control_pc_write_cond => pc_write_cond,
             alu_result_zero => alu_result_zero,
             pc_in => pc_mux_out,
             pc_out => pc_out);

  control_unit: entity work.control_unit
  port map (
             clk => clk,
             reset => reset,
             instruction_in => instruction_opcode,
             processor_enable => processor_enable,
             ir_write => ir_write,
             pc_write => pc_write,
             pc_write_cond => pc_write_cond,
             pc_source => pc_source,
             mem_to_reg => mem_to_reg,
             alu_op => alu_op,
             mem_write => mem_write,
             alu_src_a => alu_src_a,
             alu_src_b => alu_src_b,
             reg_write => reg_write,
             reg_dst => reg_dst,
             state => state);

  registers : entity work.registers
  port map (
             clk => clk,
             read_register_1_in => instruction_rs,
             read_register_2_in => instruction_rt,
             write_register_in => write_register_mux_out,
             write_data_in => write_data_mux_out,
             reg_write_in => reg_write,
             read_data_1_out => read_data_1_out,
             read_data_2_out => read_data_2_out);

  -- Muxes
  write_register_mux : entity work.mux
  Generic map (
                DATA_WIDTH => 5)
  Port map (
             a_in => instruction_rt,
             b_in => instruction_rd,
             select_in => reg_dst,
             data_out => write_register_mux_out);

  write_data_mux : entity work.mux
  Port map (
             a_in => latch_alu_out,
             b_in => dmem_data_in,
             select_in => mem_to_reg,
             data_out => write_data_mux_out);

  alu_a_mux : entity work.mux_4
  Port map (
             a_in => pc_out,
             b_in => read_data_1_out,
             c_in => sign_extend_a_out,
             d_in => x"00000000", -- Unused mux slot. Fill with Ground.
             select_in => alu_src_a,
             data_out => alu_a_mux_out);

  alu_b_mux : entity work.mux_4
  Port map (
             a_in => read_data_2_out,
             b_in => x"00000001", -- Used to increment PC by one.
             c_in => sign_extend_a_out,
             d_in => x"00000010", -- Used for load upper immediate sll 16.
             select_in => alu_src_b,
             data_out => alu_b_mux_out);

  pc_mux_c_in <= pc_out(31 downto 28) & sign_extend_b_out;
  pc_mux : entity work.mux_4
  port map (
             a_in => alu_result_out,
             b_in => latch_alu_out,
             c_in => pc_mux_c_in,
             d_in => x"00000000", -- Unused mux slot. Fill with ground.
             select_in => pc_source,
             data_out => pc_mux_out);

  -- Flip-flops
  alu_out : entity work.value_storage
  Port map (
             clk => clk,
             value_in => alu_result_out,
             value_out => latch_alu_out);

  sign_extend_a : entity work.sign_extend
  port map (
             data_in => instruction_address,
             data_out => sign_extend_a_out);

  sign_extend_b : entity work.sign_extend
  generic map (DATA_IN_WIDTH => 26, DATA_OUT_WIDTH => 28)
  port map (
             data_in => instruction_jump_address,
             data_out => sign_extend_b_out);

end behavioral;
