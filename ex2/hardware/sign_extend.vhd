library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sign_extend is
    Generic ( DATA_IN_WIDTH : integer := 16;
              DATA_OUT_WIDTH : integer := 32);
    Port ( data_in : in  STD_LOGIC_VECTOR (DATA_IN_WIDTH - 1 downto 0);
           data_out : out  STD_LOGIC_VECTOR (DATA_OUT_WIDTH - 1 downto 0));
end sign_extend;

architecture Behavioral of sign_extend is

begin

  data_out <= std_logic_vector(resize(signed(data_in), data_out'length));

end Behavioral;

