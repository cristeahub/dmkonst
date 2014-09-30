library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

package test_utils is
	procedure assert_equals(expected : std_logic_vector(31 downto 0); received : std_logic_vector(31 downto 0); message : string);
  procedure assert_equals(expected : signed(31 downto 0); received : signed(31 downto 0); message : string);
end;

package body test_utils is
	procedure assert_equals(
		expected : std_logic_vector(31 downto 0);
		received : std_logic_vector(31 downto 0);
		message : string) is
	begin
		assert expected = received
				report message;
	end;

  procedure assert_equals(
		expected : signed(31 downto 0);
		received : signed(31 downto 0);
		message : string) is
	begin
		assert expected = received
				report message;
	end;
end;
