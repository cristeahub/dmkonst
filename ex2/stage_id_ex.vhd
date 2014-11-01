library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stage_id_ex is
    Port ( incremented_pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data_1_in : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data_2_in : in  STD_LOGIC_VECTOR (31 downto 0);
           sign_extend_in : in  STD_LOGIC_VECTOR (31 downto 0);
           instruction_rt_in : in  STD_LOGIC_VECTOR (20 downto 16);
           instruction_rd_in : in  STD_LOGIC_VECTOR (15 downto 11);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           incremented_pc_out : out  STD_LOGIC_VECTOR (31 downto 0);
           read_data_1_out : out  STD_LOGIC_VECTOR (31 downto 0);
           read_data_2_out : out  STD_LOGIC_VECTOR (31 downto 0);
           sign_extend_out : out  STD_LOGIC_VECTOR (31 downto 0);
           instruction_rt_out : out  STD_LOGIC_VECTOR (20 downto 16);
           instruction_rd_out : out  STD_LOGIC_VECTOR (15 downto 11));
end stage_id_ex;

architecture Behavioral of stage_id_ex is

begin

process (clk, reset) is
begin

  if reset = '1' then
    incremented_pc_out <= x"0000";
    read_data_1_out <= x"0000";
    read_data_2_out <= x"0000";
    sign_extend_out <= x"0000";
    instruction_rt_out <= x"0000";
    instruction_rd_out <= x"0000";
  elsif rising_edge(clk) then
    incremented_pc_out <= incremented_pc_in;
    read_data_1_out <= read_data_1_in;
    read_data_2_out <= read_data_2_in;
    sign_extend_out <= sign_extend_in;
    instruction_rt_out <= instruction_rt_in;
    instruction_rd_out <= instruction_rd_in;
  end if;

end process;


end Behavioral;

