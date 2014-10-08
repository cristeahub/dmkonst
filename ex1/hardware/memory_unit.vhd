library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity memory_unit is
  Port ( control_i_or_d : in  STD_LOGIC;
         control_mem_write : in  STD_LOGIC;
         pc_in : in  STD_LOGIC_VECTOR (7 downto 0);
         alu_out_in : in  STD_LOGIC_VECTOR (7 downto 0);
         mem_data_out : out  STD_LOGIC_VECTOR (31 downto 0);
         write_data_in : in STD_LOGIC_VECTOR (31 downto 0);
         imem_data_in : in  STD_LOGIC_VECTOR (31 downto 0);
         imem_address_out : out  STD_LOGIC_VECTOR (7 downto 0);
         dmem_data_in : in  STD_LOGIC_VECTOR (31 downto 0);
         dmem_address_out : out  STD_LOGIC_VECTOR (7 downto 0);
         dmem_data_out : out  STD_LOGIC_VECTOR (31 downto 0);
         dmem_write_enable_out : out  STD_LOGIC);
end memory_unit;

architecture Behavioral of memory_unit is

begin

  dmem_write_enable_out <= control_mem_write;
  dmem_address_out <= alu_out_in;
  imem_address_out <= pc_in;
  dmem_data_out <= write_data_in;

  with control_i_or_d select
    mem_data_out <= dmem_data_in when '1',
                    imem_data_in when others;

end Behavioral;

