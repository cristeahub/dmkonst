LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--USE ieee.numeric_std.ALL;

ENTITY tb_memory_unit IS
  END tb_memory_unit;

ARCHITECTURE behavior OF tb_memory_unit IS 

    -- Component Declaration for the Unit Under Test (UUT)

  COMPONENT memory_unit
    PORT(
          control_i_or_d : IN  std_logic;
          control_mem_read : IN  std_logic;
          control_mem_write : IN  std_logic;
          pc_in : IN  std_logic_vector(31 downto 0);
          alu_out_in : IN  std_logic_vector(31 downto 0);
          mem_data_out : OUT  std_logic_vector(31 downto 0);
          clk : IN  std_logic;
          reset : IN  std_logic;
          imem_data_in : IN  std_logic_vector(31 downto 0);
          imem_address_out : OUT  std_logic_vector(7 downto 0);
          dmem_data_in : IN  std_logic_vector(31 downto 0);
          dmem_address_out : OUT  std_logic_vector(7 downto 0);
          dmem_data_out : OUT  std_logic_vector(31 downto 0);
          dmem_write_enable_out : OUT  std_logic
        );
  END COMPONENT;


   --Inputs
  signal control_i_or_d : std_logic := '0';
  signal control_mem_read : std_logic := '0';
  signal control_mem_write : std_logic := '0';
  signal pc_in : std_logic_vector(31 downto 0) := (others => '0');
  signal alu_out_in : std_logic_vector(31 downto 0) := (others => '0');
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal imem_data_in : std_logic_vector(31 downto 0) := (others => '0');
  signal dmem_data_in : std_logic_vector(31 downto 0) := (others => '0');

   --Outputs
  signal mem_data_out : std_logic_vector(31 downto 0);
  signal imem_address_out : std_logic_vector(7 downto 0);
  signal dmem_address_out : std_logic_vector(7 downto 0);
  signal dmem_data_out : std_logic_vector(31 downto 0);
  signal dmem_write_enable_out : std_logic;

   -- Clock period definitions
  constant clk_period : time := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
  uut: memory_unit PORT MAP (
                              control_i_or_d => control_i_or_d,
                              control_mem_read => control_mem_read,
                              control_mem_write => control_mem_write,
                              pc_in => pc_in,
                              alu_out_in => alu_out_in,
                              mem_data_out => mem_data_out,
                              clk => clk,
                              reset => reset,
                              imem_data_in => imem_data_in,
                              imem_address_out => imem_address_out,
                              dmem_data_in => dmem_data_in,
                              dmem_address_out => dmem_address_out,
                              dmem_data_out => dmem_data_out,
                              dmem_write_enable_out => dmem_write_enable_out
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
