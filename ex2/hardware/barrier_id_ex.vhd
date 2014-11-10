library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity barrier_id_ex is
  Generic (
            ADDR_WIDTH : integer := 8);
  Port ( branch_pc_not_taken_in : in  STD_LOGIC_VECTOR (ADDR_WIDTH - 1 downto 0);
         branch_taken_in : in std_logic;
         read_data_1_in : in  STD_LOGIC_VECTOR (31 downto 0);
         read_data_2_in : in  STD_LOGIC_VECTOR (31 downto 0);
         sign_extend_in : in  STD_LOGIC_VECTOR (31 downto 0);
         instruction_rs_in : in  STD_LOGIC_VECTOR (25 downto 21);
         instruction_rt_in : in  STD_LOGIC_VECTOR (20 downto 16);
         instruction_rd_in : in  STD_LOGIC_VECTOR (15 downto 11);

         -- Execution / adress calculation barrier control lines
         reg_dst_in : in std_logic;
         alu_op_in : in std_logic_vector(1 downto 0);
         alu_src_in : in std_logic;
         -- Memory access barrier control lines
         should_branch_in : in std_logic;
         mem_write_in : in std_logic;
         mem_read_in : in std_logic;
         -- Write-back barrier control lines
         reg_write_in : in std_logic;
         mem_to_reg_in : in std_logic;

         clk : in  STD_LOGIC;
         reset : in  STD_LOGIC;

         -- Execution / adress calculation barrier control lines
         reg_dst_out : out std_logic;
         alu_op_out : out std_logic_vector(1 downto 0);
         alu_src_out : out std_logic;
         -- Memory access barrier control lines
         should_branch_out : out std_logic;
         mem_write_out : out std_logic;
         mem_read_out : out std_logic;
         -- Write-back barrier control lines
         reg_write_out : out std_logic;
         mem_to_reg_out : out std_logic;

         branch_pc_not_taken_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH - 1 downto 0);
         branch_taken_out : out std_logic;
         read_data_1_out : out  STD_LOGIC_VECTOR (31 downto 0);
         read_data_2_out : out  STD_LOGIC_VECTOR (31 downto 0);
         sign_extend_out : out  STD_LOGIC_VECTOR (31 downto 0);
         instruction_rs_out : out  STD_LOGIC_VECTOR (25 downto 21);
         instruction_rt_out : out  STD_LOGIC_VECTOR (20 downto 16);
         instruction_rd_out : out  STD_LOGIC_VECTOR (15 downto 11)
       );
end barrier_id_ex;

architecture Behavioral of barrier_id_ex is

begin

  process (clk, reset) is
  begin

    if rising_edge(clk) then
      branch_taken_out <= branch_taken_in;
      branch_pc_not_taken_out <= branch_pc_not_taken_in;
      should_branch_out <= should_branch_in;

      read_data_1_out <= read_data_1_in;
      read_data_2_out <= read_data_2_in;
      sign_extend_out <= sign_extend_in;
      instruction_rs_out <= instruction_rs_in;
      instruction_rt_out <= instruction_rt_in;
      instruction_rd_out <= instruction_rd_in;

      reg_dst_out <= reg_dst_in;
      alu_op_out <= alu_op_in;
      alu_src_out <= alu_src_in;

      mem_write_out <= mem_write_in;
      mem_read_out <= mem_read_in;

      reg_write_out <= reg_write_in;
      mem_to_reg_out <= mem_to_reg_in;

      if reset = '1' then
        reg_dst_out <= '0';
        alu_op_out <= "00";
        alu_src_out <= '0';
        should_branch_out <= '0';
        mem_write_out <= '0';
        reg_write_out <= '0';
        mem_to_reg_out <= '0';
      end if;
    end if;

  end process;


end Behavioral;

