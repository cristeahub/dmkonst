library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pc is
    Port ( clk : in  std_logic;
           write_enable_in : in  std_logic;
					 pc_in : in  std_logic_vector(31 downto 0);
					 pc_out : out  std_logic_vector(31 downto 0));
end pc;

architecture Behavioral of pc is

begin

	PC : process ( clk, write_enable_in )
	begin
	
		if (rising_edge(clk) and write_enable_in = '1') then
			pc_out <= pc_in;
		end if;
	
	end process; -- PC
	

end Behavioral;

