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
           hashOut : out STD_LOGIC_VECTOR (7 downto 0));
end PearsonHashing;

architecture Behavioral of PearsonHashing is
    type TStaticLUT is array (0 to 255) of integer range 0 to 256;
    constant STATIC_LUT : TStaticLUT := (6, 14, 184, 53, 82, 58, 98, 48, 210, 110, 171, 190, 22, 75, 170, 244,
                                         183, 166, 63, 80, 132, 97, 148, 235, 52, 66, 220, 141, 254, 211, 68, 
                                         230, 12, 72, 41, 94, 165, 61, 199, 2, 156, 120, 100, 252, 176, 17, 226,
                                         125, 178, 223, 146, 168, 144, 25, 228, 122, 222, 193, 69, 163, 172, 119,
                                         201, 8, 253, 46, 153, 50, 11, 196, 60, 55, 215, 39, 129, 202, 237, 92,
                                         142, 118, 224, 145, 95, 213, 83, 225, 167, 77, 34, 49, 137, 3, 93, 7, 216,
                                         246, 134, 229, 200, 123, 209, 24, 174, 130, 250, 239, 76, 1, 255, 242, 71,
                                         155, 37, 38, 208, 181, 219, 115, 162, 138, 96, 243, 251, 227, 194, 40, 64, 42, 
                                         99, 157, 86, 65, 89, 149, 108, 104, 111, 117, 185, 143, 29, 195, 158, 84, 207,
                                         192, 169, 204, 43, 21, 206, 191, 131, 128, 32, 164, 36, 212, 10, 186, 177, 179,
                                         27, 47, 57, 221, 159, 139, 0, 203, 18, 136, 147, 74, 151, 173, 247, 116, 85, 56,
                                         231, 154, 78, 127, 249, 13, 135, 35, 79, 124, 150, 152, 23, 5, 238, 54, 241, 91,
                                         33, 240, 161, 102, 112, 26, 198, 133, 62, 51, 28, 180, 214, 30, 4, 245, 9, 232, 103,
                                         73, 106, 217, 88, 15, 81, 45, 31, 188, 44, 234, 19, 218, 67, 175, 197, 109, 160, 187,
                                         101, 205, 90, 233, 121, 236, 114, 189, 140, 87, 126, 105, 113, 107, 20, 70, 248, 182, 16, 59);
    constant hash : integer := 4;
begin
    process(messageIn)
    variable v_messageIn : std_logic_vector(31 downto 0);
    variable v_char : unsigned(7 downto 0);
    variable v_hash : integer range 0 to 255;
    begin
        v_hash := hash;
        v_messageIn := messageIn;
        for i in 0 to 4 loop
            v_char := unsigned(v_messageIn(31 downto 24));
            v_hash := STATIC_LUT(to_integer(unsigned(std_logic_vector(v_char) xor std_logic_vector(to_unsigned(v_hash, 8)))));
            v_messageIn := v_messageIn(23 downto 0) & "00000000";
        end loop;
        hashOut <= std_logic_vector(to_unsigned(v_hash, 8));
    end process;
end Behavioral;
