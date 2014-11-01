library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stage_if_id is
    Port ( incremented_pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
           instruction_in : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           incremented_pc_out : out  STD_LOGIC_VECTOR (31 downto 0);
           instruction_out : out  STD_LOGIC_VECTOR (31 downto 0));
end stage_if_id;

architecture Behavioral of stage_if_id is

begin

process (clk, reset) is
begin
  if reset = '1' then
    incremented_pc_out <= x"0000";
    instruction_out <= x"0000";
  elsif rising_edge(clk) then
    incremented_pc_out <= incremented_pc_in;
    instruction_out <= instruction_in;
  end if;
end process;


end Behavioral;

