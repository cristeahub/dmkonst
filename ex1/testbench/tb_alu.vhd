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
      -- hold reset state for 100 ns.
      wait for 100 ns;
      
      operand_a_in <= TO_SIGNED(40, 32);
      operand_b_in <= TO_SIGNED(30, 32);
      
      alu_control_in <= ALU_CONTROL_ADD;
      
      assert_equals(alu_result_out, TO_SIGNED(70, 32), "ALU should be able to add!");

      wait;
   end process;

END;
