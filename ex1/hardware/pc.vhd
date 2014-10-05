library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pc is
    Port ( clk : in  std_logic;
           control_pc_write : in std_logic;
           control_pc_write_cond : in std_logic;
           alu_result_zero : in std_logic;
					 pc_in : in  std_logic_vector(31 downto 0);
					 pc_out : out  std_logic_vector(31 downto 0));
end pc;

architecture Behavioral of pc is
  signal write_enable_in : std_logic;
begin

	PC : process ( clk, write_enable_in )
	begin

    write_enable_in <= (alu_result_zero and control_pc_write_cond) or control_pc_write;
	
		if (rising_edge(clk) and write_enable_in = '1') then
			pc_out <= pc_in;
		end if;
	
	end process; -- PC
	

end Behavioral;

