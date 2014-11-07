
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.test_utils.ALL;
USE work.constants.ALL;

USE ieee.numeric_std.ALL;
 
ENTITY tb_control_unit IS
END tb_control_unit;
 
ARCHITECTURE behavior OF tb_control_unit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
    PORT(
         instruction_in : IN  std_logic_vector(31 downto 26);
         processor_enable : IN  std_logic;
         reg_dst_out : OUT  std_logic;
         alu_op_out : OUT  std_logic_vector(1 downto 0);
         alu_src_out : OUT  std_logic;
         branch_out : OUT  std_logic;
         mem_write_out : OUT  std_logic;
         reg_write_out : OUT  std_logic;
         mem_to_reg_out : OUT  std_logic;
         pc_jump_override_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal instruction_in : std_logic_vector(31 downto 26) := (others => '0');
   signal processor_enable : std_logic := '0';

 	--Outputs
   signal reg_dst_out : std_logic;
   signal alu_op_out : std_logic_vector(1 downto 0);
   signal alu_src_out : std_logic;
   signal branch_out : std_logic;
   signal mem_write_out : std_logic;
   signal reg_write_out : std_logic;
   signal mem_to_reg_out : std_logic;
   signal pc_jump_override_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
          instruction_in => instruction_in,
          processor_enable => processor_enable,
          reg_dst_out => reg_dst_out,
          alu_op_out => alu_op_out,
          alu_src_out => alu_src_out,
          branch_out => branch_out,
          mem_write_out => mem_write_out,
          reg_write_out => reg_write_out,
          mem_to_reg_out => mem_to_reg_out,
          pc_jump_override_out => pc_jump_override_out
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

		processor_enable <= '1';

		instruction_in <= R_TYPE;

		wait for clk_period;

		assert_equals('1', reg_dst_out, "reg_dst_out is on");
		assert_equals('1', reg_write_out, "reg_write_out is on");
		assert_equals("10", alu_op_out, "alu_op_out is 10");

		instruction_in <= LW;

		wait for clk_period;

		assert_equals('1', alu_src_out, "alu_src_out is on");
		assert_equals('1', reg_write_out, "reg_write_out is on");
		assert_equals('1', mem_to_reg_out, "mem_to_reg_out is on");

		instruction_in <= SW;

		wait for clk_period;

		assert_equals('1', alu_src_out, "alu_src_out is on");
		assert_equals('1', mem_write_out, "mem_write_out is on");

		instruction_in <= LUI;

		wait for clk_period;

		assert_equals("11", alu_op_out, "alu_op_out is 11");
		assert_equals('1', reg_write_out, "reg_write_out is on");
		assert_equals('1', alu_src_out, "alu_src_out is on");

		instruction_in <= BRANCH;

		wait for clk_period;

		assert_equals("01", alu_op_out, "alu_op_out is 01");
		assert_equals('1', branch_out, "branch_out is on");

		instruction_in <= JUMP;

		wait for clk_period;

		assert_equals('1', pc_jump_override_out, "pc_jump_override_out is on");

		-- turn off processor_enable
		-- do a random sample of tests
      processor_enable <= '0';

		assert_equals('0', reg_dst_out, "reg_dst_out is off");
		assert_equals('0', reg_write_out, "reg_write_out is off");
		assert_equals("00", alu_op_out, "alu_op_out is off");

		instruction_in <= LW;

		wait for clk_period;

		assert_equals('0', alu_src_out, "alu_src_out is off");
		assert_equals('0', reg_write_out, "reg_write_out is off");
		assert_equals('0', mem_to_reg_out, "mem_to_reg_out is off");

		instruction_in <= SW;

		wait for clk_period;

		assert_equals('0', alu_src_out, "alu_src_out is off");
		assert_equals('0', mem_write_out, "mem_write_out is off");

		instruction_in <= LUI;

		wait for clk_period;

		assert_equals("00", alu_op_out, "alu_op_out is off");
		assert_equals('0', reg_write_out, "reg_write_out is of");
		assert_equals('0', alu_src_out, "alu_src_out is off");


      wait;
   end process;

END;
