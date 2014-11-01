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
         dmem_write_enable : out std_logic);
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
  signal alu_src_a : std_logic;
  signal alu_src_b : std_logic_vector(1 downto 0);
  signal reg_write : std_logic;
  signal reg_dst : std_logic;

  -- alu signals
  signal alu_result_zero : std_logic;
  signal alu_result_out : std_logic_vector(31 downto 0);

  signal alu_control_out : alu_control_t;

  -- alu control signals
  signal alu_control_shamt_out : std_logic_vector (4 downto 0);

  -- register signals
  signal registers_read_data_1_out : std_logic_vector (31 downto 0);
  signal registers_read_data_2_out : std_logic_vector (31 downto 0);

  -- MUX signals
  signal alu_b_mux_out : std_logic_vector(31 downto 0);
  signal pc_mux_out : std_logic_vector(31 downto 0);
  signal write_register_mux_out : std_logic_vector(4 downto 0);
  signal write_data_mux_out : std_logic_vector(31 downto 0);

  -- Misc
  signal sign_extend_a_out : std_logic_vector (DATA_WIDTH - 1 downto 0);
  signal sign_extend_b_out : std_logic_vector (27 downto 0);
  signal pc_mux_c_in : std_logic_vector(31 downto 0);
  signal pc_write_enable : std_logic;
  
  -- Stages
  signal stage_if_id_incremented_pc_out : std_logic_vector(31 downto 0);
  signal stage_if_id_instruction_out : std_logic_vector(31 downto 0);
  
  signal stage_id_ex_incremented_pc_out : std_logic_vector(31 downto 0);
  signal stage_id_ex_read_data_1_out : std_logic_vector(31 downto 0);
  signal stage_id_ex_read_data_2_out : std_logic_vector(31 downto 0);
  signal stage_id_ex_sign_extend_out : std_logic_vector(31 downto 0);
  signal stage_id_ex_instruction_rt_out : std_logic_vector(20 downto 16);
  signal stage_id_ex_instruction_rd_out : std_logic_vector(15 downto 11);
  
  signal stage_ex_mem_pc_out : std_logic_vector(31 downto 0);
  signal stage_ex_mem_alu_zero_out : std_logic;
  signal stage_ex_mem_alu_result_out : std_logic_vector(31 downto 0);
  signal stage_ex_mem_read_data_2_out : std_logic_vector(31 downto 0);
  
  signal stage_mem_wb_read_data_out : std_logic_vector(31 downto 0);
  signal stage_mem_wb_alu_result_out : std_logic_vector(31 downto 0);
  
  -- Instruction aliases
  alias instruction_opcode : std_logic_vector(31 downto 26) is stage_if_id_instruction_out(31 downto 26);
  alias instruction_rs : std_logic_vector(25 downto 21) is stage_if_id_instruction_out(25 downto 21);
  alias instruction_rt : std_logic_vector(20 downto 16) is stage_if_id_instruction_out(20 downto 16);
  alias instruction_rd : std_logic_vector(15 downto 11) is stage_if_id_instruction_out(15 downto 11);
  alias instruction_address : std_logic_vector(15 downto 0) is stage_if_id_instruction_out(15 downto 0);
  alias instruction_shamt : std_logic_vector(4 downto 0) is stage_if_id_instruction_out(10 downto 6);
  alias instruction_funct : std_logic_vector(5 downto 0) is stage_id_ex_sign_extend_out(5 downto 0);
  alias instruction_jump_address : std_logic_vector(25 downto 0) is stage_if_id_instruction_out(25 downto 0);

