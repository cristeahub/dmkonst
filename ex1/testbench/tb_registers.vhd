library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.test_utils.all;
use work.constants.all;

entity tb_registers is
end tb_registers;

architecture behavior of tb_registers is 

  component alu
    port(
          read_reg_one_in : in  signed(25 downto 21);
          read_reg_two_in : in  signed(20 downto 16);
          write_reg_in : in  std_logic_vector(15 downto 11);
          write_data_in : in  std_logic;
          read_data_one_out : out  signed(31 downto 0)
          read_data_two_out : out  signed(31 downto 0)
        );
  end component;

  --inputs
  signal read_reg_one_in : signed(25 downto 21) := (others => '0');
  signal read_reg_two_in : signed(20 downto 16) := (others => '0');
  signal write_reg_in : std_logic_vector(15 downto 11) := (others => '0');
  signal write_data_in : std_logic := '0';

  --outputs
  signal read_data_one_out : signed(31 downto 0) := (others => '0');
  signal read_data_two_out : signed(31 downto 0) := (others => '0');

begin

  -- instantiate the unit under test (uut)
  uut: registers port map (
                            read_reg_one_in => read_reg_one_in,
                            read_reg_two_in => read_reg_two_in,
                            write_reg_in => write_reg_in,
                            write_data_in => write_data_in,
                            read_data_one_out => read_data_one_out,
                            read_data_two_out => read_data_two_out
                          );

  -- stimulus process
  stim_proc: process
  begin		
    -- hold reset state for 100 ns.
    wait for 100 ns;

    -- check that values out is what is asked for in
  end process;

end;
