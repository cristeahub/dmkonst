library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.test_utils.all;

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

    -- setup some values
    reg_write_in <= '1';
    write_data_in <= x"c0ffee10";
    write_register_in <= "00000";
    wait for clk_period;

    reg_write_in <= '1';
    write_data_in <= x"deadbeef";
    write_register_in <= "00001";
    wait for clk_period;

    -- read values
    read_register_1_in <= "00000";
    read_register_2_in <= "00001";
    wait for clk_period;
    assert_equals(read_data_1_out, x"c0ffee10", "Read data 1 out wasn't equal to data written");
    assert_equals(read_data_2_out, x"deadbeef", "Read data 2 out wasn't equal to data written");
    wait for clk_period;

    -- write over old values
    reg_write_in <= '1';
    write_data_in <= x"abbababb";
    write_register_in <= "00000";
    wait for clk_period;

    reg_write_in <= '1';
    write_data_in <= x"decec0c0";
    write_register_in <= "00001";
    wait for clk_period;

    -- check the correct overwrite
    read_register_1_in <= "00000";
    read_register_2_in <= "00001";
    wait for clk_period;
    assert_equals(read_data_1_out, x"abbababb", "Read data 1 out wasn't equal to data written");
    assert_equals(read_data_2_out, x"decec0c0", "Read data 2 out wasn't equal to data written");
    wait for clk_period;

    -- write with reg_write not enabled
    reg_write_in <= '0';
    write_data_in <= x"deadbeef";
    write_register_in <= "00000";
    wait for clk_period;

    -- check that write did not happened
    assert_equals(read_data_1_out, x"abbababb", "Read data 1 out wasn't equal to data written");

    wait;
  end process;

end;
