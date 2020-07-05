----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.07.2020 23:07:06
-- Design Name: 
-- Module Name: PearsonHashing128_tb - tb
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

entity PearsonHashing128_tb is
--  Port ( );
end PearsonHashing128_tb;

architecture tb of PearsonHashing128_tb is
    signal messageIn : std_logic_vector(127 downto 0);
    signal hashOut : std_logic_vector(7 downto 0);
begin
    UUT: entity work.PearsonHashing128
         port map(
            messageIn => messageIn,
            hashOut => hashOut
         );
    
    messageIn <= "01101000011001010110110001110000011011010110010101101001011100110110010101110111011100100110101001100110011011000111001001101011";
end tb;
