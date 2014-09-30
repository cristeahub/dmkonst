LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.test_utils.all;
use work.constants.all;

ENTITY tb_alu IS
  END tb_alu;

ARCHITECTURE behavior OF tb_alu IS 

  COMPONENT ALU
    PORT(
          operand_a_in : IN  signed(31 downto 0);
          operand_b_in : IN  signed(31 downto 0);
          alu_control_in : IN  std_logic_vector(3 downto 0);
          zero_out : OUT  std_logic;
          alu_result_out : OUT  signed(31 downto 0)
        );
  END COMPONENT;


  --Inputs
  signal operand_a_in : signed(31 downto 0) := (others => '0');
  signal operand_b_in : signed(31 downto 0) := (others => '0');
  signal alu_control_in : std_logic_vector(3 downto 0) := (others => '0');

  --Outputs
  signal zero_out : std_logic;
  signal alu_result_out : signed(31 downto 0);

  -- Clock period definitions
  constant clk_period : time := 100 ns;

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut: ALU PORT MAP (
                      operand_a_in => operand_a_in,
                      operand_b_in => operand_b_in,
                      alu_control_in => alu_control_in,
                      zero_out => zero_out,
                      alu_result_out => alu_result_out
                    );

  -- Stimulus process
  stim_proc: process
  begin		
    wait for clk_period; -- Test Add

    operand_a_in <= TO_SIGNED(40, 32);
    operand_b_in <= TO_SIGNED(30, 32);

    alu_control_in <= ALU_CONTROL_ADD;
    wait for clk_period;
    assert_equals(TO_SIGNED(70, 32), alu_result_out, "ALU should be able to add!");

    wait for clk_period; -- Test Sub

    operand_a_in <= TO_SIGNED(90, 32);
    operand_b_in <= TO_SIGNED(20, 32);

    alu_control_in <= ALU_CONTROL_SUBTRACT;
    wait for clk_period;
    assert_equals(TO_SIGNED(70, 32), alu_result_out, "ALU should be able to subtract!");

    wait for clk_period; -- Test Zero flag

    operand_a_in <= TO_SIGNED(90, 32);
    operand_b_in <= TO_SIGNED(90, 32);

    alu_control_in <= ALU_CONTROL_SUBTRACT;
    wait for clk_period;
    assert_equals('1', zero_out, "ALU should recognize when result is zero!");

    wait for clk_period;

    operand_a_in <= TO_SIGNED(30, 32);
    operand_b_in <= TO_SIGNED(90, 32);
    wait for clk_period;
    assert_equals('0', zero_out, "ALU should recognize when result is non-zero!");

    wait for clk_period; -- Test And

    operand_a_in <= TO_SIGNED(7, 32);
    operand_b_in <= TO_SIGNED(4, 32);

    alu_control_in <= ALU_CONTROL_AND;
    wait for clk_period;
    assert_equals(TO_SIGNED(4, 32), alu_result_out, "ALU should and numbers!");

    wait for clk_period; -- Test OR

    operand_a_in <= TO_SIGNED(100, 32);
    operand_b_in <= TO_SIGNED(89, 32);

    alu_control_in <= ALU_CONTROL_OR;
    wait for clk_period;
    assert_equals(TO_SIGNED(125, 32), alu_result_out, "ALU should and numbers!");

    wait for clk_period; -- Test SLT

    operand_a_in <= TO_SIGNED(100, 32);
    operand_b_in <= TO_SIGNED(30, 32);

    alu_control_in <= ALU_CONTROL_SLT;
    wait for clk_period;
    assert_equals(TO_SIGNED(0, 32), alu_result_out, "ALU should be able to recognize small and large numbers!");

    wait for clk_period;

    operand_a_in <= TO_SIGNED(30, 32);
    operand_b_in <= TO_SIGNED(100, 32);

    alu_control_in <= ALU_CONTROL_SLT;
    wait for clk_period;
    assert_equals(TO_SIGNED(1, 32), alu_result_out, "ALU should be able to recognize small and large numbers!");

    wait;
  end process;

END;
