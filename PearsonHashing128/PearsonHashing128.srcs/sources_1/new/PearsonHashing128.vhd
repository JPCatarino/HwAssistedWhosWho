----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.07.2020 23:00:42
-- Design Name: 
-- Module Name: PearsonHashing128 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PearsonHashing128 is
    Port ( messageIn : in STD_LOGIC_VECTOR (127 downto 0);
           hashOut : out STD_LOGIC_VECTOR (7 downto 0));
end PearsonHashing128;

architecture Behavioral of PearsonHashing128 is
    type TStaticLUT is array (0 to 255) of std_logic_vector(7 downto 0);
    constant STATIC_LUT : TStaticLUT := ("110", "1110", "10111000", "110101", "1010010", "111010", "1100010", "110000", "11010010",
                                         "1101110", "10101011", "10111110", "10110", "1001011", "10101010", "11110100", "10110111", 
                                         "10100110", "111111", "1010000", "10000100", "1100001", "10010100", "11101011", "110100", 
                                         "1000010", "11011100", "10001101", "11111110", "11010011", "1000100", "11100110", "1100",   "1001000" ,   "101001" ,   "1011110" ,   "10100101" ,   "111101" ,   "11000111" ,   "10" ,   "10011100" ,   "1111000" ,   "1100100" ,   "11111100" ,   "10110000" ,   "10001" ,   "11100010" ,   "1111101" ,   "10110010" ,   "11011111" ,   "10010010" ,   "10101000" ,   "10010000" ,   "11001" ,   "11100100" ,   "1111010" ,   "11011110" ,   "11000001" ,   "1000101" ,   "10100011" ,   "10101100" ,   "1110111" ,   "11001001" ,   "1000" ,   "11111101" ,   "101110" ,   "10011001" ,   "110010" ,   "1011" ,   "11000100" ,   "111100" ,   "110111" ,   "11010111" ,   "100111" ,   "10000001" ,   "11001010" ,   "11101101" ,   "1011100" ,   "10001110" ,   "1110110" ,   "11100000" ,   "10010001" ,   "1011111" ,   "11010101" ,   "1010011" ,   "11100001" ,   "10100111" ,   "1001101" ,   "100010" ,   "110001" ,   "10001001" ,   "11" ,   "1011101" ,   "111" ,   "11011000" ,   "11110110" ,   "10000110" ,   "11100101" ,   "11001000" ,   "1111011" ,   "11010001" ,   "11000" ,   "10101110" ,   "10000010" ,   "11111010" ,   "11101111" ,   "1001100" ,   "1" ,   "11111111" ,   "11110010" ,   "1000111" ,   "10011011" ,   "100101" ,   "100110" ,   "11010000" ,   "10110101" ,   "11011011" ,   "1110011" ,   "10100010" ,   "10001010" ,   "1100000" ,   "11110011" ,   "11111011" ,   "11100011" ,   "11000010" ,   "101000" ,   "1000000" ,   "101010" ,   "1100011" ,   "10011101" ,   "1010110" ,   "1000001" ,   "1011001" ,   "10010101" ,   "1101100" ,   "1101000" ,   "1101111" ,   "1110101" ,   "10111001" ,   "10001111" ,   "11101" ,   "11000011" ,   "10011110" ,   "1010100" ,   "11001111" ,   "11000000" ,   "10101001" ,   "11001100" ,   "101011" ,   "10101" ,   "11001110" ,   "10111111" ,   "10000011" ,   "10000000" ,   "100000" ,   "10100100" ,   "100100" ,   "11010100" ,   "1010" ,   "10111010" ,   "10110001" ,   "10110011" ,   "11011" ,   "101111" ,   "111001" ,   "11011101" ,   "10011111" ,   "10001011" ,   "0" ,   "11001011" ,   "10010" ,   "10001000" ,   "10010011" ,   "1001010" ,   "10010111" ,   "10101101" ,   "11110111" ,   "1110100" ,   "1010101" ,   "111000" ,   "11100111" ,   "10011010" ,   "1001110" ,   "1111111" ,   "11111001" ,   "1101" ,   "10000111" ,   "100011" ,   "1001111" ,   "1111100" ,   "10010110" ,   "10011000" ,   "10111" ,   "101" ,   "11101110" ,   "110110" ,   "11110001" ,   "1011011" ,   "100001" ,   "11110000" ,   "10100001" ,   "1100110" ,   "1110000" ,   "11010" ,   "11000110" ,   "10000101" ,   "111110" ,   "110011" ,   "11100" ,   "10110100" ,   "11010110" ,   "11110" ,   "100" ,   "11110101" ,   "1001" ,   "11101000" ,   "1100111" ,   "1001001" ,   "1101010" ,   "11011001" ,   "1011000" ,   "1111" ,   "1010001" ,   "101101" ,   "11111" ,   "10111100" ,   "101100" ,   "11101010" ,   "10011" ,   "11011010" ,   "1000011" ,   "10101111" ,   "11000101" ,   "1101101" ,   "10100000" ,   "10111011" ,   "1100101" ,   "11001101" ,   "1011010" ,   "11101001" ,   "1111001" ,   "11101100" ,   "1110010" ,   "10111101" ,   "10001100" ,   "1010111" ,   "1111110" ,   "1101001" ,  "1110001",  "1101011",  "10100",  "1000110",  "11111000",  "10110110",  "10000",  "111011");
    constant hash : std_logic_vector := "00010000";
begin
    process(messageIn)
    variable v_messageIn : std_logic_vector(127 downto 0);
    variable v_hash : std_logic_vector(7 downto 0);
    begin
        v_hash := hash;
        v_messageIn := messageIn;
        for i in 0 to 15 loop
            v_hash := STATIC_LUT(to_integer(unsigned(v_hash xor v_messageIn(127 downto 120))));
            v_messageIn := v_messageIn(119 downto 0) & "00000000";
        end loop;
        hashOut <= v_hash;
    end process;
end Behavioral;
