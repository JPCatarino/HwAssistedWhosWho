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

entity PearsonHashingN_tb is
--  Port ( );
end PearsonHashingN_tb;

architecture tb of PearsonHashingN_tb is
    component PearsonHashingN
        generic (N : integer := 128);
        port(
            messagein : in std_logic_vector(N-1 downto 0);
            hashOut : out std_logic_vector(7 downto 0)
        );
    end component;
    signal messageIn : std_logic_vector(127 downto 0);
    signal hashOut : std_logic_vector(7 downto 0);
    constant c_N : integer := 128;
begin

    UUT: PearsonHashingN
         generic map(N => c_N)
         port map(
            messageIn => messageIn,
            hashOut => hashOut
         );
    
    messageIn <= "01101000011001010110110001110000011011010110010101101001011100110110010101110111011100100110101001100110011011000111001001101011";

end tb;
