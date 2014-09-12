library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.defs.all;

entity control is
  
  port (
    clk : in std_logic;
    rst : in std_logic;

    -- Communication
    instruction      : in  instruction_t;
    empty            : in  std_logic;
    read_instruction : out std_logic;

    -- Stack control
    push               : out std_logic;
    pop                : out std_logic;
    stack_input_select : out stack_input_select_t;
    operand            : out operand_t;

    -- ALU control
    operand_a_wen : out std_logic;
    operand_b_wen : out std_logic;
    alu_operation : out alu_operation_t);


end entity control;

architecture behavioural of control is

  type state_t is (IDLE, FETCH, DECODE, PUSH_OPERAND, POP_B, POP_A, COMPUTE, PUSH_RESULT);
  signal state : state_t;

begin  -- architecture behavioural

  process (state) is
  begin
    read_instruction <= '0';
    operand_b_wen <= '0';
    operand_a_wen <= '0';
    pop <= '0';
    push <= '0';
    
    case state is
      when FETCH =>
        read_instruction <= '1';
			when PUSH_OPERAND =>
				stack_input_select <= STACK_INPUT_OPERAND;
				push <= '1';
        operand <= instruction(7 downto 0);
      when others =>
        -- loll
    end case;
    
  end process;

  process (rst, clk) is
  begin
    if rst = '1' then
      state <= IDLE;
    elsif rising_edge(clk) then
      case state is
        when IDLE =>
          if empty = '0' then
            state <= FETCH;
          end if;
				when FETCH =>
					state <= DECODE;
				when DECODE =>
					if instruction(15 downto 8) = x"00" then
            state <= PUSH_OPERAND;
          else
            --state <= PUSH_OPERAND;
          end if;
				when others =>
          -- moar loll
      end case;
    end if;  
  end process;

end architecture behavioural;
