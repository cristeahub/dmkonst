library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4 is
		Generic ( DATA_WIDTH : integer := 32 );
    Port ( a_in : in  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           b_in : in  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
					 c_in : in  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           d_in : in  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           select_in : in  STD_LOGIC_VECTOR (1 downto 0);
           data_out : out  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0));
end mux_4;

architecture Behavioral of mux_4 is

begin

	with select_in select
			data_out <= a_in when "00",
									b_in when "01",
									c_in when "10",
									d_in when "11",
                  a_in when others;

end Behavioral;

