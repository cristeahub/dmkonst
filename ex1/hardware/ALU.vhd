library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( operand_a_in : in  signed (31 downto 0);
           operand_b_in : in  signed (31 downto 0);
           alu_control_in : in  STD_LOGIC_VECTOR (3 downto 0);
           zero_out : out  STD_LOGIC;
           alu_result_out : out  signed (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
  
  alu_result_out <= operand_a_in;

end Behavioral;

