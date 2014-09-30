--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:41:21 09/30/2014
-- Design Name:   
-- Module Name:   /home/aleksanb/Projects/dmkonst/ex1/testbench/tb_alu.vhd
-- Project Name:  exercise1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.test_utils.all;
use work.constants.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_alu IS
END tb_alu;
 
ARCHITECTURE behavior OF tb_alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          operand_a_in => operand_a_in,
          operand_b_in => operand_b_in,
          alu_control_in => alu_control_in,
          zero_out => zero_out,
          alu_result_out => alu_result_out
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

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
