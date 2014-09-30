library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

package constants is
	constant R_TYPE : std_logic_vector(31 downto 26) := "000000";
	constant JUMP : std_logic_vector(31 downto 26) := "000010";
	constant LW : std_logic_vector(31 downto 26) := "100011";
	constant SW : std_logic_vector(31 downto 26) := "101011";
	constant BRANCH : std_logic_vector(31 downto 26) := "000100";

  constant ALU_CONTROL_ADD : std_logic_vector(3 downto 0) := "0010";
  constant ALU_CONTROL_SUBTRACT : std_logic_vector(3 downto 0) := "0110";
  constant ALU_CONTROL_AND : std_logic_vector(3 downto 0) := "0000";
  constant ALU_CONTROL_OR : std_logic_vector(3 downto 0) := "0001";
  constant ALU_CONTROL_SLT : std_logic_vector(3 downto 0) := "0111";
end package constants;