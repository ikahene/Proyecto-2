library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity BUZZER is
    Port (clk: in std_logic;
          TONO: in unsigned(19 downto 0); --Frecuencia que recibe desde la ram
          BTN_JY: in std_logic;
          BTN0: in std_logic;
          BTN1: in std_logic;
          LEDS: out std_logic_vector (3 downto 0);
          BUZZER_PWM: out std_logic
    );
end BUZZER;

architecture Behavioral of BUZZER is
signal DUTY_CYCLE : unsigned(19 downto 0);
signal counter_PWM : unsigned(19 downto 0);
   
begin
	-- Add user logic here
	DUTY_CYCLE <= shift_right(TONO, 1);
    process (clk)
    begin
    IF (rising_edge(clk)) then
        IF (BTN_JY = '0') then
            counter_PWM <= (others => '0');
        ELSE 
            if (counter_PWM >= TONO) then
                counter_PWM <= (others => '0'); 
            else
                counter_PWM <= counter_PWM + 1;
            end if;
        END IF;
    END IF;
    END PROCESS;
BUZZER_PWM <= '1' when (counter_PWM < DUTY_CYCLE) else
              '0';
           
LEDS <= b"1111" when (BTN_JY = '1') else
        b"0000";
         
end Behavioral;
