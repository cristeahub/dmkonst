library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity registers is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           read_register_1_in : in  STD_LOGIC_VECTOR (4 downto 0);
           read_register_2_in : in  STD_LOGIC_VECTOR (4 downto 0);
           write_register_in : in  STD_LOGIC_VECTOR (4 downto 0);
           write_data_in : in  SIGNED (31 downto 0);
           reg_write_in : in  STD_LOGIC;
           read_data_1_out : out  SIGNED (31 downto 0);
           read_data_2_out : out  SIGNED (31 downto 0));
end registers;

architecture Behavioral of registers is

begin

end Behavioral;

