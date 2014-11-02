library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity control_unit is
  port (
         instruction_in : in  std_logic_vector (31 downto 26);
         processor_enable : in std_logic;

         -- Execution / adress calculation stage control lines
         reg_dst_out : out  std_logic;
         alu_op_out : out  std_logic_vector (1 downto 0);
         alu_src_out : out  std_logic;

         -- Memory access stage control lines
         branch_out : out std_logic;
         --mem_read_out : out std_logic;
         mem_write_out : out  std_logic;

         -- Write-back stage control lines
         reg_write_out : out  std_logic;
         mem_to_reg_out : out  std_logic;
         
         pc_jump_override_out : out  std_logic
       );
end control_unit;

architecture behavioral of control_unit is
begin

  process (instruction_in, processor_enable)
  begin
    -- Execution / adress calculation stage control lines
    reg_dst_out <= '0';
    alu_op_out <= "00";
    alu_src_out <= '0';

    -- Memory access stage control lines
    branch_out <= '0';
    --mem_read_out <= '0'; -- Our architecture does not have this one
    mem_write_out <= '0';

    -- Write-back stage control lines
    reg_write_out <= '0';
    mem_to_reg_out <= '0';
    
    -- Jump
    pc_jump_override_out <= '0';

    if processor_enable = '1' then
      case instruction_in is
        when R_TYPE =>
          reg_dst_out <= '1';
          alu_op_out <= "10";
          reg_write_out <= '1';
        when LW =>
          alu_src_out <= '1';
          --mem_read_out <= '1';
          reg_write_out <= '1';
          mem_to_reg_out <= '1';
        when SW =>
          alu_src_out <= '1';
          mem_write_out <= '1';
        when LUI =>
          alu_op_out <= "11";
          reg_write_out <= '1';
          alu_src_out <= '1';
        when BRANCH =>
          alu_op_out <= "01";
          branch_out <= '1';
        when JUMP =>
          pc_jump_override_out <= '1';
        when others =>
      -- yo
      end case;
    end if;

  end process;

end behavioral;
