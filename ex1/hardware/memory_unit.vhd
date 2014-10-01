library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity memory_unit is
  Port ( control_i_or_d : in  STD_LOGIC;
         control_mem_read : in  STD_LOGIC;
         control_mem_write : in  STD_LOGIC;
         pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
         alu_out_in : in  STD_LOGIC_VECTOR (31 downto 0);
         mem_data_out : out  STD_LOGIC_VECTOR (31 downto 0);
         clk : in  STD_LOGIC;
         reset : in  STD_LOGIC;
         imem_data_in : in  STD_LOGIC_VECTOR (31 downto 0);
         imem_address_out : out  STD_LOGIC_VECTOR (7 downto 0);
         dmem_data_in : in  STD_LOGIC_VECTOR (31 downto 0);
         dmem_address_out : out  STD_LOGIC_VECTOR (7 downto 0);
         dmem_data_out : out  STD_LOGIC_VECTOR (31 downto 0);
         dmem_write_enable_out : out  STD_LOGIC);
end memory_unit;

architecture Behavioral of memory_unit is

begin


end Behavioral;

