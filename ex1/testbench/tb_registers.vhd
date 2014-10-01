library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_registers is
end tb_registers;

architecture behavior of tb_registers is 

  -- component declaration for the unit under test (uut)

  component registers
    port(
          clk : in  std_logic;
          reset : in  std_logic;
          read_register_1_in : in  std_logic_vector(4 downto 0);
          read_register_2_in : in  std_logic_vector(4 downto 0);
          write_register_in : in  std_logic_vector(4 downto 0);
          write_data_in : in  signed(31 downto 0);
          reg_write_in : in  std_logic;
          read_data_1_out : out  signed(31 downto 0);
          read_data_2_out : out  signed(31 downto 0)
        );
  end component;


  --inputs
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal read_register_1_in : std_logic_vector(4 downto 0) := (others => '0');
  signal read_register_2_in : std_logic_vector(4 downto 0) := (others => '0');
  signal write_register_in : std_logic_vector(4 downto 0) := (others => '0');
  signal write_data_in : signed(31 downto 0) := (others => '0');
  signal reg_write_in : std_logic := '0';

  --outputs
  signal read_data_1_out : signed(31 downto 0);
  signal read_data_2_out : signed(31 downto 0);

  -- clock period definitions
  constant clk_period : time := 10 ns;

begin

  -- instantiate the unit under test (uut)
  uut: registers port map (
                            clk => clk,
                            reset => reset,
                            read_register_1_in => read_register_1_in,
                            read_register_2_in => read_register_2_in,
                            write_register_in => write_register_in,
                            write_data_in => write_data_in,
                            reg_write_in => reg_write_in,
                            read_data_1_out => read_data_1_out,
                            read_data_2_out => read_data_2_out
                          );

  -- clock process definitions
  clk_process :process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;


  -- stimulus process
  stim_proc: process
  begin		
    -- hold reset state for 100 ns.
    wait for 100 ns;	

    wait for clk_period*10;

    -- insert stimulus here 

    wait;
  end process;

end;
