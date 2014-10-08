LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.test_utils.ALL;
 
ENTITY tb_instruction_register IS
END tb_instruction_register;
 
ARCHITECTURE behavior OF tb_instruction_register IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT instruction_register
    PORT(
         mem_data_in : IN  std_logic_vector(31 downto 0);
         control_ir_write_in : IN  std_logic;
         instruction_opcode_out : OUT  std_logic_vector(31 downto 26);
         instruction_rs_out : OUT  std_logic_vector(25 downto 21);
         instruction_rt_out : OUT  std_logic_vector(20 downto 16);
         instruction_address_out : OUT  std_logic_vector(15 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal mem_data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal control_ir_write_in : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal instruction_opcode_out : std_logic_vector(31 downto 26);
   signal instruction_rs_out : std_logic_vector(25 downto 21);
   signal instruction_rt_out : std_logic_vector(20 downto 16);
   signal instruction_address_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: instruction_register PORT MAP (
          mem_data_in => mem_data_in,
          control_ir_write_in => control_ir_write_in,
          instruction_opcode_out => instruction_opcode_out,
          instruction_rs_out => instruction_rs_out,
          instruction_rt_out => instruction_rt_out,
          instruction_address_out => instruction_address_out,
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

      mem_data_in <= "00010001000100010001000100010001";
			control_ir_write_in <= '1';
			
			wait for clk_period;
			
			assert_equals("000100", instruction_opcode_out, "Opcode should be first 6 bits of mem_data_in");
			assert_equals("01000", instruction_rs_out, "rs out should be next 5 bits");
			assert_equals("10001", instruction_rt_out, "rt out should be next 5 bits");
			assert_equals("0001000100010001", instruction_address_out, "address should be last 16 bits");
			
			control_ir_write_in <= '0';
			mem_data_in <= x"aabbccdd";
			
			wait for clk_period;
			
			assert_equals("000100", instruction_opcode_out, "Opcode should maintain the old value");

      wait;
   end process;

END;
