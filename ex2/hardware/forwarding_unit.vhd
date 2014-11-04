library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity forwarding_unit is
    Port ( inst_rs_in : in  STD_LOGIC_VECTOR (4 downto 0);
           inst_rt_in : in  STD_LOGIC_VECTOR (4 downto 0);
           addr_ex_mem_in : in  STD_LOGIC_VECTOR (4 downto 0);
           addr_mem_wb_in : in  STD_LOGIC_VECTOR (4 downto 0);
           control_ex_mem_in : in  STD_LOGIC;
           control_mem_wb_in : in  STD_LOGIC;
           forward_rs_out : out  STD_LOGIC_VECTOR(1 downto 0);
           forward_rt_out : out  STD_LOGIC_VECTOR(1 downto 0);
end forwarding_unit;

architecture Behavioral of forwarding_unit is

begin


end Behavioral;

