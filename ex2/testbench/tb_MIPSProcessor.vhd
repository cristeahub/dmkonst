-- Part of TDT4255 Computer Design laboratory exercises
-- Group for Computer Architecture and Design
-- Department of Computer and Information Science
-- Norwegian University of Science and Technology

-- tb_MIPSProcessor.vhd
-- Testbench for the MIPSProcessor component
-- Instantiates data and instruction memory, fills them with some
-- test data, enables the processor, then checks the data memory
-- to see if the expected values have been written.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.constants.all;

ENTITY tb_MIPSProcessor IS
END tb_MIPSProcessor;

ARCHITECTURE behavior OF tb_MIPSProcessor IS
  constant ADDR_WIDTH : integer := 8;
  constant DATA_WIDTH : integer := 32;

  --Inputs
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal processor_enable : std_logic := '0';
  signal imem_data_in : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
  signal dmem_data_in : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

  --multiplexed memory outputs
  signal imem_address : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
  signal dmem_address : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
  signal dmem_data_out : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
  signal dmem_write_enable : std_logic := '0';

  -- driven only from processor
  signal proc_imem_address : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
  signal proc_dmem_data_out : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
  signal proc_dmem_write_enable : std_logic := '0';
  signal proc_dmem_address : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');

  -- driven only from testbench
  signal imem_data_out : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
  signal imem_write_enable : std_logic_vector(0 downto 0) := (others => '0');
  signal tb_imem_address : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
  signal tb_dmem_data_out : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
  signal tb_dmem_write_enable : std_logic := '0';
  signal tb_dmem_address : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');

  -- Clock period definitions
  constant clk_period : time := 10 ns; 
  
  type instruction_array_t is array (natural range <>) of std_logic_vector(DATA_WIDTH-1 downto 0);
BEGIN
  -- Instantiate the processor
  Processor: entity work.MIPSProcessor(Behavioral)
  port map (
             clk => clk,	reset => reset,
             processor_enable => processor_enable,
             imem_data_in => imem_data_in,
             imem_address => proc_imem_address,
             dmem_data_in => dmem_data_in,
             dmem_address => proc_dmem_address,
             dmem_data_out => proc_dmem_data_out,
             dmem_write_enable => proc_dmem_write_enable
           );

  -- instantiate the instruction memory
  InstrMem: entity work.DualPortMem
  port map (
             clka => clk, clkb => clk,
             wea => imem_write_enable, 
             dina => imem_data_out,
             addra => imem_address, douta => imem_data_in,
                                                -- plug unused memory port
             web => "0", dinb => x"00", addrb => "0000000000"
           );

  -- instantiate the data memory
  DataMem: entity work.DualPortMem
  port map (
             clka => clk, clkb => clk,
             wea(0) => dmem_write_enable, dina => dmem_data_out,
             addra => dmem_address, douta => dmem_data_in,
                                                -- plug unused memory port
             web => "0", dinb => x"00", addrb => "0000000000"
           );

  -- Clock process definitions
  clk_process: process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;

  imem_address <= proc_imem_address when processor_enable = '1' else tb_imem_address;
  dmem_address <= proc_dmem_address when processor_enable = '1' else tb_dmem_address;
  dmem_data_out <= proc_dmem_data_out when processor_enable = '1' else tb_dmem_data_out;
  dmem_write_enable <= proc_dmem_write_enable when processor_enable = '1' else tb_dmem_write_enable;


  -- Stimulus process
  stim_proc: process
    -- helper procedures for filling instruction memory
    procedure WriteInstructionWord(
                                    instruction : in std_logic_vector(DATA_WIDTH-1 downto 0);
                                    address : in unsigned(ADDR_WIDTH-1 downto 0)) is
    begin
      tb_imem_address <= std_logic_vector(address);
      imem_data_out <= instruction;
      imem_write_enable <= "1";
      wait until rising_edge(clk);
      imem_write_enable <= "0";
    end WriteInstructionWord;

    -- Helper to fill instruciton memory from an array
    procedure fill_instruction_memory(instruction_data : in instruction_array_t) is
    begin
      for i in 0 to instruction_data'LENGTH - 1 loop
        WriteInstructionWord(instruction_data(i), to_unsigned(i, ADDR_WIDTH));
      end loop;
      tb_imem_address <= (others => '0');
    end fill_instruction_memory;

  -- helper procedures for filling data memory
    procedure WriteDataWord(
                             data : in std_logic_vector(DATA_WIDTH-1 downto 0);
                             address : in integer) is
    begin
      tb_dmem_address <= std_logic_vector(to_unsigned(address, ADDR_WIDTH));
      tb_dmem_data_out <= data;
      tb_dmem_write_enable <= '1';
      wait until rising_edge(clk);
      tb_dmem_write_enable <= '0';
    end WriteDataWord;

