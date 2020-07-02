----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.07.2020 16:27:39
-- Design Name: 
-- Module Name: PearsonHashing_tb - tb
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

entity PearsonHashing_tb is
end PearsonHashing_tb;

architecture tb of PearsonHashing_tb is
    signal messageIn : std_logic_vector(31 downto 0);
    signal hashOut : std_logic_vector(7 downto 0);
begin
    UUT: entity work.PearsonHashing
         port map(
            messageIn => messageIn,
            hashOut => hashOut
         );
    
    messageIn <= "01100111011011110111001001100100";
end tb;
