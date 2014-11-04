LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_forwarding_unit IS
END tb_forwarding_unit;
 
ARCHITECTURE behavior OF tb_forwarding_unit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT forwarding_unit
    PORT(
         inst_rs_in : IN  std_logic_vector(4 downto 0);
         inst_rt_in : IN  std_logic_vector(4 downto 0);
         addr_ex_mem_in : IN  std_logic_vector(4 downto 0);
         addr_mem_wb_in : IN  std_logic_vector(4 downto 0);
         control_ex_mem_wb_in : IN  std_logic;
         control_mem_wb_in : IN  std_logic;
         forward_rs_out : OUT  std_logic_vector(1 downto 0);
         forward_rt : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inst_rs_in : std_logic_vector(4 downto 0) := (others => '0');
   signal inst_rt_in : std_logic_vector(4 downto 0) := (others => '0');
   signal addr_ex_mem_in : std_logic_vector(4 downto 0) := (others => '0');
   signal addr_mem_wb_in : std_logic_vector(4 downto 0) := (others => '0');
   signal control_ex_mem_wb_in : std_logic := '0';
   signal control_mem_wb_in : std_logic := '0';

 	--Outputs
   signal forward_rs_out : std_logic_vector(1 downto 0);
   signal forward_rt : std_logic_vector(1 downto 0);
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: forwarding_unit PORT MAP (
          inst_rs_in => inst_rs_in,
          inst_rt_in => inst_rt_in,
          addr_ex_mem_in => addr_ex_mem_in,
          addr_mem_wb_in => addr_mem_wb_in,
          control_ex_mem_wb_in => control_ex_mem_wb_in,
          control_mem_wb_in => control_mem_wb_in,
          forward_rs_out => forward_rs_out,
          forward_rt_out => forward_rt_out
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
		
		ex_mem_in <= '0';
		mem_wb_in <= '0';

		wait for clk_period;
		
		assert_equals("00", forward_rs_out, "Forwarding no values");
		assert_equals("00", forward_rt_out, "Forwarding no values");
		
		wait for clk_period;
		
		inst_rs_in <= "00001";
		inst_rt_in <= "00001";
		addr_ex_mem_in <= "00000";
		addr_mem_wb_in <= "00000";
		
		wait for clk_period;
		
		assert_equals("00", forward_rs_out, "Forwarding no values");
		assert_equals("00", forward_rt_out, "Forwarding no values");
		
		wait for clk_period;
		
		addr_ex_mem_in <= "00001";
		addr_mem_wb_in <= "00001";
		
		ex_mem_in <= '1';
		mem_wb_in <= '0';
		
		wait for clk_period;
		
		assert_equals("01", forward_rs_out, "Forwarding values from exmem");
		assert_equals("01", forward_rt_out, "Forwarding values from exmem");
		
		wait for clk_period;
		
		ex_mem_in <= '0';
		mem_wb_in <= '1';
		
		wait for clk_period;
		
		assert_equals("10", forward_rs_out, "Forwarding values from memwb");
		assert_equals("10", forward_rt_out, "Forwarding values from memwb");
		
		wait for clk_period;
		
		ex_mem_in <= '1';
		mem_wb_in <= '1';
		
		wait for clk_period;
		
		assert_equals("01", forward_rs_out, "Forwarding values from exmem");
		assert_equals("01", forward_rt_out, "Forwarding values from exmem");
		
		wait for clk_period;
		
		ex_mem_in <= '0';
		mem_wb_in <= '0';

		wait for clk_period;
		
		assert_equals("00", forward_rs_out, "Forwarding no values");
		assert_equals("00", forward_rt_out, "Forwarding no values");

      wait;
   end process;

END;