-- helper procedures for checking the contents of data memory after
-- the processor has finished executing the tests
    procedure CheckDataWord(
                             data : in std_logic_vector(DATA_WIDTH-1 downto 0);
                             address : in integer) is
    begin
      tb_dmem_address <= std_logic_vector(to_unsigned(address, ADDR_WIDTH));
      tb_dmem_write_enable <= '0';
      wait until rising_edge(clk);
      wait for 0.5 * clk_period;
      assert data = dmem_data_in report "Expected data not found at datamem addr " 
      & integer'image(address) & " found = " 
      & integer'image(to_integer(unsigned(dmem_data_in))) 
      & " expected " 
      & integer'image(to_integer(unsigned(data)))
      severity note;
      assert data /= dmem_data_in report "Expected data found at datamem addr " & integer'image(address) severity note;
    end CheckDataWord;

    procedure ClearMemories is
    begin
      for i in 0 to 2**ADDR_WIDTH loop
        WriteInstructionWord(x"00000000", to_unsigned(i, ADDR_WIDTH));
        WriteDataWord(x"00000000", i);
      end loop;
    end ClearMemories;

    procedure FillDataMemory1 is
    begin
      WriteDataWord(x"00000002", 1);
      WriteDataWord(x"0000000A", 2);
    end FillDataMemory1;

    procedure CheckDataMemory1 is
    begin
      wait until processor_enable = '0';
      -- expected data memory contents, derived from program behavior
      CheckDataWord(x"00000002", 1);
      CheckDataWord(x"00000000", 3);
      CheckDataWord(x"00000000", 4);
      CheckDataWord(x"0000000C", 5);
      CheckDataWord(x"0000000C", 6);
      CheckDataWord(x"0000000C", 7);
      CheckDataWord(x"00060000", 8);
      CheckDataWord(x"00060002", 9);
      CheckDataWord(x"00000001", 12);
      CheckDataWord(x"0005FFEE", 13);
      CheckDataWord(x"00000008", 15);
      CheckDataWord(x"0000000E", 16);
      CheckDataWord(x"00000000", 18);
    end CheckDataMemory1;

    procedure CheckDataMemory2 is
    begin
      wait until processor_enable = '0';
      CheckDataWord(x"00000001", 1);
      CheckDataWord(x"00000002", 2);
      CheckDataWord(x"00000001", 3);
    end CheckDataMemory2;


    constant SystemTestInstructions : instruction_array_t := (
      X"8C010001", --lw $1, 1($0)		/$1 =  2	
      X"8C020002", --lw $2, 2($0)		/$2 = 10	
      X"00221820", --add $3, $1, $2	   /$3 = 12
      X"AC030005", --sw $3, 5($0)		/Saving value 12 on address 5	
      X"10000002", --beq $0, $0, 2		/Jumping to adress +2 = 8	
      X"AC030003", --sw $3, 3($0)      /SKIPPED (Saving value 12 on address 3)			
      X"AC030004", --sw $3, 4($0)		/SKIPPED	(Saving value 12 on address 4)
      X"AC030006", --sw $3, 6($0)		/Saving value 12 on address 6	
      X"AC030007", --sw $3, 7($0)		/Saving value 12 on address 7	
      X"3C030006", --lui $3, 6			/$3 = 6 * 2^16 = 393216 = 0x60000
      X"AC030008", --sw $3, 8($0)		/Saving value 0x60000 on address 8	
      X"00231820", --add $3, $1, $3		/$3 = 393218 = 0x60002	
      X"AC030009", --sw $3, 9($0)		/Saving 0x60002 on address 9	
      X"10400002", --beq $2, $0, 2		/No branch	
      X"0001982A", --slt $19, $0, $1	/$19 = 1		
      X"AC13000C", --sw $19, 12($0)		/Saving 1 on address 12	
      X"08000013", --j 19					/jump to 19
      X"AC030001", --sw $3, 1($0)		/SKIPPED (Saving 0x60002 on address 1)	
      X"1000FFFD", --beq $0, $0, -3		/SKIPPED (Branch back three steps)	
      X"00622022", --sub $4, $3, $2		/$4 = 0x5FFF8 	
      X"00822022", --sub $4, $4, $2		/$4 = 0x5FFEE
      X"AC04000D", --sw $4, 13($0)		/Saving value 0x5FFEE on address 13 	
      X"00221820", --add $3, $1, $2		/$3 = 12	
      X"00432024", --and $4, $2, $3		/$4 = 1000 = 8	
      X"00432825", --or $5, $2, $3		/$5 = 1110 = 14	
      X"AC04000F", --sw $4, 15($0)		/Saving value 8 on address 15	
      X"AC050010", --sw $5, 16($0)		/Saving value 14 (= 0xE) on address 16	
      X"002A5020", --add $10, $1, $10  /add $1 to $ 10 and place in $10
      X"1000FFFF", --beq $0, $0, -1	/Branch back one step to hold off code at this spot
      X"AC050012" --sw $5, 18($0)		/SHOULD NEVER HAPPEN (Saving value 14 (= 0xE) on address 18.)
    );

    constant TestLwSw : instruction_array_t := (
      X"3C030002", -- lui $3, 2
      X"00031C02", -- srl $3, $3, 16
      X"8c030001", -- lw $3, 1($0)
      X"ac030003" -- sw $3, 3($0)
    );

    constant TestLoopPrediction : instruction_array_t := (
      X"8C010000", -- lw $1, 0($0)
      X"8C020001", -- lw $2, 1($0)
      X"10400003", -- beq $2, $0, 3
      X"AC020002", -- sw $2, 2($0)
      X"00411022", -- sub $2, $2, $1
      X"08000002", -- j 2
      X"1000FFFF" -- beq $0, $0, -1
    );

    constant TestBranchAfterLoad : instruction_array_t := (
      X"8C020002", -- lw $2, 2($0)
      X"8C010001", -- lw $1, 1($0)
      X"10200002", -- beq $1, $0, 2
      X"AC020004", -- sw $2, 4($0)
      X"08000006", -- j 6
      X"AC010005", -- sw $1, 5($0)
      X"00000000" -- nop
    );
  begin

    ---------------------------------
    -- Run system integration test --
    ---------------------------------
    reset <= '1';
    wait for 100 ns;	
    reset <= '0';
    processor_enable <= '0';

    fill_instruction_memory(SystemTestInstructions);
    FillDataMemory1;

    wait for clk_period * 10;

    processor_enable <= '1';
    wait for clk_period * 200;

    processor_enable <= '0';

    CheckDataMemory1;
    ClearMemories;

    -----------------------------------
    -- Test Storeword after Loadword --
    -----------------------------------
    reset <= '1';
    wait for 100 ns;
    reset <= '0';

    wait until reset = '0';

    fill_instruction_memory(TestLwSw);
    WriteDataWord(x"00000001", 1);
    WriteDataWord(x"00000002", 2);

    wait for clk_period * 10;

    processor_enable <= '1';
    wait for clk_period * 50;

    processor_enable <= '0';

    CheckDataMemory2;
    ClearMemories;

    wait for clk_period * 10;

    -------------------------------------
    -- Test branch prediction in loops --
    -------------------------------------
    reset <= '1';
    wait for 100 ns;
    reset <= '0';
    wait until reset = '0';

    fill_instruction_memory(TestLoopPrediction);
    WriteDataWord(x"00000001", 0);
    WriteDataWord(x"00000014", 1);

    wait for clk_period * 10;

    processor_enable <= '1';
    wait for clk_period * 200;
    processor_enable <= '0';
    wait until processor_enable = '0';

    CheckDataWord(x"00000001", 2);
    ClearMemories;

    wait for clk_period;

    ---------------
    -- Next test --
    ---------------

    reset <= '1';
    wait for 100 ns;
    reset <= '0';

    wait until reset = '0';

    fill_instruction_memory(TestBranchAfterLoad);
    WriteDataWord(X"00000000", 1);
    WriteDataWord(X"00000002", 2);

    wait for clk_period * 10;

    processor_enable <= '1';

    wait for clk_period * 50;

    processor_enable <= '0';

    wait until processor_enable = '0';

    CheckDataWord(X"00000000", 4);
    CheckDataWord(X"00000002", 4);

    ClearMemories;

    report "Test complete";
    wait;
  end process;

END;
