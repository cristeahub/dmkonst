LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.test_utils.all;

ENTITY tb_pc IS
  END tb_pc;
ARCHITECTURE behavior OF tb_pc IS


    -- Component Declaration for the Unit Under Test (UUT)

  COMPONENT pc
    PORT(
          clk : IN  std_logic;
          reset : IN  std_logic;
          write_enable_in : in std_logic;
          pc_in : IN  std_logic_vector(31 downto 0);
          pc_out : OUT  std_logic_vector(31 downto 0)
        );
  END COMPONENT;


   --Inputs
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal write_enable_in : std_logic := '0';
  signal pc_in : std_logic_vector(31 downto 0);

   --Outputs
  signal pc_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
  constant clk_period : time := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
  uut: pc PORT MAP (
                     clk => clk,
                     reset => reset,
                     write_enable_in => write_enable_in,
                     pc_in => pc_in,
                     pc_out => pc_out
                   );

   -- Clock process definitions
  clk_process :process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;


   -- Stimulus process
  stim_proc: process
  begin		
    
    -- hold reset state for 100 ns.
    wait for clk_period*1;

    reset <= '1';
    wait for clk_period*1;
    reset <= '0';

    assert_equals(x"00000000", pc_out, "Should reset pc_out");

    -- Test that write enable works
    pc_in <= x"0000000A";
    wait for clk_period*1;
    write_enable_in <= '1';
    wait for clk_period*1;

    assert_equals(pc_out, pc_in, "pc_out should be the same as to pc_in");

    write_enable_in <= '0';
    pc_in <= x"000000CC";
    wait for clk_period*1;

    assert_equals(x"0000000A", pc_out, "pc_out should not write when not told to do so");

    report "Test complete!";

    wait;
  end process;

END;
