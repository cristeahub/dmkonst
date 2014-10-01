library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.constants.all;

entity ALU is
  Port ( operand_a_in : in  signed (31 downto 0);
         operand_b_in : in  signed (31 downto 0);
         alu_control_in : in  STD_LOGIC_VECTOR (3 downto 0);
         zero_out : out  STD_LOGIC;
         alu_result_out : out  signed (31 downto 0));
end ALU;

architecture Behavioral of ALU is
begin
  process (operand_a_in, operand_b_in, alu_control_in)
    variable alu_result : signed (31 downto 0);
  begin
    zero_out <= '0';
    case alu_control_in is
      when ALU_CONTROL_ADD =>
        alu_result := operand_a_in + operand_b_in;
      when ALU_CONTROL_SUBTRACT =>
        alu_result := operand_a_in - operand_b_in;
      when ALU_CONTROL_AND =>
        alu_result := operand_a_in and operand_b_in;
      when ALU_CONTROL_OR =>
        alu_result := operand_a_in or operand_b_in;
      when ALU_CONTROL_SLT =>
        if operand_a_in < operand_b_in then
          alu_result := x"00000001";
        else
          alu_result := x"00000000";
        end if;
      when others =>
        -- yo
    end case;
    if alu_result = x"00000000" then
      zero_out <= '1';
    end if;
    alu_result_out <= alu_result;
  end process;

end Behavioral;

