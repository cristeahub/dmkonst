library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;

entity alu_control is
    Port ( alu_function_in : in  STD_LOGIC_VECTOR (5 downto 0);
           control_alu_op : in  STD_LOGIC_VECTOR (1 downto 0);
           alu_control_out : out alu_control_t);
end alu_control;

architecture Behavioral of alu_control is
  signal r_type_alu_control : alu_control_t;
begin

  with alu_function_in select
    r_type_alu_control <= ALU_CONTROL_ADD when ALU_FUNCTION_ADD,
                          ALU_CONTROL_SUBTRACT when ALU_FUNCTION_SUBTRACT,
                          ALU_CONTROL_AND when ALU_FUNCTION_AND,
                          ALU_CONTROL_OR when ALU_FUNCTION_OR,
                          ALU_CONTROL_SLT when ALU_FUNCTION_SLT,
                          ALU_CONTROL_SLL when ALU_FUNCTION_SLL,
                          ALU_CONTROL_SRL when ALU_FUNCTION_SRL,
                          ALU_CONTROL_ADD when others; -- Should be replaced with a passthrough instruction.

  with control_alu_op select
    alu_control_out <= ALU_CONTROL_ADD when "00",
                       ALU_CONTROL_SUBTRACT when "01",
                       ALU_CONTROL_SLL when "11",
                       r_type_alu_control when others;

end Behavioral;

