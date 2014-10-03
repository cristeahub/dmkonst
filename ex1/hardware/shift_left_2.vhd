library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity shift_left_2 is
    Generic (DATA_WIDTH : integer := 32);
    Port ( data_in : in  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
           data_out : out  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0));
end shift_left_2;

architecture Behavioral of shift_left_2 is

begin

  data_out <= std_logic_vector(shift_left(signed(data_in), 2));

end Behavioral;
