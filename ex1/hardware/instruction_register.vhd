library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_register is
    port ( clk : in  std_logic;
           mem_data_in : in  std_logic_vector (31 downto 0);
           control_ir_write_in : in  std_logic;
           instruction_opcode_out : out  std_logic_vector (31 downto 26);
           instruction_rs_out : out  std_logic_vector (25 downto 21);
           instruction_rt_out : out  std_logic_vector (20 downto 16);
           instruction_address_out : out  std_logic_vector (15 downto 0)
         );
end instruction_register;

architecture behavioral of instruction_register is
  signal temp : std_logic_vector(31 downto 0);
begin
  instruction_opcode_out <= temp(31 downto 26);
  instruction_rs_out <= temp(25 downto 21);
  instruction_rt_out <= temp(20 downto 16);
  instruction_address_out <= temp(15 downto 0);

  process (clk) is
  begin 
    if rising_edge(clk) then
      if control_ir_write_in = '1' then
        temp <= mem_data_in;
      end if;
    end if;
  end process;

end behavioral;
