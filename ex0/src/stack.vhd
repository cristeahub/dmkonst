library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.defs.all;

entity stack is
  
  generic (
    size : natural := 1024);            -- Maximum number of operands on stack

  port (
    clk       : in  std_logic;
    rst       : in  std_logic;
    value_in  : in  operand_t;
    push      : in  std_logic;
    pop       : in  std_logic;
    top       : out operand_t);

end entity stack;

architecture behavioural of stack is

  type stack_storage is array(size downto 0) of operand_t;

  signal sp : integer := 0;
  signal stack_mem : stack_storage := (others => (others => '0'));

begin  -- architecture behavioural

  process (rst, clk, push, pop) is
  begin
    if rising_edge(clk) then

      if rst = '1' then
        sp <= 0;
        top <= (others => '0');
      end if;
      
      if push = '1' then
        stack_mem(sp) <= value_in;
        sp <= sp + 1;
        top <= value_in;
      end if;
      
      if pop = '1' then
        if sp /= 0 then
          sp <= sp - 1;
        end if;

        if sp = 1 then
          top <= (others => '0');
        else
          top <= stack_mem(sp - 2);
        end if;
      end if;

    end if;
  end process;

end architecture behavioural;
