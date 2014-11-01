library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity value_storage is
  generic (
            BUS_WIDTH : integer := 32
          );
  port ( clk : in  std_logic;
         value_in : in  std_logic_vector (BUS_WIDTH-1 downto 0);
         value_out : out  std_logic_vector (BUS_WIDTH-1 downto 0));
end value_storage;

architecture behavioral of value_storage is

begin

  value_storage : process (clk)
  begin
    
    if(rising_edge(clk)) then
      value_out <= value_in;
    end if;
    
  end process; -- value_storage
end behavioral;