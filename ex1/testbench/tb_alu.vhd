LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.test_utils.all;
use work.constants.all;

ENTITY tb_alu IS
  END tb_alu;

ARCHITECTURE behavior OF tb_alu IS

  --Inputs
  signal operand_a_in : std_logic_vector(31 downto 0) := (others => '0');
  signal operand_b_in : std_logic_vector(31 downto 0) := (others => '0');
  signal shamt : std_logic_vector(4 downto 0) := (others => '0');
  signal alu_control_in : alu_control_t;

  --Outputs
  signal zero_out : std_logic;
  signal alu_result_out : std_logic_vector(31 downto 0);

  -- Clock period definitions
  constant clk_period : time := 10 ns;

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut: entity work.ALU
  PORT MAP (
             operand_a_in => operand_a_in,
             operand_b_in => operand_b_in,
             alu_control_in => alu_control_in,
             zero_out => zero_out,
             alu_result_out => alu_result_out,
             shamt_in => shamt
           );

  -- Stimulus process
  stim_proc: process
  begin
    -- Test begin
    wait for clk_period;

    -- Test Add
    operand_a_in <= std_logic_vector(TO_SIGNED(40, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(30, 32));
    alu_control_in <= ALU_CONTROL_ADD;
    wait for clk_period/2;
    assert_equals(std_logic_vector(TO_SIGNED(70, 32)), alu_result_out, "ALU should be able to add!");

    operand_a_in <= std_logic_vector(TO_SIGNED(-30, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(-70, 32));
    alu_control_in <= ALU_CONTROL_ADD;
    wait for clk_period/2;
    assert_equals(std_logic_vector(TO_SIGNED(-100, 32)), alu_result_out, "ALU should be able to add negative numbers!");

    operand_a_in <= std_logic_vector(TO_SIGNED(2147483647, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(1, 32));
    alu_control_in <= ALU_CONTROL_ADD;
    wait for clk_period/2;
    assert_equals(std_logic_vector(TO_SIGNED(-2147483648, 32)), alu_result_out, "ALU should overflow from max to min-int!");

    -- Test Sub
    operand_a_in <= std_logic_vector(TO_SIGNED(90, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(20, 32));
    alu_control_in <= ALU_CONTROL_SUBTRACT;
    wait for clk_period/2;
    assert_equals(std_logic_vector(TO_SIGNED(70, 32)), alu_result_out, "ALU should be able to subtract!");

    -- Test Sub
    operand_a_in <= std_logic_vector(TO_SIGNED(-90, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(-120, 32));
    alu_control_in <= ALU_CONTROL_SUBTRACT;
    wait for clk_period/2;
    assert_equals(std_logic_vector(TO_SIGNED(30, 32)), alu_result_out, "ALU should be able to subtract!");

    -- Test Zero flag
    operand_a_in <= std_logic_vector(TO_SIGNED(90, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(90, 32));
    alu_control_in <= ALU_CONTROL_SUBTRACT;
    wait for clk_period/2;
    assert_equals('1', zero_out, "ALU should recognize when result is zero!");

    operand_a_in <= std_logic_vector(TO_SIGNED(30, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(90, 32));
    wait for clk_period/2;
    assert_equals('0', zero_out, "ALU should recognize when result is non-zero!");

    -- Test And
    operand_a_in <= std_logic_vector(TO_SIGNED(7, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(4, 32));
    alu_control_in <= ALU_CONTROL_AND;
    wait for clk_period;
    assert_equals(std_logic_vector(TO_SIGNED(4, 32)), alu_result_out, "ALU should AND numbers!");

    -- Test OR
    operand_a_in <= std_logic_vector(TO_SIGNED(100, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(89, 32));
    alu_control_in <= ALU_CONTROL_OR;
    wait for clk_period/2;
    assert_equals(std_logic_vector(TO_SIGNED(125, 32)), alu_result_out, "ALU should OR numbers!");

    -- Test SLT
    operand_a_in <= std_logic_vector(TO_SIGNED(100, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(30, 32));
    alu_control_in <= ALU_CONTROL_SLT;
    wait for clk_period/2;
    assert_equals(std_logic_vector(TO_SIGNED(0, 32)), alu_result_out, "ALU should perform number comparisons!");

    operand_a_in <= std_logic_vector(TO_SIGNED(-30, 32));
    operand_b_in <= std_logic_vector(TO_SIGNED(100, 32));
    alu_control_in <= ALU_CONTROL_SLT;
    wait for clk_period/2;
    assert_equals(std_logic_vector(TO_SIGNED(1, 32)), alu_result_out, "ALU should be able to recognize small and large numbers!");

    -- Test SLL & SRL
    operand_b_in <= std_logic_vector(to_signed(22, 32));
    alu_control_in <= ALU_CONTROL_SLL;
    shamt <= "00100";
    wait for clk_period/2;
    assert_equals(std_logic_vector(to_signed(352, 32)), alu_result_out, "ALU should shift logical left");

    operand_b_in <= std_logic_vector(to_unsigned(16, 32));
    alu_control_in <= ALU_CONTROL_SRL;
    shamt <= "00001";
    wait for clk_period/2;
    assert_equals(std_logic_vector(to_unsigned(8, 32)), alu_result_out, "Alu should shift logical right");

    report "Test complete";

    wait;
  end process;

END;
