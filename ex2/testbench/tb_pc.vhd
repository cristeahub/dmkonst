LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.test_utils.all;
use work.constants.all;

ENTITY tb_pc IS
  END tb_pc;

ARCHITECTURE behavior OF tb_pc IS

  --Inputs
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal processor_enable_in : std_logic := '0';
  signal pc_write_enable_in : std_logic := '1';

  signal pc_branch_override_in : std_logic := '0';
  signal pc_branch_address_in : std_logic_vector(7 downto 0) := (others => '0');

  signal pc_jump_override_in : std_logic := '0';
  signal pc_jump_address_in : std_logic_vector(7 downto 0) := (others => '0');

  --Outputs
  signal pc_out : std_logic_vector(7 downto 0);

  -- Clock period definitions
  constant clk_period : time := 10 ns;
  shared variable clk_enable : boolean := true;

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut: entity work.pc
  PORT MAP (
             clk => clk,
             reset => reset,
             processor_enable_in => processor_enable_in,
             pc_write_enable_in => pc_write_enable_in,
             pc_branch_override_in => pc_branch_override_in,
             pc_branch_address_in => pc_branch_address_in,
             pc_jump_override_in => pc_jump_override_in,
             pc_jump_address_in => pc_jump_address_in,
             pc_out => pc_out
           );

  -- Clock process definitions
  clk_process: process
  begin
    if clk_enable=true then
      clk <= '0';
      wait for clk_period/2;
      clk <= '1';
      wait for clk_period/2;
    else
      wait;
    end if;
  end process;

  -- Stimulus process
  stim_proc: process
  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;

    wait for clk_period*10;

    processor_enable_in <= '1';
    pc_write_enable_in <= '1';

    pc_jump_address_in <= "00000001";
    pc_branch_address_in <= "10000000";

    pc_jump_override_in <= '1';
    pc_branch_override_in <= '0';

    wait for clk_period;

    assert_equals("00000001", pc_out, "PC out is equal to jump address");

    pc_jump_override_in <= '0';
    pc_branch_override_in <= '1';

    wait for clk_period;

    assert_equals("10000000", pc_out, "PC out is equal to pc in");

    pc_jump_override_in <= '0';
    pc_branch_override_in <= '0';

    wait for clk_period;

    assert_equals("10000001", pc_out, "PC should increment");

    wait for clk_period;

    assert_equals("10000010", pc_out, "PC should keep incrementing");

    -- should pause system
    pc_write_enable_in <= '0';

    pc_jump_address_in <= "11110000";
    pc_branch_address_in <= "00001111";

    pc_jump_override_in <= '1';
    pc_branch_override_in <= '0';

    wait for clk_period;

    assert_equals("11110000", pc_out, "PC should allow jumps at all times");

    ---

    pc_jump_override_in <= '0';
    pc_branch_override_in <= '1';

    wait for clk_period;

    assert_equals("10000001", pc_out, "PC should pause");

    ---

    pc_jump_override_in <= '1';
    pc_branch_override_in <= '1';

    wait for clk_period;

    assert_equals("11110000", pc_out, "PC should reflect jump address rather than branch address");

    ---

    report "Test complete";
    clk_enable := false;
    wait;
  end process;
END;
