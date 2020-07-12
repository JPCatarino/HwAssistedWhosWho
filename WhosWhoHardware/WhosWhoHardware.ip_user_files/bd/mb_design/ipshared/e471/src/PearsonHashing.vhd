----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.07.2020 14:56:31
-- Design Name: 
-- Module Name: PearsonHashing - Behavioral
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

entity PearsonHashing is
    Port ( messageIn : in STD_LOGIC_VECTOR (31 downto 0);
           validIn : in STD_LOGIC;
           hashOut : out STD_LOGIC_VECTOR (7 downto 0));
end PearsonHashing;

architecture Behavioral of PearsonHashing is
    type TStaticLUT is array (0 to 255) of std_logic_vector(7 downto 0);
    constant STATIC_LUT : TStaticLUT := ("00000110","00001110","10111000","00110101","01010010","00111010","01100010","00110000","11010010","01101110","10101011","10111110","00010110","01001011","10101010","11110100","10110111","10100110","00111111","01010000","10000100","01100001","10010100","11101011","00110100","01000010","11011100","10001101","11111110","11010011","01000100","11100110","00001100","01001000","00101001","01011110","10100101","00111101","11000111","00000010","10011100","01111000","01100100","11111100","10110000","00010001","11100010","01111101","10110010","11011111","10010010","10101000","10010000","00011001","11100100","01111010","11011110","11000001","01000101","10100011","10101100","01110111","11001001","00001000","11111101","00101110","10011001","00110010","00001011","11000100","00111100","00110111","11010111","00100111","10000001","11001010","11101101","01011100","10001110","01110110","11100000","10010001","01011111","11010101","01010011","11100001","10100111","01001101","00100010","00110001","10001001","00000011","01011101","00000111","11011000","11110110","10000110","11100101","11001000","01111011","11010001","00011000","10101110","10000010","11111010","11101111","01001100","00000001","11111111","11110010","01000111","10011011","00100101","00100110","11010000","10110101","11011011","01110011","10100010","10001010","01100000","11110011","11111011","11100011","11000010","00101000","01000000","00101010","01100011","10011101","01010110","01000001","01011001","10010101","01101100","01101000","01101111","01110101","10111001","10001111","00011101","11000011","10011110","01010100","11001111","11000000","10101001","11001100","00101011","00010101","11001110","10111111","10000011","10000000","00100000","10100100","00100100","11010100","00001010","10111010","10110001","10110011","00011011","00101111","00111001","11011101","10011111","10001011","00000000","11001011","00010010","10001000","10010011","01001010","10010111","10101101","11110111","01110100","01010101","00111000","11100111","10011010","01001110","01111111","11111001","00001101","10000111","00100011","01001111","01111100","10010110","10011000","00010111","00000101","11101110","00110110","11110001","01011011","00100001","11110000","10100001","01100110","01110000","00011010","11000110","10000101","00111110","00110011","00011100","10110100","11010110","00011110","00000100","11110101","00001001","11101000","01100111","01001001","01101010","11011001","01011000","00001111","01010001","00101101","00011111","10111100","00101100","11101010","00010011","11011010","01000011","10101111","11000101","01101101","10100000","10111011","01100101","11001101","01011010","11101001","01111001","11101100","01110010","10111101","10001100","01010111","01111110","01101001","01110001","01101011","00010100","01000110","11111000","10110110","00010000","00111011");
    constant hash : std_logic_vector := "00000100";
begin
    process(messageIn)
    variable v_messageIn : std_logic_vector(31 downto 0);
    variable v_hash : std_logic_vector(7 downto 0);
    begin
        if(validIn = '1') then
            v_hash := hash;
            v_messageIn := messageIn;
            for i in 0 to 3 loop
                v_hash := STATIC_LUT(to_integer(unsigned(v_hash xor v_messageIn(31 downto 24))));
                v_messageIn := v_messageIn(23 downto 0) & "00000000";
            end loop;
            hashOut <= v_hash;
        else 
            hashOut <= (others => '0');
        end if;
    end process;    
end Behavioral;
