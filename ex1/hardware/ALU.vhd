library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.constants.all;

entity ALU is
  Port ( operand_a_in : in  std_logic_vector (31 downto 0);
         operand_b_in : in  std_logic_vector (31 downto 0);
         shamt_in : in std_logic_vector (4 downto 0);
         alu_control_in : in alu_control_t;
         zero_out : out  STD_LOGIC;
         alu_result_out : out  std_logic_vector (31 downto 0));
end ALU;

architecture Behavioral of ALU is
begin
  process (operand_a_in, operand_b_in, alu_control_in, shamt_in)
    variable alu_result : signed (31 downto 0);
  begin
    zero_out <= '0';

    case alu_control_in is
      when ALU_CONTROL_ADD =>
        alu_result := signed(operand_a_in) + signed(operand_b_in);
      when ALU_CONTROL_SUBTRACT =>
        alu_result := signed(operand_a_in) - signed(operand_b_in);
      when ALU_CONTROL_AND =>
        alu_result := signed(operand_a_in) and signed(operand_b_in);
      when ALU_CONTROL_OR =>
        alu_result := signed(operand_a_in) or signed(operand_b_in);
      when ALU_CONTROL_SLT =>
        if signed(operand_a_in) < signed(operand_b_in) then
          alu_result := x"00000001";
        else
          alu_result := x"00000000";
        end if;
      when ALU_CONTROL_SLL =>
        alu_result := signed(shift_left(unsigned(operand_b_in), to_integer(unsigned(shamt_in))));
      when ALU_CONTROL_SRL =>
        alu_result := signed(shift_right(unsigned(operand_b_in), to_integer(unsigned(shamt_in))));
    end case;

    if alu_result = x"00000000" then
      zero_out <= '1';
    end if;

    alu_result_out <= std_logic_vector(alu_result);
  end process;

end Behavioral;

