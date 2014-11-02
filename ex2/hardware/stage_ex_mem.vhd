library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stage_ex_mem is
    Port ( new_pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
           alu_zero_in : in  STD_LOGIC;
           alu_result_in : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data_2_in : in  STD_LOGIC_VECTOR (31 downto 0);
           write_register_in : in  STD_LOGIC_VECTOR (4 downto 0);

           -- Memory access stage control lines
           branch_in : in std_logic;
           mem_write_in : in std_logic;
           -- Write-back stage control lines
           reg_write_in : in std_logic;
           mem_to_reg_in : in std_logic;

           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;

           -- Memory access stage control lines
           branch_out : out std_logic;
           mem_write_out : out std_logic;
           -- Write-back stage control lines
           reg_write_out : out std_logic;
           mem_to_reg_out : out std_logic;

           new_pc_out : out  STD_LOGIC_VECTOR (31 downto 0);
           alu_zero_out : out  STD_LOGIC;
           alu_result_out : out  STD_LOGIC_VECTOR (31 downto 0);
           read_data_2_out : out  STD_LOGIC_VECTOR (31 downto 0);
           write_register_out : out  STD_LOGIC_VECTOR (4 downto 0));
end stage_ex_mem;

architecture Behavioral of stage_ex_mem is

begin

process (clk, reset) is
begin
  if reset = '1' then
    branch_out <= '0';
    mem_write_out <= '0';
    reg_write_out <= '0';
    mem_to_reg_out <= '0';
  elsif rising_edge(clk) then
    new_pc_out <= new_pc_in;
    alu_zero_out <= alu_zero_in;
    alu_result_out <= alu_result_in;
    read_data_2_out <= read_data_2_in;
    write_register_out <= write_register_in;

    branch_out <= branch_in;
    mem_write_out <= mem_write_in;

    reg_write_out <= reg_write_in;
    mem_to_reg_out <= mem_to_reg_in;
  end if;
end process;

end Behavioral;

