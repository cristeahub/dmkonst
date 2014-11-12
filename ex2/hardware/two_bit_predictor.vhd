library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity two_bit_predictor is
  Port ( -- In ports
         clk, reset : in std_logic;
         branch_taken_in : in std_logic;
         update_prediction_in : in std_logic;

         -- Out ports
         branch_taken_out : out std_logic
       );
end two_bit_predictor;

architecture Behavioral of two_bit_predictor is

  type state_t is ( STRONGLY_NOT_TAKEN,
                    WEAKLY_NOT_TAKEN,
                    WEAKLY_TAKEN,
                    STRONGLY_TAKEN );
  signal state : state_t;

begin

  predict: process (state) begin
    case state is
      when STRONGLY_TAKEN | WEAKLY_TAKEN =>
        branch_taken_out <= '1';
      when STRONGLY_NOT_TAKEN | WEAKLY_NOT_TAKEN =>
        branch_taken_out <= '0';
    end case;
  end process; -- predict

  update_prediction: process (clk, update_prediction_in, reset) begin
    if reset = '1' then
      state <= STRONGLY_NOT_TAKEN;
    elsif rising_edge(clk) and update_prediction_in = '1' then
      if branch_taken_in = '1' then
        case state is
          when STRONGLY_TAKEN =>
            state <= STRONGLY_TAKEN;
          when WEAKLY_TAKEN =>
            state <= STRONGLY_TAKEN;
          when WEAKLY_NOT_TAKEN =>
            state <= WEAKLY_TAKEN;
          when STRONGLY_NOT_TAKEN =>
            state <= WEAKLY_NOT_TAKEN;
        end case;
      else
        case state is
          when STRONGLY_TAKEN =>
            state <= WEAKLY_TAKEN;
          when WEAKLY_TAKEN =>
            state <= WEAKLY_NOT_TAKEN;
          when WEAKLY_NOT_TAKEN =>
            state <= STRONGLY_NOT_TAKEN;
          when STRONGLY_NOT_TAKEN =>
            state <= STRONGLY_NOT_TAKEN;
        end case;
      end if;
    end if;
  end process; -- update_prediction

end Behavioral;
