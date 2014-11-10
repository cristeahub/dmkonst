library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity branch_address_calculator is
    Generic (
              ADDR_WIDTH : integer := 8);
    Port ( old_pc_in : in  STD_LOGIC_VECTOR (ADDR_WIDTH -1 downto 0);
           instruction_immediate_in : in  STD_LOGIC_VECTOR (ADDR_WIDTH -1 downto 0);
           branch_taken_in : std_logic;

           branch_address_out : out  STD_LOGIC_VECTOR (ADDR_WIDTH -1 downto 0);
           branch_address_not_taken_out : out std_logic_vector (ADDR_WIDTH - 1 downto 0));
end branch_address_calculator;

architecture Behavioral of branch_address_calculator is
  signal incremented_pc : std_logic_vector(ADDR_WIDTH - 1 downto 0);
  signal branch_address_out_internal : std_logic_vector(ADDR_WIDTH - 1 downto 0);
begin

  incremented_pc <= std_logic_vector(unsigned(old_pc_in) + 1);

  -- We forward the not selected pc for correction further down the pipeline
  branch_address_out_internal <= std_logic_vector(unsigned(incremented_pc) + unsigned(instruction_immediate_in));

  with branch_taken_in select
    branch_address_not_taken_out <= incremented_pc when '1',
                                    branch_address_out_internal when others;

  branch_address_out <= branch_address_out_internal;

end Behavioral;

