library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stage_ex_mem is
    Port ( new_pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
           alu_zero_in : in  STD_LOGIC;
           alu_result_in : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data_2_in : in  STD_LOGIC_VECTOR (31 downto 0);
           write_register_in : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           new_pc_out : out  STD_LOGIC_VECTOR (31 downto 0);
           alu_zero_out : out  STD_LOGIC;
           alu_result_out : out  STD_LOGIC_VECTOR (31 downto 0);
           read_data_2_out : out  STD_LOGIC_VECTOR (31 downto 0);
           write_register_out : out  STD_LOGIC_VECTOR (31 downto 0));
end stage_ex_mem;

architecture Behavioral of stage_ex_mem is

begin

process (clk, reset) is
begin
  if reset = '1' then
    new_pc_out <= x"0000";
    alu_zero_out <= '0';
    alu_result_out <= x"0000";
    read_data_2_out <= x"0000";
    write_register_out <= x"0000";
  elsif rising_edge(clk) then
    new_pc_out <= new_pc_in;
    alu_zero_out <= alu_zero_in;
    alu_result_out <= alu_result_in;
    read_data_2_out <= read_data_2_in;
    write_register_out <= write_register_in;
  end if;
end process;

end Behavioral;

