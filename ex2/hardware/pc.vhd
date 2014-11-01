library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pc is
  Port ( clk : in  std_logic;
         reset : in  std_logic;

         latch_alu_in : in std_logic_vector(31 downto 0);
         sign_extended_b_in : in std_logic_vector(31 downto 0);
         pc_source_in : in std_logic_vector(1 downto 0);

         alu_result_zero_in : in std_logic;
         pc_write_cond_in : in std_logic;
         pc_write_in : in std_logic;
         pc_out : out  std_logic_vector(31 downto 0));
end pc;

architecture Behavioral of pc is
  signal pc_in : std_logic_vector(31 downto 0);
  signal pc_out_tmp : std_logic_vector(31 downto 0);
begin

  with pc_source_in select
    pc_in <= std_logic_vector(unsigned(pc_out_tmp) + 1) when "00",
             latch_alu_in when "01",
             sign_extended_b_in when others;

  PC : process ( clk, reset )
  begin
    if reset = '1' then
      pc_out_tmp <= x"00000000";
    elsif rising_edge(clk) then
      if (alu_result_zero_in = '1' and pc_write_cond_in = '1') or pc_write_in = '1' then
        pc_out_tmp <= pc_in;
      end if;
    end if;
  end process; -- PC

  pc_out <= pc_out_tmp;

end Behavioral;

