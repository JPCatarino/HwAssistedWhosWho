----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.07.2020 16:36:41
-- Design Name: 
-- Module Name: JenkinsMainLoop_tb - Behavioral
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

entity JenkinsMainLoop_tb is
--  Port ( );
end JenkinsMainLoop_tb;

architecture tb of JenkinsMainLoop_tb is
    signal messageIn : std_logic_vector(31 downto 0);
    signal hashOut : std_logic_vector(31 downto 0);
begin
    UUT: entity work.JenkinsMainLoop
         port map(
            messageIn => messageIn,
            hashOut => hashOut
         );
    
    messageIn <= "00000000000000000000000000110001";
end tb;
