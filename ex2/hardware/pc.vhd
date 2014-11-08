library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pc is
  Generic (
            ADDR_WIDTH : integer := 8);
  Port ( clk : in  std_logic;
         reset : in  std_logic;
         processor_enable_in : in  std_logic;
         pc_write_enable_in : in std_logic;
         
         pc_branch_override_in : in std_logic;
         pc_branch_address_in : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
         
         pc_jump_override_in : in  std_logic;
         pc_jump_address_in : in  std_logic_vector(ADDR_WIDTH - 1 downto 0);

         pc_out : out  std_logic_vector(ADDR_WIDTH - 1 downto 0));
end pc;

architecture Behavioral of pc is
  signal pc_jump_mux_out : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal pc_branch_mux_out : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal pc_out_may_be_overridden_by_jump : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal pc_out_new : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal pc_out_old : std_logic_vector(ADDR_WIDTH - 1 downto 0);
begin

  with pc_branch_override_in select
    pc_branch_mux_out <= pc_branch_address_in when '1',
                         std_logic_vector(unsigned(pc_out_new) + 1) when others;

  with pc_jump_override_in select
    pc_jump_mux_out <= std_logic_vector(unsigned(pc_jump_address_in) + 1) when '1',
                       pc_branch_mux_out when others;

  with pc_write_enable_in select
    pc_out_may_be_overridden_by_jump <= pc_out_new when '1',
              pc_out_old when others;

  with pc_jump_override_in select
    pc_out <= pc_jump_address_in when '1',
              pc_out_may_be_overridden_by_jump when others;

  PC : process ( clk, reset, processor_enable_in, pc_write_enable_in )
  begin
    if reset = '1' then
      pc_out_new <= x"FF";
    elsif rising_edge(clk) and processor_enable_in = '1' and pc_write_enable_in = '1' then
      pc_out_new <= pc_jump_mux_out;
      pc_out_old <= pc_out_new;
    end if;
  end process; -- PC

end Behavioral;