begin

  -- Wire it up!
  dmem_write_enable <= mem_write;
  dmem_data_out <= stage_ex_mem_read_data_2_out;
  dmem_address <= stage_ex_mem_alu_result_out(7 downto 0);

  imem_address <= pc_out(7 downto 0);

  -- Here be entity declarations
  alu: entity work.alu
  port map (
             operand_a_in => stage_id_ex_read_data_1_out,
             operand_b_in => alu_b_mux_out,
             alu_control_in => alu_control_out,
             shamt_in => alu_control_shamt_out,
             zero_out => alu_result_zero,
             alu_result_out => alu_result_out);

  alu_control : entity work.alu_control
  port map (
             alu_function_in => instruction_funct,
             shamt_in => instruction_shamt,
             shamt_out => alu_control_shamt_out,
             control_alu_op => alu_op,
             alu_control_out => alu_control_out);

  pc_write_enable <= (alu_result_zero and pc_write_cond) or pc_write;
  pc: entity work.pc
  port map (
             clk => clk,
             reset => reset,
             write_enable_in => pc_write_enable,
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
             reg_dst => reg_dst);

  registers : entity work.registers
  port map (
             clk => clk,
             read_register_1_in => instruction_rs,
             read_register_2_in => instruction_rt,
             write_register_in => write_register_mux_out,
             write_data_in => write_data_mux_out,
             reg_write_in => reg_write,
             read_data_1_out => registers_read_data_1_out,
             read_data_2_out => registers_read_data_2_out);

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
             a_in => stage_mem_wb_read_data_out,
             b_in => stage_mem_wb_alu_result_out,
             select_in => mem_to_reg,
             data_out => write_data_mux_out);

  alu_b_mux : entity work.mux
  Port map (
             a_in => stage_id_ex_read_data_2_out,
             b_in => stage_id_ex_sign_extend_out,
             select_in => alu_src_b(0),
             data_out => alu_b_mux_out);

  pc_mux_c_in <= pc_out(31 downto 28) & sign_extend_b_out;
  pc_mux : entity work.mux
  port map (
             a_in => alu_result_out,
             b_in => pc_mux_c_in,
             select_in => pc_source(0), -- TODO: Obviously broken shit
             data_out => pc_mux_out);

  sign_extend_a : entity work.sign_extend
  port map (
             data_in => instruction_address,
             data_out => sign_extend_a_out);

  sign_extend_b : entity work.sign_extend
  generic map (DATA_IN_WIDTH => 26, DATA_OUT_WIDTH => 28)
  port map (
             data_in => instruction_jump_address,
             data_out => sign_extend_b_out);
             
  -- Stages
  
  stage_if_id : entity work.stage_if_id
  port map (
            clk => clk, reset => reset,
            incremented_pc_in => pc_out,
            instruction_in => imem_data_in,
            incremented_pc_out => stage_if_id_incremented_pc_out,
            instruction_out => stage_if_id_instruction_out);

  stage_id_ex : entity work.stage_id_ex
  port map (
            clk => clk, reset => reset,
            incremented_pc_in => stage_if_id_incremented_pc_out,
            read_data_1_in => registers_read_data_1_out,
            read_data_2_in => registers_read_data_2_out,
            sign_extend_in => sign_extend_a_out,
            instruction_rt_in => instruction_rt,
            instruction_rd_in => instruction_rd,
            incremented_pc_out => stage_id_ex_incremented_pc_out,
            read_data_1_out => stage_id_ex_read_data_1_out,
            read_data_2_out => stage_id_ex_read_data_2_out,
            sign_extend_out => stage_id_ex_sign_extend_out,
            instruction_rt_out => stage_id_ex_instruction_rt_out,
            instruction_rd_out => stage_id_ex_instruction_rd_out);

  stage_ex_mem : entity work.stage_ex_mem
  port map (
            clk => clk, reset => reset,
            new_pc_in => stage_if_id_incremented_pc_out, -- This value should be passed through an adder first
            alu_zero_in => alu_result_zero,
            alu_result_in => alu_result_out,
            read_data_2_in => stage_id_ex_read_data_2_out,
            new_pc_out => stage_ex_mem_pc_out,
            alu_zero_out => stage_ex_mem_alu_zero_out,
            alu_result_out => stage_ex_mem_alu_result_out,
            read_data_2_out => stage_ex_mem_read_data_2_out);

  stage_mem_wb : entity work.stage_mem_wb
  port map (
            clk => clk, reset => reset,
            read_data_in => dmem_data_in,
            alu_result_in => stage_ex_mem_alu_result_out,
            read_data_out => stage_mem_wb_read_data_out,
            alu_result_out => stage_mem_wb_alu_result_out);

end behavioral;
