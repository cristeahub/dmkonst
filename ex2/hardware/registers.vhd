library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity registers is
  Generic (
            size : natural := 32);

  Port ( clk : in STD_LOGIC;
         read_register_1_in : in  STD_LOGIC_VECTOR (4 downto 0);
         read_register_2_in : in  STD_LOGIC_VECTOR (4 downto 0);
         write_register_in : in  STD_LOGIC_VECTOR (4 downto 0);
         write_data_in : in  std_logic_vector(31 downto 0);
         reg_write_in : in  STD_LOGIC;
         read_data_1_out : out  std_logic_vector (31 downto 0);
         read_data_2_out : out  std_logic_vector (31 downto 0));
end registers;

architecture Behavioral of registers is

  type register_file_t is array(size - 1 downto 0) of std_logic_vector(31 downto 0);

  signal register_file : register_file_t := (others => (others => '0'));

begin

  registers: process (clk) is
  begin

    if rising_edge(clk) then

      read_data_1_out <= register_file(to_integer(unsigned(read_register_1_in)));
      read_data_2_out <= register_file(to_integer(unsigned(read_register_2_in)));

      if reg_write_in = '1' then
        register_file(to_integer(unsigned(write_register_in))) <= write_data_in;
      end if;

    end if;

  end process;

end Behavioral;

