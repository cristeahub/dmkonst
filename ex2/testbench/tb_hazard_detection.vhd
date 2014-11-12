LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.test_utils.all;
use work.constants.all;

ENTITY tb_hazard_detection IS
  END tb_hazard_detection;

ARCHITECTURE behavior OF tb_hazard_detection IS 

  --Inputs
  signal control_id_ex_mem_read_in : std_logic := '0';
  signal control_mem_write_in : std_logic := '0';
  signal control_mem_read_in : std_logic := '0';
  signal id_ex_rt_in : std_logic_vector(4 downto 0) := (others => '0');
  signal if_id_rt_in : std_logic_vector(4 downto 0) := (others => '0');
  signal if_id_rs_in : std_logic_vector(4 downto 0) := (others => '0');

  --Outputs
  signal stall_out : std_logic;
  signal pc_write_out : std_logic;
  signal barrier_if_id_write_out : std_logic;

  constant clk_period : time := 10 ns;

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut: entity work.hazard_detection PORT MAP (
    control_id_ex_mem_read_in => control_id_ex_mem_read_in,
    control_mem_write_in => control_mem_write_in,
    control_mem_read_in => control_mem_read_in,
    id_ex_rt_in => id_ex_rt_in,
    if_id_rt_in => if_id_rt_in,
    if_id_rs_in => if_id_rs_in,
    stall_out => stall_out,
    pc_write_out => pc_write_out,
    barrier_if_id_write_out => barrier_if_id_write_out
  );


  -- Stimulus process
  stim_proc: process
  begin

    -- hold reset state for 100 ns.
    wait for 100 ns;

    ---

    control_id_ex_mem_read_in <= '1';
    control_mem_write_in <= '0';

    id_ex_rt_in <= "00001";

    if_id_rt_in <= "00001";
    if_id_rs_in <= "00001";

    wait for clk_period;

    assert_equals('1', stall_out, "Should stall");
    assert_equals(not stall_out, pc_write_out, "PC should not update its value");
    assert_equals(barrier_if_id_write_out, pc_write_out, "pc_write_out and barrier_if_id_write_out have the same value");

    ---

    if_id_rs_in <= "00000";

    wait for clk_period;

    assert_equals('1', stall_out, "Should stall");
    assert_equals(not stall_out, pc_write_out, "PC should not be updating");
    assert_equals(barrier_if_id_write_out, pc_write_out, "pc_write_out and barrier_if_id_write_out have the same value");

    ---

    if_id_rt_in <= "00000";

    wait for clk_period;

    assert_equals('0', stall_out, "Should not stall");
    assert_equals(not stall_out, pc_write_out, "PC should be updating");
    assert_equals(barrier_if_id_write_out, pc_write_out, "pc_write_out and barrier_if_id_write_out have the same value");

    ---

    id_ex_rt_in <= "00000";

    wait for clk_period;

    assert_equals('1', stall_out, "Should stall");
    assert_equals(not stall_out, pc_write_out, "PC should not be updating");
    assert_equals(barrier_if_id_write_out, pc_write_out, "pc_write_out and barrier_if_id_write_out have the same value");

    ---

    if_id_rs_in <= "00001";

    wait for clk_period;

    assert_equals('1', stall_out, "Should stall");
    assert_equals(not stall_out, pc_write_out, "PC should not be updating");
    assert_equals(barrier_if_id_write_out, pc_write_out, "pc_write_out and barrier_if_id_write_out have the same value");

    ---

    control_mem_write_in <= '1';

    wait for clk_period;

    assert_equals('0', stall_out, "Should not stall");
    assert_equals(not stall_out, pc_write_out, "PC should be updating");
    assert_equals(barrier_if_id_write_out, pc_write_out, "pc_write_out and barrier_if_id_write_out have the same value");

    ---

    control_id_ex_mem_read_in <= '0';
    control_mem_write_in <= '0';

    wait for clk_period;

    assert_equals('0', stall_out, "Should not stall");
    assert_equals(not stall_out, pc_write_out, "PC should be updating");
    assert_equals(barrier_if_id_write_out, pc_write_out, "pc_write_out and barrier_if_id_write_out have the same value");

    report "Test complete";
    wait;
  end process;

END;
