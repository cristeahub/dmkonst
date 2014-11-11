library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity barrier_ex_mem is
  Generic (
            ADDR_WIDTH : integer := 8);
  Port ( branch_pc_not_taken_in : in  STD_LOGIC_VECTOR (ADDR_WIDTH - 1 downto 0);
         should_branch_in : in std_logic;
         alu_zero_in : in  STD_LOGIC;
         alu_result_in : in  STD_LOGIC_VECTOR (31 downto 0);
         read_data_2_in : in  STD_LOGIC_VECTOR (31 downto 0);
         write_register_in : in  STD_LOGIC_VECTOR (4 downto 0);

         -- Memory access barrier control lines
         branch_taken_in : in std_logic;
         mem_write_in : in std_logic;
         -- Write-back barrier control lines
         reg_write_in : in std_logic;
         mem_to_reg_in : in std_logic;

         clk : in  STD_LOGIC;
         reset : in  STD_LOGIC;

         -- Memory access barrier control lines
         branch_taken_out : out std_logic;
         mem_write_out : out std_logic;
         -- Write-back barrier control lines
         reg_write_out : out std_logic;
         mem_to_reg_out : out std_logic;

         branch_pc_not_taken_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH - 1 downto 0);
         should_branch_out : out std_logic;
         alu_zero_out : out  STD_LOGIC;
         alu_result_out : out  STD_LOGIC_VECTOR (31 downto 0);
         read_data_2_out : out  STD_LOGIC_VECTOR (31 downto 0);
         write_register_out : out  STD_LOGIC_VECTOR (4 downto 0));
end barrier_ex_mem;

architecture Behavioral of barrier_ex_mem is

begin

  process (clk) is
  begin
    if rising_edge(clk) then
      branch_pc_not_taken_out <= branch_pc_not_taken_in;
      should_branch_out <= should_branch_in;
      branch_taken_out <= branch_taken_in;

      alu_zero_out <= alu_zero_in;
      alu_result_out <= alu_result_in;
      read_data_2_out <= read_data_2_in;
      write_register_out <= write_register_in;

      mem_write_out <= mem_write_in;

      reg_write_out <= reg_write_in;
      mem_to_reg_out <= mem_to_reg_in;

      if reset = '1' then
        should_branch_out <= '0';
        mem_write_out <= '0';
        reg_write_out <= '0';
        mem_to_reg_out <= '0';
      end if;
    end if;
  end process;

end Behavioral;
