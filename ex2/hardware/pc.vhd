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

         pc_branch_correction_override_in : in std_logic;
         pc_branch_correction_address_in : in std_logic_vector(ADDR_WIDTH - 1 downto 0);

         pc_jump_override_in : in  std_logic;
         pc_jump_address_in : in  std_logic_vector(ADDR_WIDTH - 1 downto 0);

         pc_out : out  std_logic_vector(ADDR_WIDTH - 1 downto 0));
end pc;

architecture Behavioral of pc is
  signal branch_override_mux : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal jump_override_mux : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal branch_correction_override_mux : std_logic_vector(ADDR_WIDTH - 1 downto 0);

  signal pc_internal : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal pc_internal_hold : std_logic_vector(ADDR_WIDTH - 1 downto 0);

  signal pc_may_be_overridden :std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal pc_output_override : std_logic;
begin

  with pc_branch_override_in select
    branch_override_mux <= pc_branch_address_in when '1',
                           pc_internal when others;

  with pc_jump_override_in select
    jump_override_mux <= pc_jump_address_in when '1',
                         branch_override_mux when others;

  with pc_branch_correction_override_in select
    branch_correction_override_mux <= pc_branch_correction_address_in when '1',
                                      jump_override_mux when others;

  PC : process ( clk, reset, processor_enable_in, pc_write_enable_in )
  begin
    if reset = '1' then
      pc_internal <= x"FF";
    elsif rising_edge(clk) and processor_enable_in = '1' and pc_write_enable_in = '1' then
      pc_internal <= std_logic_vector(unsigned(branch_correction_override_mux) + 1);
      pc_internal_hold <= pc_may_be_overridden;
    end if;
  end process; -- PC

  with pc_write_enable_in select
    pc_may_be_overridden <= pc_internal when '1',
                            pc_internal_hold when others;

  pc_output_override <= pc_branch_override_in or pc_jump_override_in or pc_branch_correction_override_in;
  with pc_output_override select
    pc_out <= branch_correction_override_mux when '1',
              pc_may_be_overridden when others;

end Behavioral;

