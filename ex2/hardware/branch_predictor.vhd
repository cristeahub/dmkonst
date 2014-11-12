library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_misc.all;

entity branch_predictor is
  Generic (
            ADDR_WIDTH : integer := 8;
            DATA_WIDTH : integer := 32);
  Port ( -- In ports
         clk, reset : in std_logic;
         branch_taken_in : in std_logic;
         update_prediction_in : in std_logic;

         -- Hazard detection signals
         registers_read_data_rs_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
         registers_read_data_rt_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);

         if_id_rs_in : in std_logic_vector(4 downto 0);
         if_id_rt_in : in std_logic_vector(4 downto 0);
         id_ex_rd_in : in std_logic_vector(4 downto 0);
         id_ex_reg_write_in : in std_logic;
         ex_mem_rd_in :  in std_logic_vector(4 downto 0);
         ex_mem_reg_write_in : in std_logic;

         -- Out ports
         branch_taken_out : out std_logic
       );
end branch_predictor;

architecture Behavioral of branch_predictor is
  signal should_predict : std_logic;
  signal two_bit_prediction : std_logic;
  signal rs_rt_equal : std_logic;
begin

  rs_rt_equal <= and_reduce(registers_read_data_rs_in xnor registers_read_data_rt_in);

  two_bit_predictor: entity work.two_bit_predictor
  port map (
             clk => clk, reset => reset,
             branch_taken_in => branch_taken_in,
             update_prediction_in => update_prediction_in,

             branch_taken_out => two_bit_prediction);


  with should_predict select
    branch_taken_out <= two_bit_prediction when '1',
                        rs_rt_equal when others;

  -- Test for data hazards from ex and mem stages.
  -- If any hazards could occur, use prediction instead.
  branch_prediction: process(if_id_rs_in, if_id_rt_in, id_ex_rd_in, id_ex_reg_write_in, ex_mem_rd_in, ex_mem_reg_write_in) begin

    -- Default to explicit calculation
    should_predict <= '0';

    -- Test id/ex
    if id_ex_reg_write_in = '1' and id_ex_rd_in /= "00000" then
      if if_id_rs_in = id_ex_rd_in or if_id_rt_in = id_ex_rd_in then
        should_predict <= '1';
      end if;
    end if;

    -- Test ex/mem
    if ex_mem_reg_write_in = '1' and ex_mem_rd_in /= "00000" then
      if if_id_rs_in = ex_mem_rd_in or if_id_rt_in = ex_mem_rd_in then
        should_predict <= '1';
      end if;
    end if;

  end process; -- branch_prediction

end Behavioral;
