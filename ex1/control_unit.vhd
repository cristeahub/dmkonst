library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
    Port ( Instruction : in  STD_LOGIC_VECTOR (31 downto 26);
           RegDst : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_VECTOR (1 downto 0);
           MemWrite : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC);
end control_unit;

architecture Behavioral of control_unit is

begin

  --code

end Behavioral;