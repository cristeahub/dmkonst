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
         Instruction : IN  std_logic_vector(31 downto 26);
         IRWrite : OUT  std_logic;
         IorD : OUT  std_logic;
         PCWrite : OUT  std_logic;
         PCWriteCond : OUT  std_logic;
         PCSource : OUT  std_logic_vector(1 downto 0);
         MemRead : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         ALUOp : OUT  std_logic_vector(1 downto 0);
         MemWrite : OUT  std_logic;
         ALUSrcA : OUT  std_logic;
         ALUSrcB : OUT  std_logic_vector(1 downto 0);
         RegWrite : OUT  std_logic;
         RegDst : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal Instruction : std_logic_vector(31 downto 26) := (others => '0');

 	--Outputs
   signal IRWrite : std_logic;
   signal IorD : std_logic;
   signal PCWrite : std_logic;
   signal PCWriteCond : std_logic;
   signal PCSource : std_logic_vector(1 downto 0);
   signal MemRead : std_logic;
   signal MemtoReg : std_logic;
   signal ALUOp : std_logic_vector(1 downto 0);
   signal MemWrite : std_logic;
   signal ALUSrcA : std_logic;
   signal ALUSrcB : std_logic_vector(1 downto 0);
   signal RegWrite : std_logic;
   signal RegDst : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
          clk => clk,
          reset => reset,
          Instruction => Instruction,
          IRWrite => IRWrite,
          IorD => IorD,
          PCWrite => PCWrite,
          PCWriteCond => PCWriteCond,
          PCSource => PCSource,
          MemRead => MemRead,
          MemtoReg => MemtoReg,
          ALUOp => ALUOp,
          MemWrite => MemWrite,
          ALUSrcA => ALUSrcA,
          ALUSrcB => ALUSrcB,
          RegWrite => RegWrite,
          RegDst => RegDst
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
				assert_equals('0', IorD, "IorD should be 0");
				assert_equals("01", ALUSrcB, "ALUSrcB should be 01");
				assert_equals('1', IRWrite, "IRWrite should be 1");
				assert_equals('1', MemRead, "MemRead should be 1");
			end procedure check_state_instruction_fetch;
			
			procedure check_state_instruction_decode is
			begin
				assert_equals("11", ALUSrcB, "ALUSrcB should be 11");
			end procedure check_state_instruction_decode;
			
			procedure check_state_memory_address_computation is
			begin
				assert_equals('1', ALUSrcA, "");
				assert_equals("10", ALUSrcB, "");
				assert_equals("00", ALUOp, "");
			end procedure check_state_memory_address_computation;
	 
   begin
			reset <= '1';
			
			-- Testing path R_TYPE

			wait for clk_period;
			
			check_state_instruction_fetch;
			
			reset <= '0';
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			Instruction <= R_TYPE;
			
			wait for clk_period;
			
			assert_equals('1', ALUSrcA, "ALUSrcA should be 1");
			assert_equals("00", ALUSrcB, "ALUSrcB should be 00");
			assert_equals("10", ALUOp, "ALUOp should be 10");
			
			wait for clk_period;
			
			assert_equals('1', RegDst, "RegDst should be 1");
			assert_equals('1', RegWrite, "RegWrite should be 1");
			assert_equals('0', MemToReg, "MemToReg should be 0");
			
			wait for clk_period;
			
			-- Testing path JUMP
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			Instruction <= JUMP;
			
			wait for clk_period;
			
			assert_equals('1', PCWrite, "");
			assert_equals("10", PCSource, "");
			
			wait for clk_period;
			
			-- Testing BRANCH
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			Instruction <= BRANCH;
			
			wait for clk_period;
			
			assert_equals('1', ALUSrcA, "");
			assert_equals("00", ALUSrcB, "");
			assert_equals("01", ALUOp, "");
			assert_equals('1', PCWriteCond, "");
			assert_equals("01", PCSource, "");
			
			wait for clk_period;
			
			-- Testing LOAD
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			Instruction <= LW;
			
			wait for clk_period;
			
			check_state_memory_address_computation;
			
			wait for clk_period;
			
			assert_equals('1', MemRead, "");
			assert_equals('0', MemWrite, "");
			assert_equals('1', IorD, "");
			
			wait for clk_period;
			
			assert_equals('0', RegDst, "");
			assert_equals('1', RegWrite, "");
			assert_equals('1', MemToReg, "");
			
			wait for clk_period;
			
			-- Testing SW
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			check_state_instruction_decode;
			
			Instruction <= SW;
			
			wait for clk_period;
			
			check_state_memory_address_computation;
			
			wait for clk_period;
			
			assert_equals('1', MemWrite, "");
			assert_equals('0', MemRead, "");
			assert_equals('1', IorD, "");
			
			wait for clk_period;
			
			check_state_instruction_fetch;
			
			wait for clk_period;
			
			report "Test passed";
			
      wait;
   end process;

END;
