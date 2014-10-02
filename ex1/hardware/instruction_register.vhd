library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_register is
    port ( clk : in  std_logic;
           reset : in  std_logic;
           mem_data_in : in  std_logic_vector (31 downto 0);
           control_ir_write_in : in  std_logic;
           instruction_opcode_out : out  std_logic_vector (31 downto 26);
           instruction_rs_out : out  std_logic_vector (25 downto 21);
           instruction_rt_out : out  std_logic_vector (20 downto 16);
           instruction_address_out : out  std_logic_vector (15 downto 0)
         );
end instruction_register;

architecture behavioral of instruction_register is

begin

  process (reset, clk) is
  begin
    if rising_edge(clk) then
      if reset = '1' then
        instruction_opcode_out <= (others => '0');
        instruction_rs_out <= (others => '0');
        instruction_rt_out <= (others => '0');
        instruction_address_out <= (others => '0');
      end if;

      if control_ir_write_in = '1' then
        instruction_opcode_out <= mem_data_in(31 downto 26);
        instruction_rs_out <= mem_data_in(25 downto 21);
        instruction_rt_out <= mem_data_in(20 downto 16);
        instruction_address_out <= mem_data_in(15 downto 0);
      end if;
    end if;
  end process;

end behavioral;
