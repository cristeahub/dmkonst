library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stage_mem_wb is
    Port ( read_data_in : in  STD_LOGIC_VECTOR (31 downto 0);
           alu_result_in : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           read_data_out : out  STD_LOGIC_VECTOR (31 downto 0);
           alu_result_out : out  STD_LOGIC_VECTOR (31 downto 0));
end stage_mem_wb;

architecture Behavioral of stage_mem_wb is

begin

process (clk, reset) is
begin
  if reset = '1' then
    read_data_out <= x"0000";
    alu_result_out <= x"0000";
  elsif rising_edge(clk) then
    read_data_out <= read_data_in;
    alu_result_out <= alu_result_in;
  end if;
end process;


end Behavioral;

