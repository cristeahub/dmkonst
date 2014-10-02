LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
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
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal mem_data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal control_ir_write_in : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

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
          clk => clk,
          reset => reset
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

      -- insert stimulus here 

      wait;
   end process;

END;
