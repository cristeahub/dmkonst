library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pc is
  Generic (
            ADDR_WIDTH : integer := 8);
  Port ( clk : in  std_logic;
         reset : in  std_logic;

         new_pc_in : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
         pc_source_in : in std_logic;

         pc_out : out  std_logic_vector(ADDR_WIDTH - 1 downto 0));
end pc;

architecture Behavioral of pc is
  signal pc_in : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal pc_out_tmp : std_logic_vector(ADDR_WIDTH - 1 downto 0);
begin

  with pc_source_in select
    pc_in <= new_pc_in when '1',
             std_logic_vector(unsigned(pc_out_tmp) + 1) when others;

  PC : process ( clk, reset )
  begin
    if reset = '1' then
      pc_out_tmp <= x"00";
    elsif rising_edge(clk) then
      pc_out_tmp <= pc_in;
    end if;
  end process; -- PC

  pc_out <= pc_out_tmp;

end Behavioral;

