LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.test_utils.ALL;
 
ENTITY tb_instruction_register IS
END tb_instruction_register;
 
ARCHITECTURE behavior OF tb_instruction_register IS 

   --Inputs
   signal instruction_in : std_logic_vector(31 downto 0) := (others => '0');
   signal control_instruction_write : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal instruction_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.instruction_register PORT MAP (
          instruction_in => instruction_in,
          control_instruction_write => control_instruction_write,
          instruction_out => instruction_out,
          clk => clk
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      instruction_in <= "00010001000100010001000100010001";
			control_instruction_write <= '1';
			
			wait for clk_period;
			
			assert_equals("000100", instruction_out(31 downto 26), "Opcode should be first 6 bits of mem_data_in");
			assert_equals("01000", instruction_out(25 downto 21), "rs out should be next 5 bits");
			assert_equals("10001", instruction_out(20 downto 16), "rt out should be next 5 bits");
			assert_equals("0001000100010001", instruction_out(15 downto 0), "address should be last 16 bits");
			
			control_instruction_write <= '0';
			instruction_in <= x"aabbccdd";
			
			wait for clk_period;
			
			assert_equals("000100", instruction_out(31 downto 26), "Opcode should maintain the old value");

      report "Test complete";

      wait;
   end process;

END;
