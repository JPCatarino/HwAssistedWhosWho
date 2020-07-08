----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.07.2020 23:35:07
-- Design Name: 
-- Module Name: djb2_tb - tb
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

entity djb2_tb is
--  Port ( );
end djb2_tb;

architecture tb of djb2_tb is
    signal messageIn : std_logic_vector(31 downto 0);
    signal hashOut : std_logic_vector(31 downto 0);
begin
    djb2: entity work.djb2
          port map(
            messageIn => messageIn,
            hashOut => hashOut
          );
    
    messageIn <= x"61626364";
end tb;
