library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

package test_utils is
	procedure assert_equals(expected : std_logic_vector; received : std_logic_vector; message : string);
end;

package body test_utils is
	procedure assert_equals(
		expected : std_logic_vector;
		received : std_logic_vector;
		message : string) is
	begin
		assert expected = received
				report message;
	end;
end;
