LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.test_utils.all;

ENTITY tb_shift_left_2 IS
END tb_shift_left_2;
 
ARCHITECTURE behavior OF tb_shift_left_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_left_2
    PORT(
         data_in : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_left_2 PORT MAP (
          data_in => data_in,
          data_out => data_out
        );

   -- Stimulus process
   stim_proc: process
   begin

      data_in <= x"00000004";
      
      wait for clk_period;
      
      assert_equals(x"00000010", data_out, "Should shift left by 2");
      
      wait for clk_period;
      
      data_in <= x"00000001";
      
      wait for clk_period;
      
      assert_equals(x"00000004", data_out, "Should shift left by 2");

      wait;
   end process;

END;
