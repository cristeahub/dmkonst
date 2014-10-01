library ieee;
use ieee.std_logic_1164.all;
use work.test_util.all;
--use ieee.numeric_std.all;

entity tb_memory_unit is
end tb_memory_unit;

architecture behavior of tb_memory_unit is 

  -- component declaration for the unit under test (uut)
  component memory_unit
    port(
          control_i_or_d : in  std_logic;
          control_mem_read : in  std_logic;
          control_mem_write : in  std_logic;
          pc_in : in  std_logic_vector(31 downto 0);
          alu_out_in : in  std_logic_vector(31 downto 0);
          mem_data_out : out  std_logic_vector(31 downto 0);
          write_data_in : in std_logic_vector(31 downto 0);
          clk : in  std_logic;
          reset : in  std_logic;
          imem_data_in : in  std_logic_vector(31 downto 0);
          imem_address_out : out  std_logic_vector(7 downto 0);
          dmem_data_in : in  std_logic_vector(31 downto 0);
          dmem_address_out : out  std_logic_vector(7 downto 0);
          dmem_data_out : out  std_logic_vector(31 downto 0);
          dmem_write_enable_out : out  std_logic
        );
  end component;

  --inputs
  signal control_i_or_d : std_logic := '0';
  signal control_mem_read : std_logic := '0';
  signal control_mem_write : std_logic := '0';
  signal pc_in : std_logic_vector(31 downto 0) := (others => '0');
  signal alu_out_in : std_logic_vector(31 downto 0) := (others => '0');
  signal write_data_in : std_logic_vector(31 downto 0) := (others => '0');
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal imem_data_in : std_logic_vector(31 downto 0) := (others => '0');
  signal dmem_data_in : std_logic_vector(31 downto 0) := (others => '0');

  --outputs
  signal mem_data_out : std_logic_vector(31 downto 0);
  signal imem_address_out : std_logic_vector(7 downto 0);
  signal dmem_address_out : std_logic_vector(7 downto 0);
  signal dmem_data_out : std_logic_vector(31 downto 0);
  signal dmem_write_enable_out : std_logic;

  -- clock period definitions
  constant clk_period : time := 10 ns;

begin

  -- instantiate the unit under test (uut)
  uut: memory_unit port map (
                              control_i_or_d => control_i_or_d,
                              control_mem_read => control_mem_read,
                              control_mem_write => control_mem_write,
                              pc_in => pc_in,
                              alu_out_in => alu_out_in,
                              mem_data_out => mem_data_out,
                              write_data_in => write_data_in,
                              clk => clk,
                              reset => reset,
                              imem_data_in => imem_data_in,
                              imem_address_out => imem_address_out,
                              dmem_data_in => dmem_data_in,
                              dmem_address_out => dmem_address_out,
                              dmem_data_out => dmem_data_out,
                              dmem_write_enable_out => dmem_write_enable_out
                            );

  -- clock process definitions
  clk_process :process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;


  -- stimulus process
  stim_proc: process
  begin		
    -- hold reset state for 100 ns.
    wait for 100 ns;

    wait for clk_period*10;

    -- read from memory
    control_i_or_d <= '1';
    control_mem_read <= '1';
    alu_out_in <= x"abbababb";
    dmem_data_in <= x"cafebabe";
    wait for clk_period;
    assert_equals(x"cafebabe", mem_data_out, "Testing memory read data correctly");
    assert_equals(x"bb", dmem_address_out, "Testing memory address correctly");
    wait for clk_period*10;

    -- read instruction
    control_i_or_d <= '0';
    pc_in <= x"decec00c";
    imem_data_in <= x"ccccdddd";
    wait for clk_period;
    assert_equals(x"ccccdddd", mem_data_out, "Testing instruction data out");
    assert_equals(x"0c", imem_address_out, "Testing memory address correctly");
    wait for clk_period*10;

    -- write data
    control_i_or_d <= '1';
    control_mem_write <= '1';
    alu_out_in <= x"00000011";
    write_data_in <= x"dd00dd00";
    wait for clk_period;
    assert_equals(x"dd00dd00", dmem_data_out, "Testing write data");
    assert_equals(x"11", dmem_address_out, "Testing write address data");
    wait for clk_period*10;

    wait;
  end process;

end;
