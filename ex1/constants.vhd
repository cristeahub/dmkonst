library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

package constants is
  constant R_TYPE : std_logic_vector(31 downto 26) := "000000";
  constant JUMP : std_logic_vector(31 downto 26) := "000010";
  constant LW : std_logic_vector(31 downto 26) := "100011";
  constant LUI : std_logic_vector(31 downto 26) := "001111";
  constant SW : std_logic_vector(31 downto 26) := "101011";
  constant BRANCH : std_logic_vector(31 downto 26) := "000100";

  type alu_control_t is ( ALU_CONTROL_ADD,
                          ALU_CONTROL_SUBTRACT,
                          ALU_CONTROL_AND,
                          ALU_CONTROL_OR,
                          ALU_CONTROL_SLT,
                          ALU_CONTROL_SLL,
                          ALU_CONTROL_SRL );

  constant ALU_FUNCTION_SLL : std_logic_vector(5 downto 0) := "000000";
  constant ALU_FUNCTION_SRL : std_logic_vector(5 downto 0) := "000010";
  constant ALU_FUNCTION_ADD : std_logic_vector(5 downto 0) := "100000";
  constant ALU_FUNCTION_SUBTRACT : std_logic_vector(5 downto 0) := "100010";
  constant ALU_FUNCTION_AND : std_logic_vector(5 downto 0) := "100100";
  constant ALU_FUNCTION_OR : std_logic_vector(5 downto 0) := "100101";
  constant ALU_FUNCTION_SLT : std_logic_vector(5 downto 0) := "101010";
  
  type state_t is ( IDLE,
                    INSTRUCTION_FETCH,
                    INSTRUCTION_DECODE,
                    EXECUTION,
                    BRANCH_COMPLETION,
                    JUMP_COMPLETION,
                    R_TYPE_COMPLETION,
                    MEMORY_ADDRESS_COMPUTATION,
                    MEMORY_ACCESS_READ,
                    MEMORY_ACCESS_WRITE,
                    LOAD_UPPER_IMMEDIATE_COMPUTATION,
                    LOAD_UPPER_IMMEDIATE_COMPLETION,
                    WRITE_BACK );
  
end package constants;
