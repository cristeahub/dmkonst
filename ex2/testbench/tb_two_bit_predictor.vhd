LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.test_utils.all;

entity tb_two_bit_predictor is
  end tb_two_bit_predictor;

architecture behavior of tb_two_bit_predictor is

  -- Signals
  signal clk : std_logic;
  signal reset : std_logic := '0';
  signal branch_taken_in : std_logic;
  signal update_prediction_in : std_logic;

  signal branch_taken_out : std_logic;

  constant clk_period : time := 10 ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: entity work.two_bit_predictor
  PORT MAP (
             clk => clk, reset => reset,
             branch_taken_in => branch_taken_in,
             update_prediction_in => update_prediction_in,
             branch_taken_out => branch_taken_out
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
    wait for clk_period;

    assert_equals('0', branch_taken_out, "Should predict not taken as default");

    -- Should keep predicting 'not taken' when branches not taken
    branch_taken_in <= '0';
    update_prediction_in <= '1';
    wait for clk_period;
    assert_equals('0', branch_taken_out, "Should stay in 'predict not taken'");

    branch_taken_in <= '0';
    update_prediction_in <= '1';
    wait for clk_period;
    assert_equals('0', branch_taken_out, "Should stay in 'predict not taken'");

    -- Test transition to predict 'yes'
    branch_taken_in <= '1';
    update_prediction_in <= '1';
    wait for clk_period;
    branch_taken_in <= '1';
    update_prediction_in <= '1';
    wait for clk_period;
    assert_equals('1', branch_taken_out, "Should predict branch taken!");

    -- Test fallback
    branch_taken_in <= '0';
    update_prediction_in <= '1';
    wait for clk_period;
    assert_equals('0', branch_taken_out, "Should predict branch not taken!");

    -- Test strongly taken
    branch_taken_in <= '1';
    update_prediction_in <= '1';
    wait for clk_period;
    branch_taken_in <= '1';
    update_prediction_in <= '1';
    wait for clk_period;
    branch_taken_in <= '1';
    update_prediction_in <= '1';
    wait for clk_period;
    assert_equals('1', branch_taken_out, "Should predict branch strongly taken!");

    -- Teset reset

    reset <= '1';
    wait for clk_period;
    reset <= '0';

    wait for clk_period;

    assert_equals('0', branch_taken_out, "Should predict branch not taken after reset");


    report "Test complete";
    wait;
  end process;

end;
