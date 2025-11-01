library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity CANDYMAN_FSM is
    Port(
        clk: in std_logic;
        rst: in std_logic;
        frecuencia_out: out unsigned(19 downto 0) := (others => '0')
    );
end CANDYMAN_FSM;

architecture Behavioral of CANDYMAN_FSM is
    -- Frecuencias para 35 notas
    type ram_frecuencia_array is array (0 to 35) of unsigned (19 downto 0);
    constant PAUSA : unsigned(19 downto 0) := to_unsigned(1, 20);    
    signal frec_data: ram_frecuencia_array := (
        -- C5-D5-Eb5-D5-C5-[Pausa]-C5-B4-[Pausa]
        -- Patrón C5-D5-Eb5-D5-C5-[Pausa]-C5-Ab5-[Pausa]
        0 => X"5F5E4", 1 => X"5452D", 2 => X"4C783", 3 => X"5452D", 4 => X"5F5E4", 5 => PAUSA, 
        6 => X"5F5E4", 7 => X"62D55", 8 => PAUSA, 9 => X"5F5E4", 10 => X"5452D", 
        11 => X"4C783", 12 => X"5452D", 13 => X"5F5E4", 14 => PAUSA, 15 => X"5F5E4", 
        16 => X"3A268", 17 => PAUSA, 18 => X"5F5E4", 19 => X"5452D", 20 => X"4C783", 
        21 => X"5452D", 22 => X"5F5E4", 23 => PAUSA, 24 => X"5F5E4", 25 => X"62D55", 
        26 => PAUSA, 27 => X"5F5E4", 28 => X"5452D", 29 => X"4C783", 30 => X"5452D", 
        31 => X"5F5E4", 32 => PAUSA, 33 => X"5F5E4", 34 => X"3A268", 35 => PAUSA
    );
    
    -- Duracion notas
    type ram_duracion_array is array (0 to 35) of unsigned (4 downto 0);
    signal duracion_data: ram_duracion_array := (
        -- Valores decimales: 5, 5, 5, 5, 15, 10, 5, 20, 15
        0 => to_unsigned(2, 5), 1 => to_unsigned(2, 5), 2 => to_unsigned(2, 5), 3 => to_unsigned(2, 5), 4 => to_unsigned(15, 5), 5 => to_unsigned(10, 5), 
        6 => to_unsigned(5, 5), 7 => to_unsigned(25, 5), 8 => to_unsigned(20, 5), 9 => to_unsigned(2, 5), 10 => to_unsigned(2, 5), 
        11 => to_unsigned(2, 5), 12 => to_unsigned(2, 5), 13 => to_unsigned(15, 5), 14 => to_unsigned(10, 5), 15 => to_unsigned(5, 5), 
        16 => to_unsigned(25, 5), 17 => to_unsigned(20, 5), 18 => to_unsigned(2, 5), 19 => to_unsigned(2, 5), 20 => to_unsigned(2, 5), 
        21 => to_unsigned(2, 5), 22 => to_unsigned(15, 5), 23 => to_unsigned(10, 5), 24 => to_unsigned(5, 5), 25 => to_unsigned(25, 5), 
        26 => to_unsigned(20, 5), 27 => to_unsigned(2, 5), 28 => to_unsigned(2, 5), 29 => to_unsigned(2, 5), 30 => to_unsigned(2, 5), 
        31 => to_unsigned(15, 5), 32 => to_unsigned(10, 5), 33 => to_unsigned(5, 5), 34 => to_unsigned(25, 5), 35 => to_unsigned(20, 5)
    );
    
    -- Divisor de Clock para el Tempo (Base de tiempo 0.25s)
    constant divisor : integer := 6250000 - 1; 
    signal tempo : integer range 0 to divisor := 0;
    signal avanzar: std_logic := '0'; -- Pulso para avanzar una unidad de tiempo
    
    -- Variables de la Máquina de Estados
    signal address: integer range 0 to 35 := 0;
    signal duracion: unsigned(4 downto 0) := (others => '0'); -- Contador para la duración de la nota actual
    
begin
    process(clk)
    begin
        if rising_edge(clk) then 
            if rst = '0' then
                tempo <= 0;
                avanzar <= '0';
            else
                avanzar <= '0'; -- Pulso de un ciclo
                if tempo = divisor then
                    tempo <= 0;
                    avanzar <= '1';
                else
                    tempo <= tempo + 1;
                end if;
            end if;
        end if;
    end process;

    -- Máquina de Estados Musical (MSM)
    process(clk)
    begin
        if rising_edge(clk) then    
            -- Reseteo
            if rst = '0' then
                address <= 0;
                duracion <= (others => '0');
                frecuencia_out <= (others => '0');
            else      
                if avanzar = '1' then                
                    -- Reducimos el contador de duración
                    if duracion > 0 then
                        duracion <= duracion - 1;
                    end if;
                    -- Si el contador llega a 0, avanzamos a la siguiente nota
                    if duracion = 0 then 
                        -- Duración de la nueva nota
                        duracion <= duracion_data(address);
                        
                        if frec_data(address) = PAUSA then
                            frecuencia_out <= (others => '0'); --(0 Hz)
                        else
                            frecuencia_out <= frec_data(address); --Tono
                        end if;
                        
                        -- Avanzamos a la siguiente dirección
                        if address = 35 then
                            address <= 0; -- Reiniciar la canción
                        else
                            address <= address + 1; -- Avanzamos a la siguiente nota
                        end if;
                    end if;
                end if;
            end if; 
        end if;
    end process;
    
end Behavioral;
