LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_registers IS
  END tb_registers;

ARCHITECTURE behavior OF tb_registers IS 

    -- Component Declaration for the Unit Under Test (UUT)

  COMPONENT registers
    PORT(
          clk : IN  std_logic;
          reset : IN  std_logic;
          read_register_1_in : IN  std_logic_vector(4 downto 0);
          read_register_2_in : IN  std_logic_vector(4 downto 0);
          write_register_in : IN  std_logic_vector(4 downto 0);
          write_data_in : IN  SIGNED(31 downto 0);
          reg_write_in : IN  std_logic;
          read_data_1_out : OUT  SIGNED(31 downto 0);
          read_data_2_out : OUT  SIGNED(31 downto 0)
        );
  END COMPONENT;


   --Inputs
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal read_register_1_in : std_logic_vector(4 downto 0) := (others => '0');
  signal read_register_2_in : std_logic_vector(4 downto 0) := (others => '0');
  signal write_register_in : std_logic_vector(4 downto 0) := (others => '0');
  signal write_data_in : SIGNED(31 downto 0) := (others => '0');
  signal reg_write_in : std_logic := '0';

   --Outputs
  signal read_data_1_out : SIGNED(31 downto 0);
  signal read_data_2_out : SIGNED(31 downto 0);

   -- Clock period definitions
  constant clk_period : time := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
  uut: registers PORT MAP (
                            clk => clk,
                            reset => reset,
                            read_register_1_in => read_register_1_in,
                            read_register_2_in => read_register_2_in,
                            write_register_in => write_register_in,
                            write_data_in => write_data_in,
                            reg_write_in => reg_write_in,
                            read_data_1_out => read_data_1_out,
                            read_data_2_out => read_data_2_out
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
