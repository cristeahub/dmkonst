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
    variable v_sp : integer := 0;
  begin
    if rising_edge(clk) then
      v_sp := sp;
      
      if rst = '1' then
        v_sp := 0;
        top <= (others => '0');
      end if;
      
      if push = '1' then
        stack_mem(v_sp) <= value_in;
        top <= value_in;
        v_sp := v_sp + 1;
      end if;
      
      if pop = '1' then
        if v_sp /= 0 then
          v_sp := v_sp - 1;
        end if;

        if v_sp = 0 then
          top <= (others => '0');
        else
          top <= stack_mem(v_sp - 1);
        end if;
      end if;
      
      sp <= v_sp;
    end if; -- rising edge
    
  end process;

end architecture behavioural;
