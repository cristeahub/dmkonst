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
         write_data_in : in STD_LOGIC_VECTOR (31 downto 0);
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

  process (clk) is
  begin
    if rising_edge(clk) then
      if reset = '1' then
        -- bluh
      end if;

      if control_i_or_d = '1' then
        dmem_address_out <= alu_out_in(7 downto 0);
      else
        imem_address_out <= pc_in(7 downto 0);
      end if;

      if control_mem_write = '1' then
        dmem_write_enable_out <= '1';
        dmem_data_out <= write_data_in;
      end if;

      if control_mem_read = '1' then
        if control_i_or_d = '1' then
          mem_data_out <= dmem_data_in;
        else
          mem_data_out <= imem_data_in;
        end if;
      end if;
    end if;
  end process;

end Behavioral;

