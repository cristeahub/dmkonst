library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hazard_detection is
  port ( control_id_ex_mem_read_in : in std_logic;
         control_mem_write_in : in std_logic;
         control_mem_read_in : in std_logic;
         id_ex_rt_in : in std_logic_vector(4 downto 0);
         if_id_rt_in : in std_logic_vector(4 downto 0);
         if_id_rs_in : in std_logic_vector(4 downto 0);

         stall_out : out std_logic;
         pc_write_out : out std_logic;
         barrier_if_id_write_out : out std_logic);
end hazard_detection;

architecture Behavioral of hazard_detection is
  signal stall : std_logic := '0';
  signal processor_enable_hold : std_logic := '0';
begin

  stall <= '1' when (control_id_ex_mem_read_in = '1'
                 and control_mem_write_in = '0'
                 and control_mem_read_in = '0')
               and (id_ex_rt_in = if_id_rs_in
                 or id_ex_rt_in = if_id_rt_in)
           else '0';

  stall_out <= stall;
  pc_write_out <= not stall;
  barrier_if_id_write_out <= not stall;

end Behavioral;
