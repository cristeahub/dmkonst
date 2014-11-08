LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.test_utils.ALL;

ENTITY tb_forwarding_unit IS
  END tb_forwarding_unit;

ARCHITECTURE behavior OF tb_forwarding_unit IS 

  --Inputs
  signal inst_rs_in : std_logic_vector(4 downto 0) := (others => '0');
  signal inst_rt_in : std_logic_vector(4 downto 0) := (others => '0');
  signal addr_ex_mem_in : std_logic_vector(4 downto 0) := (others => '0');
  signal addr_mem_wb_in : std_logic_vector(4 downto 0) := (others => '0');
  signal control_ex_mem_in : std_logic := '0';
  signal control_mem_wb_in : std_logic := '0';

  --Outputs
  signal forward_rs_out : std_logic_vector(1 downto 0);
  signal forward_rt_out : std_logic_vector(1 downto 0);
  signal forward_store_out : std_logic;

  constant clk_period : time := 10 ns;

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut: entity work.forwarding_unit PORT MAP (
                                  inst_rs_in => inst_rs_in,
                                  inst_rt_in => inst_rt_in,
                                  addr_ex_mem_in => addr_ex_mem_in,
                                  addr_mem_wb_in => addr_mem_wb_in,
                                  control_ex_mem_in => control_ex_mem_in,
                                  control_mem_wb_in => control_mem_wb_in,
                                  forward_rs_out => forward_rs_out,
                                  forward_rt_out => forward_rt_out,
                                  forward_store_out => forward_store_out
                                );


  stim_proc: process
  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;	

    wait for clk_period*10;

    -- forward_rs/rt_out works as follows
    -- checks if rd from ex/mem has the same addr as rs from id/ex
    -- if yes, this means a value will be written, but hasn't time to do so
    -- so it forwards the value by hotwireing.
    -- same for rt. values from ex/mem has presedence over values from mem/wb
    -- please verify this

    inst_rs_in <= "00000";
    inst_rt_in <= "00000";
    addr_ex_mem_in <= "00000";
    addr_mem_wb_in <= "00000";

    control_ex_mem_in <= '0';
    control_mem_wb_in <= '0';

    wait for clk_period;

    assert_equals("00", forward_rs_out, "Forwarding no values");
    assert_equals("00", forward_rt_out, "Forwarding no values");
    assert_equals('0', forward_store_out, "Forwarding no store values");

    -- Don't forward when address doesn't match

    inst_rs_in <= "00001";
    inst_rt_in <= "00001";
    addr_ex_mem_in <= "00000";
    addr_mem_wb_in <= "00000";

    wait for clk_period;

    assert_equals("00", forward_rs_out, "Forwarding no values");
    assert_equals("00", forward_rt_out, "Forwarding no values");

    -- Forward from ex/mem

    addr_ex_mem_in <= "00001";
    addr_mem_wb_in <= "00001";

    control_ex_mem_in <= '1';
    control_mem_wb_in <= '0';

    wait for clk_period;

    assert_equals("10", forward_rs_out, "Forwarding values from exmem");
    assert_equals("10", forward_rt_out, "Forwarding values from exmem");

    -- Forward from mem/wb when ex/mem has no reg_write

    control_ex_mem_in <= '0';
    control_mem_wb_in <= '1';

    wait for clk_period;

    assert_equals("01", forward_rs_out, "Forwarding values from memwb");
    assert_equals("01", forward_rt_out, "Forwarding values from memwb");

    -- Prioritize forwarding from ex/mem

    control_ex_mem_in <= '1';
    control_mem_wb_in <= '1';

    wait for clk_period;

    assert_equals("10", forward_rs_out, "Forwarding values from exmem");
    assert_equals("10", forward_rt_out, "Forwarding values from exmem");

    -- Don't forward when control signals are low

    control_ex_mem_in <= '0';
    control_mem_wb_in <= '0';

    wait for clk_period;

    assert_equals("00", forward_rs_out, "Forwarding no values");
    assert_equals("00", forward_rt_out, "Forwarding no values");
    
    -- Should not write to zero address

    addr_ex_mem_in <= "00000";
    addr_mem_wb_in <= "00000";

    control_ex_mem_in <= '1';

    wait for clk_period;

    assert_equals("00", forward_rs_out, "Forwarding no values");
    assert_equals("00", forward_rt_out, "Forwarding no values");

    -- rs and rt should be independent

    addr_ex_mem_in <= "00001";
    addr_mem_wb_in <= "00000";

    inst_rs_in <= "00001";
    inst_rt_in <= "00011";

    wait for clk_period;

    assert_equals("10", forward_rs_out, "Forwarding value for rs");
    assert_equals("00", forward_rt_out, "Forwarding no value for rt");
    assert_equals('0', forward_store_out, "Not forwarding value to store unit");
    
    --
    
    addr_ex_mem_in <= "00010";
    addr_mem_wb_in <= "00010";
    
    control_mem_wb_in <= '1';
    control_ex_mem_in <= '0';
    
    wait for clk_period;
    
    assert_equals('1', forward_store_out, "Forwarding loaded value to store unit");
    
    --

    report "Test complete";
    wait;
  end process;

END;
