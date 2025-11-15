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
    -- Frecuencias para 32 notas
    type ram_frecuencia_array is array (0 to 31) of unsigned (19 downto 0);
    signal frec_data: ram_frecuencia_array := (
        -- C3, G3, E_flat3, G3 (Patrón de 4 notas), repetido 8 veces (32 posiciones)
        0 => X"0E9B42", 1 => X"09BE03", 2 => X"0C34B4", 3 => X"09BE03", -- Repetición 1
        4 => X"0E9B42", 5 => X"09BE03", 6 => X"0C34B4", 7 => X"09BE03", -- Repetición 2
        8 => X"0E9B42", 9 => X"09BE03", 10 => X"0C34B4", 11 => X"09BE03", -- Repetición 3
        12 => X"0E9B42", 13 => X"09BE03", 14 => X"0C34B4", 15 => X"09BE03", -- Repetición 4
        16 => X"0E9B42", 17 => X"09BE03", 18 => X"0C34B4", 19 => X"09BE03", -- Repetición 5
        20 => X"0E9B42", 21 => X"09BE03", 22 => X"0C34B4", 23 => X"09BE03", -- Repetición 6
        24 => X"0E9B42", 25 => X"09BE03", 26 => X"0C34B4", 27 => X"09BE03", -- Repetición 7
        28 => X"0E9B42", 29 => X"09BE03", 30 => X"0C34B4", 31 => X"09BE03"  -- Repetición 8
    );
    
    -- Duracion notas
    constant duracion_nota : unsigned(3 downto 0) := X"1";

    -- Divisor de Clock para el Tempo (Base de tiempo 0.25s)
    constant divisor : integer := 31250000 - 1; 
    signal tempo : integer range 0 to divisor := 0;
    signal avanzar: std_logic := '0'; -- Pulso para avanzar una unidad de tiempo
    
    -- Variables de la Máquina de Estados
    signal address: integer range 0 to 31 := 0;
    signal duracion: unsigned(3 downto 0) := (others => '0'); -- Contador para la duración de la nota actual
    
begin

    -- Generador de Pulso de Tempo (0.25s)
    process(clk, rst)
    begin
        if rst = '1' then
            tempo <= 0;
            avanzar <= '0';
        elsif rising_edge(clk) then
            avanzar <= '0'; -- Pulso de un ciclo
            if tempo = divisor then
                tempo <= 0;
                avanzar <= '1';
            else
                tempo <= tempo + 1;
            end if;
        end if;
    end process;

    -- Máquina de Estados Musical (MSM)
    process(clk, rst)
    begin
        if rst = '1' then -- Si hay reset
            address <= 0;
            duracion <= (others => '0');
            frecuencia_out <= (others => '0'); -- Silencio
        elsif rising_edge(clk) then        
            if avanzar = '1' then                
                -- Reducimos el contador de duración
                if duracion > 0 then
                    duracion <= duracion - 1;
                end if;
                
                -- Si el contador llega a 0, avanzamos a la siguiente nota
                if duracion = 0 then 
                    -- Duración de la nueva nota (Multiplicador de tiempo)
                    duracion <= duracion_nota;
                    
                    -- Frecuencia de la nueva nota
                    frecuencia_out <= frec_data(address);
                    
                    -- Avanzamos a la siguiente dirección
                    if address = 31 then
                        address <= 0; -- Reiniciar la canción
                    else
                        address <= address + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
end Behavioral;
