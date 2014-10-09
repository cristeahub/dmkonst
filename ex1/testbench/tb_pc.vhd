--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:22:27 09/25/2014
-- Design Name:   
-- Module Name:   /opt/dmlab/home/stiaje/dmkonst/ex1/testbench/tb_pc.vhd
-- Project Name:  exercise1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pc
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.test_utils.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY tb_pc IS
  END tb_pc;
ARCHITECTURE behavior OF tb_pc IS


    -- Component Declaration for the Unit Under Test (UUT)

  COMPONENT pc
    PORT(
          clk : IN  std_logic;
          reset : IN  std_logic;
          control_pc_write : in std_logic;
          control_pc_write_cond : in std_logic;
          alu_result_zero : in std_logic;
          pc_in : IN  std_logic_vector(31 downto 0);
          pc_out : OUT  std_logic_vector(31 downto 0)
        );
  END COMPONENT;


   --Inputs
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal control_pc_write : std_logic := '0';
  signal control_pc_write_cond : std_logic := '0';
  signal alu_result_zero : std_logic := '0';
  signal pc_in : std_logic_vector(31 downto 0);

   --Outputs
  signal pc_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
  constant clk_period : time := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
  uut: pc PORT MAP (
                     clk => clk,
                     reset => reset,
                     control_pc_write => control_pc_write,
                     control_pc_write_cond => control_pc_write_cond,
                     alu_result_zero => alu_result_zero,
                     pc_in => pc_in,
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
    wait for clk_period*1;

    reset <= '1';
    wait for clk_period*1;
    reset <= '0';

    assert_equals(x"00000000", pc_out, "Should reset pc_out");

      -- Test that write enable works
    pc_in <= x"0000000A";
    wait for clk_period*1;
    control_pc_write <= '1';
    wait for clk_period*1;

    assert_equals(pc_out, pc_in, "pc_out should be the same as to pc_in");

    control_pc_write <= '0';
    pc_in <= x"000000CC";
    wait for clk_period*1;

    assert_equals(x"0000000A", pc_out, "pc_out should not write when not told to do so");

    report "Test complete!";

    wait;
  end process;

END;
