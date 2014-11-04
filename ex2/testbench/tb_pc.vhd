LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.test_utils.all;
use work.constants.all;

ENTITY tb_pc IS
END tb_pc;

ARCHITECTURE behavior OF tb_pc IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT pc
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         processor_enable : IN  std_logic;
         new_pc_in : IN  std_logic_vector(7 downto 0);
         pc_source_in : IN  std_logic;
         pc_jump_override_in : IN  std_logic;
         pc_jump_address : IN  std_logic_vector(7 downto 0);
         pc_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal processor_enable : std_logic := '0';
   signal new_pc_in : std_logic_vector(7 downto 0) := (others => '0');
   signal pc_source_in : std_logic := '0';
   signal pc_jump_override_in : std_logic := '0';
   signal pc_jump_address : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal pc_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: pc PORT MAP (
          clk => clk,
          reset => reset,
          processor_enable => processor_enable,
          new_pc_in => new_pc_in,
          pc_source_in => pc_source_in,
          pc_jump_override_in => pc_jump_override_in,
          pc_jump_address => pc_jump_address,
          pc_out => pc_out
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

		processor_enable <= '1';

		pc_jump_address <= "00000001";
		new_pc_in <= "10000000";

		pc_jump_override_in <= '1';
		pc_source_in <= '0';

		wait for clk_period;

		assert_equals("00000001", pc_out, "PC out is equal to jump address");

		pc_jump_override_in <= '0';
		pc_source_in <= '1';

		wait for clk_period;

		assert_equals("10000000", pc_out, "PC out is equal to pc in");

		pc_jump_override_in <= '0';
		pc_source_in <= '0';

		wait for clk_period;

		assert_equals("10000000", pc_out, "PC out should not have changed");

    -- should be empty when enable is off (?)
		processor_enable <= '0';

		pc_jump_address <= "99999999";
		new_pc_in <= "88888888";

		pc_jump_override_in <= '1';
		pc_source_in <= '0';

		wait for clk_period;

		assert_equals("00000000", pc_out, "PC out should be empty");

		pc_jump_override_in <= '0';
		pc_source_in <= '1';

		wait for clk_period;

		assert_equals("00000000", pc_out, "PC out should be empty");

		pc_jump_override_in <= '1';
		pc_source_in <= '1';

		wait for clk_period;

		assert_equals("00000000", pc_out, "PC out should be empty");

  end process;
END;
