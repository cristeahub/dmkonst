library ieee;
use ieee.std_logic_1164.all;
use work.constants.all;

entity control_unit is
  port ( 
         clk : in std_logic;
         reset : in std_logic;
         instruction_in : in  std_logic_vector (31 downto 26);
         processor_enable : in std_logic;

         ir_write : out std_logic;
         i_or_d : out std_logic;
         pc_write : out std_logic;
         pc_write_cond : out std_logic;
         pc_source : out std_logic_vector (1 downto 0);
         mem_read : out  std_logic;
         mem_to_reg : out  std_logic;
         alu_op : out  std_logic_vector (1 downto 0);
         mem_write : out  std_logic;
         alu_src_a : out  std_logic;
         alu_src_b : out  std_logic_vector (1 downto 0);
         reg_write : out  std_logic;
         reg_dst : out  std_logic);
end control_unit;

architecture behavioral of control_unit is

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
                    WRITE_BACK );
  signal state : state_t;

begin

  process (state) is
  begin
    mem_read <= '0';
    alu_src_a <= '0';
    i_or_d <= '0';
    ir_write <= '0';
    alu_src_b <= "00";
    alu_op <= "00";
    mem_write <= '0';
    reg_write <= '0';
    reg_dst <= '0';
    mem_to_reg <= '0';
    pc_source <= "00";
    pc_write_cond <= '0';
    pc_write <= '0';

    case state is
      when IDLE =>
        -- yo
      when INSTRUCTION_FETCH =>
        alu_src_b <= "01";
        mem_read <= '1';
        ir_write <= '1';
        pc_write <= '1';
      when INSTRUCTION_DECODE =>
        alu_src_b <= "11";
      when JUMP_COMPLETION =>
        pc_write <= '1';
        pc_source <= "10";
      when BRANCH_COMPLETION =>
        alu_src_a <= '1';
        alu_src_b <= "00";
        alu_op <= "01";
        pc_write_cond <= '1';
        pc_source <= "01";
      when EXECUTION =>
        alu_src_a <= '1';
        alu_op <= "10";
      when R_TYPE_COMPLETION =>
        reg_dst <= '1';
        reg_write <= '1';
      when MEMORY_ADDRESS_COMPUTATION =>
        alu_src_a <= '1';
        alu_src_b <= "10";
      when MEMORY_ACCESS_READ =>
        mem_read <= '1';
        i_or_d <= '1';
      when WRITE_BACK =>
        reg_write <= '1';
        mem_to_reg <= '1';
      when MEMORY_ACCESS_WRITE =>
        mem_write <= '1';
        i_or_d <= '1';
    end case;

  end process;


  process (reset, clk, processor_enable) is
  begin
    if reset = '1' then
      state <= IDLE;
    elsif rising_edge(clk) and processor_enable = '1' then
      case state is
        when IDLE =>
          state <= INSTRUCTION_FETCH;
        when INSTRUCTION_FETCH =>
          state <= INSTRUCTION_DECODE;
        when INSTRUCTION_DECODE =>
          case instruction_in is
            when LW =>
              state <= MEMORY_ADDRESS_COMPUTATION;
            when SW =>
              state <= MEMORY_ADDRESS_COMPUTATION;
            when R_TYPE =>
              state <= EXECUTION;
            when BRANCH =>
              state <= BRANCH_COMPLETION;
            when JUMP =>
              state <= JUMP_COMPLETION;
            when others =>
          -- yo
          end case;
        when EXECUTION =>
          state <= R_TYPE_COMPLETION;
        when MEMORY_ADDRESS_COMPUTATION =>
          case instruction_in is
            when LW =>
              state <= MEMORY_ACCESS_READ;
            when SW =>
              state <= MEMORY_ACCESS_WRITE;
            when others =>
          -- yo
          end case;
        when MEMORY_ACCESS_READ =>
          state <= WRITE_BACK;
        when others =>
          -- jump_completion
          -- branch_completion
          -- r_type_completion
          -- memory_access_write
          -- write_back
          state <= INSTRUCTION_FETCH;
      end case;
    end if;
  end process;

end behavioral;
