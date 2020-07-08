----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.07.2020 16:23:45
-- Design Name: 
-- Module Name: JenkinsPostLoop - Behavioral
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

entity JenkinsPostLoop is
    Port ( hashIn : in STD_LOGIC_VECTOR (31 downto 0);
           hashOut : out STD_LOGIC_VECTOR (31 downto 0));
end JenkinsPostLoop;

architecture Behavioral of JenkinsPostLoop is

begin
    process(hashIn)
        variable v_hashIn : unsigned(31 downto 0);
        variable v_hashOut : unsigned(31 downto 0);
    begin
        v_hashIn := unsigned(hashIn);
        v_hashOut := v_hashIn + (v_hashIn sll 3); 
        v_hashOut := v_hashOut xor (v_hashOut srl 11);
        v_hashOut := v_hashOut + (v_hashOut sll 15);
        hashOut <= std_logic_vector(v_hashOut);
    end process;

end Behavioral;
