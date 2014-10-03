LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.test_utils.ALL;

ENTITY tb_mux_4 IS
END tb_mux_4;
 
ARCHITECTURE behavior OF tb_mux_4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_4
    PORT(
         a_in : IN  std_logic_vector(31 downto 0);
         b_in : IN  std_logic_vector(31 downto 0);
         c_in : IN  std_logic_vector(31 downto 0);
         d_in : IN  std_logic_vector(31 downto 0);
         select_in : IN  std_logic_vector(1 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_in : std_logic_vector(31 downto 0) := (others => '0');
   signal b_in : std_logic_vector(31 downto 0) := (others => '0');
   signal c_in : std_logic_vector(31 downto 0) := (others => '0');
   signal d_in : std_logic_vector(31 downto 0) := (others => '0');
   signal select_in : std_logic_vector(1 downto 0) := "00";

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_4 PORT MAP (
          a_in => a_in,
          b_in => b_in,
          c_in => c_in,
          d_in => d_in,
          select_in => select_in,
          data_out => data_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      a_in <= x"aabbccdd";
			b_in <= x"44556677";
			c_in <= x"22334455";
			d_in <= x"778899aa";
			select_in <= "01";
			
			wait for clk_period;
			
			assert_equals(x"44556677", data_out, "Signal b should be selected");
			
			select_in <= "00";
			
			wait for clk_period;
			
			assert_equals(x"aabbccdd", data_out, "Signal a should be selected");
			
			select_in <= "10";
			
			wait for clk_period;
			
			assert_equals(x"22334455", data_out, "Signal c should be selected");

			select_in <= "11";
			
			wait for clk_period;
			
			assert_equals(x"778899aa", data_out, "Signal d should be selected");
      wait;
   end process;

END;
