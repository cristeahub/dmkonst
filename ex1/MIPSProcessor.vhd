-- Part of TDT4255 Computer Design laboratory exercises
-- Group for Computer Architecture and Design
-- Department of Computer and Information Science
-- Norwegian University of Science and Technology

-- MIPSProcessor.vhd
-- The MIPS processor component to be used in Exercise 1 and 2.

-- TODO replace the architecture DummyArch with a working Behavioral

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MIPSProcessor is
  generic (
            ADDR_WIDTH : integer := 8;
            DATA_WIDTH : integer := 32
          );
  port (
  clk, reset 				: in std_logic;
  processor_enable		: in std_logic;
  imem_data_in			: in std_logic_vector(DATA_WIDTH-1 downto 0);
  imem_address			: out std_logic_vector(ADDR_WIDTH-1 downto 0);
  dmem_data_in			: in std_logic_vector(DATA_WIDTH-1 downto 0);
  dmem_address			: out std_logic_vector(ADDR_WIDTH-1 downto 0);
  dmem_data_out			: out std_logic_vector(DATA_WIDTH-1 downto 0);
  dmem_write_enable		: out std_logic
);
end MIPSProcessor;

architecture Behavioral of MIPSProcessor is

    -- PC signals
    signal pc_in : std_logic_vector(31 downto 0);
    signal pc_out : std_logic_vector(31 downto 0);
    signal write_enable_in : std_logic;

    -- Control signals
    signal Instruction : std_logic_vector(31 downto 26);
    signal IRWrite : std_logic;
    signal IorD : std_logic;
    signal PCWrite : std_logic;
    signal PCWriteCond : std_logic;
    signal PCSource : std_logic_vector(1 downto 0);
    signal MemRead : std_logic;
    signal MemtoReg : std_logic;
    signal ALUOp : std_logic_vector(1 downto 0);
    signal MemWrite : std_logic;
    signal ALUSrcA : std_logic;
    signal ALUSrcB : std_logic_vector(1 downto 0);
    signal RegWrite : std_logic;
    signal RegDst : std_logic;

    -- Memory unit signals
    signal mem_data_out : std_logic_vector(31 downto 0);

    -- ALU signals
    signal operand_a : std_logic_vector(31 downto 0);
    signal operand_b : std_logic_vector(31 downto 0);
    signal alu_result_zero : std_logic;
    signal alu_control : std_logic_vector(3 downto 0);
    signal alu_result_out : std_logic_vector(31 downto 0);

begin

  ALU: entity work.ALU
  Port map (
             operand_a_in => operand_a,
             operand_b_in => operand_b,
             alu_control_in => alu_control,
             zero_out => alu_result_zero,
             alu_result_out => alu_result_out);

  memory_unit: entity work.memory_unit
  Port map (
             clk => clk, reset => reset,
             control_i_or_d => IorD,
             control_mem_read => MemRead,
             control_mem_write => MemWrite,
             pc_in => pc_out,
             alu_out_in => alu_result_out,
             mem_data_out => mem_data_out,
             imem_data_in => imem_data_in,
             imem_address_out => imem_address,
             dmem_data_in => dmem_data_in,
             dmem_data_out => dmem_data_out,
             dmem_address_out => dmem_address,
             dmem_write_enable_out => dmem_write_enable);

  pc: entity work.pc
  Port map (
             clk => clk,
             write_enable_in => write_enable_in,
             pc_in => pc_in,
             pc_out => pc_out);

  control_unit: entity work.control_unit
  Port map (
             clk => clk,
             reset => reset,
             Instruction => Instruction,
             IRWrite => IRWrite,
             IorD => IorD,
             PCWrite => PCWrite,
             PCWriteCond => PCWriteCond,
             PCSource => PCSource,
             MemRead => MemRead,
             MemtoReg => MemtoReg,
             ALUOp => ALUOp,
             MemWrite => MemWrite,
             ALUSrcA => ALUSrcA,
             ALUSrcB => ALUSrcB,
             RegWrite => RegWrite,
             RegDst => RegDst);

end Behavioral;

