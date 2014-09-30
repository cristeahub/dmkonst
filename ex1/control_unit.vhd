library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;

entity control_unit is
    Port ( 
						clk : in std_logic;
						reset : in std_logic;
						Instruction : in  STD_LOGIC_VECTOR (31 downto 26);
						
						IRWrite : out STD_LOGIC;
						IorD : out STD_LOGIC;
						PCWrite : out STD_LOGIC;
						PCWriteCond : out STD_LOGIC;
						PCSource : out STD_LOGIC_VECTOR (1 downto 0);
						MemRead : out  STD_LOGIC;
						MemtoReg : out  STD_LOGIC;
						ALUOp : out  STD_LOGIC_VECTOR (1 downto 0);
						MemWrite : out  STD_LOGIC;
						ALUSrcA : out  STD_LOGIC;
						ALUSrcB : out  STD_LOGIC_VECTOR (1 downto 0);
						RegWrite : out  STD_LOGIC;
						RegDst : out  STD_LOGIC);
end control_unit;

architecture Behavioral of control_unit is

type state_t is ( INSTRUCTION_FETCH,
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
		MemRead <= '0';
		ALUSrcA <= '0';
		IorD <= '0';
		IRWrite <= '0';
		ALUSrcB <= "00";
		ALUOp <= "00";
		MemWrite <= '0';
		RegWrite <= '0';
		RegDst <= '0';
		MemToReg <= '0';
		PCSource <= "00";
		PCWriteCond <= '0';
		PCWrite <= '0';
		
		case state is
			when INSTRUCTION_FETCH =>
				ALUSrcB <= "01";
				MemRead <= '1';
				IRWrite <= '1';
				PCWrite <= '1';
			when INSTRUCTION_DECODE =>
				ALUSrcB <= "11";
			when JUMP_COMPLETION =>
				PCWrite <= '1';
				PCSource <= "10";
			when BRANCH_COMPLETION =>
				ALUSrcA <= '1';
				ALUSrcB <= "00";
				ALUOp <= "01";
				PCWriteCond <= '1';
				PCSource <= "01";
			when EXECUTION =>
				ALUSrcA <= '1';
				ALUOp <= "10";
			when R_TYPE_COMPLETION =>
				RegDst <= '1';
				RegWrite <= '1';
			when MEMORY_ADDRESS_COMPUTATION =>
				ALUSrcA <= '1';
				ALUSrcB <= "10";
			when MEMORY_ACCESS_READ =>
				MemRead <= '1';
				IorD <= '1';
			when WRITE_BACK =>
				RegWrite <= '1';
				MemToReg <= '1';
			when MEMORY_ACCESS_WRITE =>
				MemWrite <= '1';
				IorD <= '1';
		end case;

end process;


process (reset, clk) is
begin

	if reset = '1' then
		state <= INSTRUCTION_FETCH;
	elsif rising_edge(clk) then
		case state is
			when INSTRUCTION_FETCH =>
				state <= INSTRUCTION_DECODE;
			when INSTRUCTION_DECODE =>
				case Instruction is
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
				end case;
			when EXECUTION =>
				state <= R_TYPE_COMPLETION;
			when MEMORY_ADDRESS_COMPUTATION =>
				case Instruction is
					when LW =>
						state <= MEMORY_ACCESS_READ;
					when SW =>
						state <= MEMORY_ACCESS_WRITE;
				end case;
			when MEMORY_ACCESS_READ =>
				state <= WRITE_BACK;
			when others =>
				-- JUMP_COMPLETION
				-- BRANCH_COMPLETION
				-- R_TYPE_COMPLETION
				-- MEMORY_ACCESS_WRITE
				-- WRITE_BACK
				state <= INSTRUCTION_FETCH;
		end case;
	end if;

end process;

end Behavioral;