library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity instruction_register is
    Port ( mem_data_in : in  STD_LOGIC_VECTOR (31 downto 0);
           control_ir_write_in : in  STD_LOGIC;
           instruction_opcode_out : out  STD_LOGIC_VECTOR (31 downto 26);
           instruction_rs_out : out  STD_LOGIC_VECTOR (25 downto 21);
           instruction_rt_out : out  STD_LOGIC_VECTOR (20 downto 16);
           instruction_address_out : out  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end instruction_register;

architecture Behavioral of instruction_register is

begin


end Behavioral;

