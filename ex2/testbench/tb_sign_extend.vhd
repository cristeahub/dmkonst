LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.test_utils.all;

ENTITY tb_sign_extend IS
END tb_sign_extend;
 
ARCHITECTURE behavior OF tb_sign_extend IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sign_extend
    PORT(
         data_in : IN  std_logic_vector(15 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0));
    END COMPONENT;
    
   --Inputs
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sign_extend PORT MAP (
          data_in => data_in,
          data_out => data_out
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

      data_in <= x"0111";
      
      wait for clk_period;
      
      assert_equals(x"00000111", data_out, "Should sign extend positive numbers properly");
      
      wait for clk_period;
      
      data_in <= x"FF00";
      
      wait for clk_period;

      assert_equals(x"FFFFFF00", data_out, "Should sign extend negative numbers properly");

      report "Test complete";

      wait;
   end process;

END;
