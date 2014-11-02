library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pc_branch_add is
    Generic (
              ADDR_WIDTH : integer := 8);
    Port ( old_pc_in : in  STD_LOGIC_VECTOR (ADDR_WIDTH -1 downto 0);
           instruction_immediate_in : in  STD_LOGIC_VECTOR (ADDR_WIDTH -1 downto 0);
           pc_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH -1 downto 0));
end pc_branch_add;

architecture Behavioral of pc_branch_add is

begin

  pc_out <= std_logic_vector(unsigned(old_pc_in) + unsigned(instruction_immediate_in));

end Behavioral;

