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
  signal pc_out : std_logic_vector(ADDR_WIDTH -1 downto 0);

  -- control signals
  signal control_pc_source_out : std_logic;
  signal control_mem_to_reg_out : std_logic;
  signal control_alu_op_out : std_logic_vector(1 downto 0);
  signal control_mem_write_out : std_logic;
  signal control_mem_read_out : std_logic;
  signal control_alu_src_out : std_logic;
  signal control_reg_write_out : std_logic;
  signal control_reg_dst_out : std_logic;
  signal control_branch_out : std_logic;
  signal control_pc_jump_override_out : std_logic;

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
  signal alu_a_forwarding_mux_out : std_logic_vector(31 downto 0);
  signal alu_b_forwarding_mux_out : std_logic_vector(31 downto 0);
  signal alu_b_mux_out : std_logic_vector(31 downto 0);
  signal pc_mux_out : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal write_register_mux_out : std_logic_vector(4 downto 0);
  signal write_data_mux_out : std_logic_vector(31 downto 0);
  signal store_data_mux_out : std_logic_vector(31 downto 0);

  -- Misc
  signal sign_extend_a_out : std_logic_vector (DATA_WIDTH - 1 downto 0);
  signal pc_write_enable : std_logic;
  signal pc_branch_add_pc_out : std_logic_vector(ADDR_WIDTH - 1 downto 0);

  -- Forwarding unit
  signal forwarding_unit_rs_out : std_logic_vector(1 downto 0);
  signal forwarding_unit_rt_out : std_logic_vector(1 downto 0);
  signal forwarding_unit_store_out : std_logic;

  -- Hazard detection
  signal hazard_detection_stall_out : std_logic;
  signal hazard_detection_pc_write_out : std_logic;
  signal hazard_detection_if_id_write_out : std_logic;

  signal stall_mux_control_mem_read_out : std_logic;
  signal stall_mux_control_mem_write_out : std_logic;
  signal stall_mux_control_reg_write_out : std_logic;

  -- Stages
  signal stage_if_id_incremented_pc_out : std_logic_vector(ADDR_WIDTH -1 downto 0);
  signal stage_if_id_instruction_out : std_logic_vector(31 downto 0);

  -- Stage ID/EX
  signal stage_id_ex_incremented_pc_out : std_logic_vector(ADDR_WIDTH -1 downto 0);
  signal stage_id_ex_read_data_1_out : std_logic_vector(31 downto 0);
  signal stage_id_ex_read_data_2_out : std_logic_vector(31 downto 0);
  signal stage_id_ex_sign_extend_out : std_logic_vector(31 downto 0);
  signal stage_id_ex_instruction_rs_out : std_logic_vector(25 downto 21);
  signal stage_id_ex_instruction_rt_out : std_logic_vector(20 downto 16);
  signal stage_id_ex_instruction_rd_out : std_logic_vector(15 downto 11);

  signal stage_id_ex_reg_dst_out : std_logic;
  signal stage_id_ex_alu_op_out : std_logic_vector(1 downto 0);
  signal stage_id_ex_alu_src_out : std_logic;
  signal stage_id_ex_branch_out : std_logic;
  signal stage_id_ex_mem_write_out : std_logic;
  signal stage_id_ex_mem_read_out : std_logic;
  signal stage_id_ex_reg_write_out : std_logic;
  signal stage_id_ex_mem_to_reg_out : std_logic;

  -- Stage EX/MEM
  signal stage_ex_mem_pc_out : std_logic_vector(ADDR_WIDTH -1 downto 0);
  signal stage_ex_mem_alu_zero_out : std_logic;
  signal stage_ex_mem_alu_result_out : std_logic_vector(31 downto 0);
  signal stage_ex_mem_read_data_2_out : std_logic_vector(31 downto 0);
  signal stage_ex_mem_write_register_out : std_logic_vector(4 downto 0);

  signal stage_ex_mem_branch_out : std_logic;
  signal stage_ex_mem_mem_write_out : std_logic;
  signal stage_ex_mem_reg_write_out : std_logic;
  signal stage_ex_mem_mem_to_reg_out : std_logic;

  -- Stage MEM/WB
  signal stage_mem_wb_read_data_out : std_logic_vector(31 downto 0);
  signal stage_mem_wb_alu_result_out : std_logic_vector(31 downto 0);
  signal stage_mem_wb_write_register_out : std_logic_vector(4 downto 0);

  signal stage_mem_wb_reg_write_out : std_logic;
  signal stage_mem_wb_mem_to_reg_out : std_logic;

  -- Instruction aliases
  alias instruction_opcode : std_logic_vector(31 downto 26) is stage_if_id_instruction_out(31 downto 26);
  alias instruction_rs : std_logic_vector(25 downto 21) is stage_if_id_instruction_out(25 downto 21);
  alias instruction_rt : std_logic_vector(20 downto 16) is stage_if_id_instruction_out(20 downto 16);
  alias instruction_rd : std_logic_vector(15 downto 11) is stage_if_id_instruction_out(15 downto 11);
  alias instruction_address : std_logic_vector(15 downto 0) is stage_if_id_instruction_out(15 downto 0);
  alias instruction_shamt : std_logic_vector(4 downto 0) is stage_if_id_instruction_out(10 downto 6);
  alias instruction_funct : std_logic_vector(5 downto 0) is stage_id_ex_sign_extend_out(5 downto 0);
  alias instruction_jump_address : std_logic_vector(ADDR_WIDTH - 1 downto 0) is stage_if_id_instruction_out(ADDR_WIDTH -1 downto 0);

