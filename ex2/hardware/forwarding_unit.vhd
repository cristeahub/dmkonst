library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity forwarding_unit is
  Port ( inst_rs_in : in  STD_LOGIC_VECTOR (4 downto 0);
         inst_rt_in : in  STD_LOGIC_VECTOR (4 downto 0);
         addr_ex_mem_in : in  STD_LOGIC_VECTOR (4 downto 0);
         addr_mem_wb_in : in  STD_LOGIC_VECTOR (4 downto 0);
         control_ex_mem_in : in  STD_LOGIC;
         control_mem_wb_in : in  STD_LOGIC;
         forward_rs_out : out  STD_LOGIC_VECTOR(1 downto 0);
         forward_rt_out : out  STD_LOGIC_VECTOR(1 downto 0);
         forward_store_out : out  STD_LOGIC
       );
end forwarding_unit;

architecture Behavioral of forwarding_unit is

begin
  process(inst_rs_in, inst_rt_in, addr_ex_mem_in, addr_mem_wb_in,
    control_ex_mem_in, control_mem_wb_in) is
  begin

    -- default
    forward_rs_out <= "00";
    forward_rt_out <= "00";
    forward_store_out <= '0';

    -- mem/wb
    if control_mem_wb_in = '1' and addr_mem_wb_in /= "00000" then
      if addr_mem_wb_in = inst_rt_in then
        forward_rt_out <= "01";
      end if;

      if addr_mem_wb_in = inst_rs_in then
        forward_rs_out <= "01";
      end if;
    end if;

    -- ex/mem precedence
    if control_ex_mem_in = '1' and addr_ex_mem_in /= "00000" then
      if addr_ex_mem_in = inst_rt_in then
        forward_rt_out <= "10";
      end if;

      if addr_ex_mem_in = inst_rs_in then
        forward_rs_out <= "10";
      end if;
    end if;
    
    if control_mem_wb_in = '1' and addr_mem_wb_in /= "00000" then
      if addr_mem_wb_in = addr_ex_mem_in then
        forward_store_out <= '1';
      end if;
    end if;

  end process;

end Behavioral;

