library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stage_mem_wb is
    Port ( read_data_in : in  STD_LOGIC_VECTOR (31 downto 0);
           alu_result_in : in  STD_LOGIC_VECTOR (31 downto 0);
           write_register_in : in  STD_LOGIC_VECTOR (4 downto 0);

           -- Write-back stage control lines
           reg_write_in : in std_logic;
           mem_to_reg_in : in std_logic;

           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;

           -- Write-back stage control lines
           reg_write_out : out std_logic;
           mem_to_reg_out : out std_logic;

           read_data_out : out  STD_LOGIC_VECTOR (31 downto 0);
           alu_result_out : out  STD_LOGIC_VECTOR (31 downto 0);
           write_register_out : out  STD_LOGIC_VECTOR (4 downto 0));
end stage_mem_wb;

architecture Behavioral of stage_mem_wb is

begin

read_data_out <= read_data_in;

process (clk, reset) is
begin
  if reset = '1' then
    reg_write_out <= '0';
    mem_to_reg_out <= '0';
  elsif rising_edge(clk) then
    alu_result_out <= alu_result_in;
    write_register_out <= write_register_in;

    reg_write_out <= reg_write_in;
    mem_to_reg_out <= mem_to_reg_in;
  end if;
end process;

end Behavioral;
