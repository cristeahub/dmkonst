library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stage_if_id is
    Generic (
              ADDR_WIDTH : integer := 8);
    Port ( incremented_pc_in : in  STD_LOGIC_VECTOR (ADDR_WIDTH - 1 downto 0);
           instruction_in : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           incremented_pc_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH - 1 downto 0);
           instruction_out : out  STD_LOGIC_VECTOR (31 downto 0));
end stage_if_id;

architecture Behavioral of stage_if_id is

begin

instruction_out <= instruction_in;

process (clk) is
begin
  if rising_edge(clk) then
    incremented_pc_out <= incremented_pc_in;
  end if;
end process;


end Behavioral;

