library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_register is
    Port ( instruction_in : in  STD_LOGIC_VECTOR(31 downto 0);
           clk : in STD_LOGIC;
           instruction_out : out  STD_LOGIC_VECTOR(31 downto 0);
           control_instruction_write : in  STD_LOGIC);
end instruction_register;

architecture Behavioral of instruction_register is
  signal cached_instruction : STD_LOGIC_VECTOR(31 downto 0);
begin

  with control_instruction_write select
    instruction_out <= instruction_in when '1',
                       cached_instruction when others;

  update_output : process(clk)
  begin
    if rising_edge(clk) then
      if control_instruction_write = '1' then
        cached_instruction <= instruction_in;
      end if;
    end if;
  end process;

end Behavioral;

