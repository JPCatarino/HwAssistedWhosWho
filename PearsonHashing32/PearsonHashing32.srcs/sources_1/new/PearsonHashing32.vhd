----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.07.2020 02:08:27
-- Design Name: 
-- Module Name: PearsonHashing32 - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PearsonHashing32 is
    Port ( messageIn : in STD_LOGIC_VECTOR (127 downto 0);
           hashOut : out STD_LOGIC_VECTOR (31 downto 0));
end PearsonHashing32;

architecture Behavioral of PearsonHashing32 is
    signal hashOut1, hashOut2, hashOut3, hashOut4 : std_logic_vector(7 downto 0);
begin
    
    hashBlock1: entity work.PearsonHashing128(Behavioral)
                port map(
                    messageIn => messageIn,
                    hashOff => "00",
                    hashOut => hashOut1
                    
                );
    
    hashBlock2: entity work.PearsonHashing128(Behavioral)
                port map(
                    messageIn => messageIn,
                    hashOff => "01",                    
                    hashOut => hashOut2
                );
    
    hashBlock3: entity work.PearsonHashing128(Behavioral)
                port map(
                    messageIn => messageIn,
                    hashOff => "10",
                    hashOut => hashOut3
                );
    
    hashBlock4: entity work.PearsonHashing128(Behavioral)
                port map(
                    messageIn => messageIn,
                    hashOff => "11",
                    hashOut => hashOut4
                );
                
     hashOut <= hashOut1 & hashOut2 & hashOut3 & hashOut4;

end Behavioral;
