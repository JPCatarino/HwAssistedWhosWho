----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.07.2020 16:48:49
-- Design Name: 
-- Module Name: JenkinsPostLoop_tb - Behavioral
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

entity JenkinsPostLoop_tb is
--  Port ( );
end JenkinsPostLoop_tb;

architecture Behavioral of JenkinsPostLoop_tb is
    signal hashIn : std_logic_vector(31 downto 0);
    signal hashOut : std_logic_vector(31 downto 0);
begin
    UUT: entity work.JenkinsPostLoop
         port map(
            hashIn => hashIn,
            hashOut => hashOut
         );
    
    hashIn <= "00000000000000001100011100100001";

end Behavioral;
