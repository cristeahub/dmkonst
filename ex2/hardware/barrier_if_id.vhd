library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity barrier_if_id is
  Generic (
            ADDR_WIDTH : integer := 8);
  Port ( clk : in std_logic;
         write_enable_in : in std_logic;

         pc_in : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
         instruction_in : in std_logic_vector(31 downto 0);

         pc_out : out std_logic_vector(ADDR_WIDTH - 1 downto 0);
         instruction_out : out std_logic_vector(31 downto 0));
end barrier_if_id;

architecture Behavioral of barrier_if_id is
begin

  instruction_out <= instruction_in;

  process (clk, write_enable_in) is
  begin

    if rising_edge(clk) and write_enable_in = '1' then
      pc_out <= pc_in;
    end if;

  end process;

end Behavioral;
