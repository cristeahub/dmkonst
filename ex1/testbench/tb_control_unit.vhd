LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.test_utils.ALL;
USE work.constants.ALL;

ENTITY tb_control_unit IS
END tb_control_unit;
 
ARCHITECTURE behavior OF tb_control_unit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         instruction_in : IN  std_logic_vector(31 downto 26);
         ir_write : OUT  std_logic;
         i_or_d : OUT  std_logic;
         pc_write : OUT  std_logic;
         pc_write_cond : OUT  std_logic;
         pc_source : OUT  std_logic_vector(1 downto 0);
         mem_read : OUT  std_logic;
         mem_to_reg : OUT  std_logic;
         alu_op : OUT  std_logic_vector(1 downto 0);
         mem_write : OUT  std_logic;
         alu_src_a : OUT  std_logic;
         alu_src_b : OUT  std_logic_vector(1 downto 0);
         reg_write : OUT  std_logic;
         reg_dst : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal instruction_in : std_logic_vector(31 downto 26) := (others => '0');

 	--Outputs
   signal ir_write : std_logic;
   signal i_or_d : std_logic;
   signal pc_write : std_logic;
   signal pc_write_cond : std_logic;
   signal pc_source : std_logic_vector(1 downto 0);
   signal mem_read : std_logic;
   signal mem_to_reg : std_logic;
   signal alu_op : std_logic_vector(1 downto 0);
   signal mem_write : std_logic;
   signal alu_src_a : std_logic;
   signal alu_src_b : std_logic_vector(1 downto 0);
   signal reg_write : std_logic;
   signal reg_dst : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
          clk => clk,
          reset => reset,
          instruction_in => instruction_in,
          ir_write => ir_write,
          i_or_d => i_or_d,
          pc_write => pc_write,
          pc_write_cond => pc_write_cond,
          pc_source => pc_source,
          mem_read => mem_read,
          mem_to_reg => mem_to_reg,
          alu_op => alu_op,
          mem_write => mem_write,
          alu_src_a => alu_src_a,
          alu_src_b => alu_src_b,
          reg_write => reg_write,
          reg_dst => reg_dst
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
	 
			procedure check_state_instruction_fetch is
			begin
				assert_equals('0', i_or_d, "i_or_d should be 0");
				assert_equals("01", alu_src_b, "alu_src_b should be 01");
				assert_equals('1', ir_write, "IRWrite should be 1");
				assert_equals('1', mem_read, "mem_read should be 1");
			end procedure check_state_instruction_fetch;
			
			procedure check_state_instruction_decode is
			begin
				assert_equals("11", alu_src_b, "alu_src_b should be 11");
			end procedure check_state_instruction_decode;
			
			procedure check_state_memory_address_computation is
			begin
				assert_equals('1', alu_src_a, "");
				assert_equals("10", alu_src_b, "");
				assert_equals("00", alu_op, "");
			end procedure check_state_memory_address_computation;
	 
   begin
			reset <= '1';
			
			-- Testing path R_TYPE

			wait for clk_period;
			
			check_state_instruction_fetch;
			
			reset <= '0';
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			instruction_in <= R_TYPE;
			
			wait for clk_period;
			
			assert_equals('1', alu_src_a, "alu_src_a should be 1");
			assert_equals("00", alu_src_b, "alu_src_b should be 00");
			assert_equals("10", alu_op, "alu_op should be 10");
			
			wait for clk_period;
			
			assert_equals('1', reg_dst, "reg_dst should be 1");
			assert_equals('1', reg_write, "reg_write should be 1");
			assert_equals('0', mem_to_reg, "mem_to_reg should be 0");
			
			wait for clk_period;
			
			-- Testing path JUMP
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			instruction_in <= JUMP;
			
			wait for clk_period;
			
			assert_equals('1', pc_write, "");
			assert_equals("10", pc_source, "");
			
			wait for clk_period;
			
			-- Testing BRANCH
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			instruction_in <= BRANCH;
			
			wait for clk_period;
			
			assert_equals('1', alu_src_a, "");
			assert_equals("00", alu_src_b, "");
			assert_equals("01", alu_op, "");
			assert_equals('1', pc_write_cond, "");
			assert_equals("01", pc_source, "");
			
			wait for clk_period;
			
			-- Testing LOAD
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			instruction_in <= LW;
			
			wait for clk_period;
			
			check_state_memory_address_computation;
			
			wait for clk_period;
			
			assert_equals('1', mem_read, "");
			assert_equals('0', mem_write, "");
			assert_equals('1', i_or_d, "");
			
			wait for clk_period;
			
			assert_equals('0', reg_dst, "");
			assert_equals('1', reg_write, "");
			assert_equals('1', mem_to_reg, "");
			
			wait for clk_period;
			
			-- Testing SW
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			instruction_in <= SW;
			
			wait for clk_period;
			
			check_state_memory_address_computation;
			
			wait for clk_period;
			
			assert_equals('1', mem_write, "");
			assert_equals('0', mem_read, "");
			assert_equals('1', i_or_d, "");
			
			wait for clk_period;
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			report "Test passed";
			
      wait;
   end process;

END;
