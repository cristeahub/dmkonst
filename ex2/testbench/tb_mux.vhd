LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.test_utils.ALL;

ENTITY tb_mux IS
END tb_mux;
 
ARCHITECTURE behavior OF tb_mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux
		Generic (
			DATA_WIDTH : integer := 32
		);
    PORT(
         a_in : IN  std_logic_vector(31 downto 0);
         b_in : IN  std_logic_vector(31 downto 0);
         select_in : IN  std_logic;
         data_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_in : std_logic_vector(31 downto 0) := (others => '0');
   signal b_in : std_logic_vector(31 downto 0) := (others => '0');
   signal select_in : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);
	 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
  uut: mux 
		GENERIC MAP ( DATA_WIDTH => 32 )
		PORT MAP (
          a_in => a_in,
          b_in => b_in,
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
			select_in <= '1';
			
			wait for clk_period;
			
			assert_equals(x"44556677", data_out, "Signal b should be selected");
			
			select_in <= '0';
			
			wait for clk_period;
			
			assert_equals(x"aabbccdd", data_out, "Signal a should be selected");

      report "Test complete";

      wait;
   end process;

END;