begin

  -- Wire it up!
  dmem_write_enable <= stage_ex_mem_mem_write_out;
  dmem_data_out <= store_data_mux_out;
  dmem_address <= stage_ex_mem_alu_result_out(7 downto 0);
  imem_address <= pc_out;

  -- Here be entity declarations
  alu: entity work.alu
  port map (
             operand_a_in => alu_a_forwarding_mux_out,
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
             control_alu_op => stage_id_ex_alu_op_out,
             alu_control_out => alu_control_out);

  control_pc_source_out <= stage_ex_mem_alu_zero_out and stage_ex_mem_branch_out;
  pc: entity work.pc
  generic map(
               ADDR_WIDTH => ADDR_WIDTH)
  port map (
             clk => clk, reset => reset,
             processor_enable_in => processor_enable,
             pc_write_enable_in => hazard_detection_pc_write_out,

             pc_branch_override_in => control_pc_source_out,
             pc_branch_address_in => stage_ex_mem_pc_out,

             pc_jump_override_in => control_pc_jump_override_out,
             pc_jump_address_in => instruction_jump_address,

             pc_out => pc_out);

  control_unit: entity work.control_unit
  port map (
             instruction_in => instruction_opcode,
             processor_enable => processor_enable,

             -- Execution / adress calculation stage control lines
             reg_dst_out => control_reg_dst_out,
             alu_op_out => control_alu_op_out,
             alu_src_out => control_alu_src_out,

             -- Memory access stage control lines
             branch_out => control_branch_out,
             mem_write_out => control_mem_write_out,
             mem_read_out => control_mem_read_out,

             -- Write-back stage control lines
             reg_write_out => control_reg_write_out,
             mem_to_reg_out => control_mem_to_reg_out,

             -- Jump
             pc_jump_override_out => control_pc_jump_override_out
           );

  registers : entity work.registers
  port map (
             clk => clk,
             read_register_1_in => instruction_rs,
             read_register_2_in => instruction_rt,
             write_register_in => stage_mem_wb_write_register_out,
             write_data_in => write_data_mux_out,
             reg_write_in => stage_mem_wb_reg_write_out,
             read_data_1_out => registers_read_data_1_out,
             read_data_2_out => registers_read_data_2_out);

  -- Muxes
  write_register_mux : entity work.mux
  Generic map (
                DATA_WIDTH => 5)
  Port map (
             a_in => stage_id_ex_instruction_rt_out,
             b_in => stage_id_ex_instruction_rd_out,
             select_in => stage_id_ex_reg_dst_out,
             data_out => write_register_mux_out);

  write_data_mux : entity work.mux
  Port map (
             a_in => stage_mem_wb_alu_result_out,
             b_in => stage_mem_wb_read_data_out,
             select_in => stage_mem_wb_mem_to_reg_out,
             data_out => write_data_mux_out);

  alu_a_forwarding_mux : entity work.mux_4
  Port map (
             a_in => stage_id_ex_read_data_1_out,
             b_in => write_data_mux_out,
             c_in => stage_ex_mem_alu_result_out,
             d_in => x"00000000",
             select_in => forwarding_unit_rs_out,
             data_out => alu_a_forwarding_mux_out);

  alu_b_forwarding_mux : entity work.mux_4
  Port map (
             a_in => stage_id_ex_read_data_2_out,
             b_in => write_data_mux_out,
             c_in => stage_ex_mem_alu_result_out,
             d_in => x"00000000",
             select_in => forwarding_unit_rt_out,
             data_out => alu_b_forwarding_mux_out);
  alu_b_mux : entity work.mux
  Port map (
             a_in => alu_b_forwarding_mux_out,
             b_in => stage_id_ex_sign_extend_out,
             select_in => stage_id_ex_alu_src_out,
             data_out => alu_b_mux_out);

  store_data_mux : entity work.mux
  port map (
             a_in => stage_ex_mem_read_data_2_out,
             b_in => write_data_mux_out,
             select_in => forwarding_unit_store_out,
             data_out => store_data_mux_out);

  sign_extend_a : entity work.sign_extend
  port map (
             data_in => instruction_address,
             data_out => sign_extend_a_out);

  pc_branch_add : entity work.pc_branch_add
  generic map(
               ADDR_WIDTH => ADDR_WIDTH)
  port map (
             old_pc_in => stage_id_ex_incremented_pc_out,
             instruction_immediate_in => stage_id_ex_sign_extend_out(ADDR_WIDTH - 1 downto 0),
             pc_out => pc_branch_add_pc_out);

  forwarding_unit : entity work.forwarding_unit
  port map ( inst_rs_in => stage_id_ex_instruction_rs_out,
             inst_rt_in => stage_id_ex_instruction_rt_out,
             addr_ex_mem_in => stage_ex_mem_write_register_out,
             addr_mem_wb_in => stage_mem_wb_write_register_out,
             control_ex_mem_in => stage_ex_mem_reg_write_out,
             control_mem_wb_in => stage_mem_wb_reg_write_out,
             forward_rs_out => forwarding_unit_rs_out,

             forward_rt_out => forwarding_unit_rt_out,
             forward_store_out => forwarding_unit_store_out);

  hazard_detection : entity work.hazard_detection
  port map ( control_id_ex_mem_read_in => stage_id_ex_mem_read_out,
             control_if_id_mem_write_in => control_mem_write_out,
             id_ex_rt_in => stage_id_ex_instruction_rt_out,
             if_id_rt_in => instruction_rt,
             if_id_rs_in => instruction_rs,
             stall_out => hazard_detection_stall_out,
             pc_write_out => hazard_detection_pc_write_out,
             stage_if_id_write_out => hazard_detection_if_id_write_out);

  stall_mux : entity work.mux
  generic map (
                DATA_WIDTH => 3)
  port map (
  a_in(2) => control_mem_read_out,
  a_in(1) => control_mem_write_out,
  a_in(0) => control_reg_write_out,
  b_in => "000",
  select_in => hazard_detection_stall_out,
  data_out(2) => stall_mux_control_mem_read_out,
  data_out(1) => stall_mux_control_mem_write_out,
  data_out(0) => stall_mux_control_reg_write_out);

  -- Stages

  stage_if_id : entity work.stage_if_id
  generic map(
               ADDR_WIDTH => ADDR_WIDTH)
  port map (
             clk => clk,
             write_enable_in => hazard_detection_if_id_write_out,

             incremented_pc_in => pc_out,
             instruction_in => imem_data_in,
             incremented_pc_out => stage_if_id_incremented_pc_out,
             instruction_out => stage_if_id_instruction_out);

  stage_id_ex : entity work.stage_id_ex
  generic map(
               ADDR_WIDTH => ADDR_WIDTH)
  port map (
             clk => clk, reset => reset,
             incremented_pc_in => stage_if_id_incremented_pc_out,
             read_data_1_in => registers_read_data_1_out,
             read_data_2_in => registers_read_data_2_out,
             sign_extend_in => sign_extend_a_out,
             instruction_rs_in => instruction_rs,
             instruction_rt_in => instruction_rt,
             instruction_rd_in => instruction_rd,
             incremented_pc_out => stage_id_ex_incremented_pc_out,
             read_data_1_out => stage_id_ex_read_data_1_out,
             read_data_2_out => stage_id_ex_read_data_2_out,
             sign_extend_out => stage_id_ex_sign_extend_out,
             instruction_rs_out => stage_id_ex_instruction_rs_out,
             instruction_rt_out => stage_id_ex_instruction_rt_out,
             instruction_rd_out => stage_id_ex_instruction_rd_out,

             reg_dst_in => control_reg_dst_out,
             alu_op_in => control_alu_op_out,
             alu_src_in => control_alu_src_out,
             branch_in => control_branch_out,
             mem_write_in => stall_mux_control_mem_write_out,
             mem_read_in => stall_mux_control_mem_read_out,
             reg_write_in => stall_mux_control_reg_write_out,
             mem_to_reg_in => control_mem_to_reg_out,

             reg_dst_out => stage_id_ex_reg_dst_out,
             alu_op_out => stage_id_ex_alu_op_out,
             alu_src_out => stage_id_ex_alu_src_out,
             branch_out => stage_id_ex_branch_out,
             mem_write_out => stage_id_ex_mem_write_out,
             mem_read_out => stage_id_ex_mem_read_out,
             reg_write_out => stage_id_ex_reg_write_out,
             mem_to_reg_out => stage_id_ex_mem_to_reg_out
           );

  stage_ex_mem : entity work.stage_ex_mem
  generic map(
               ADDR_WIDTH => ADDR_WIDTH)
  port map (
             clk => clk, reset => reset,
             new_pc_in => pc_branch_add_pc_out,
             alu_zero_in => alu_result_zero,
             alu_result_in => alu_result_out,
             read_data_2_in => alu_b_forwarding_mux_out,
             write_register_in => write_register_mux_out,

             new_pc_out => stage_ex_mem_pc_out,
             alu_zero_out => stage_ex_mem_alu_zero_out,
             alu_result_out => stage_ex_mem_alu_result_out,
             read_data_2_out => stage_ex_mem_read_data_2_out,
             write_register_out => stage_ex_mem_write_register_out,

             branch_in => stage_id_ex_branch_out,
             mem_write_in => stage_id_ex_mem_write_out,
             reg_write_in => stage_id_ex_reg_write_out,
             mem_to_reg_in => stage_id_ex_mem_to_reg_out,

             branch_out => stage_ex_mem_branch_out,
             mem_write_out => stage_ex_mem_mem_write_out,
             reg_write_out => stage_ex_mem_reg_write_out,
             mem_to_reg_out => stage_ex_mem_mem_to_reg_out
           );

  stage_mem_wb : entity work.stage_mem_wb
  port map (
             clk => clk, reset => reset,
             read_data_in => dmem_data_in,
             alu_result_in => stage_ex_mem_alu_result_out,
             write_register_in => stage_ex_mem_write_register_out,
             read_data_out => stage_mem_wb_read_data_out,
             alu_result_out => stage_mem_wb_alu_result_out,
             write_register_out => stage_mem_wb_write_register_out,

             reg_write_in => stage_ex_mem_reg_write_out,
             mem_to_reg_in => stage_ex_mem_mem_to_reg_out,

             reg_write_out => stage_mem_wb_reg_write_out,
             mem_to_reg_out => stage_mem_wb_mem_to_reg_out
           );

end behavioral;
