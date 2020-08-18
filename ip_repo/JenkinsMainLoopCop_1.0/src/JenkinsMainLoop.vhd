----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.07.2020 16:14:40
-- Design Name: 
-- Module Name: JenkinsMainLoop - Behavioral
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

entity JenkinsMainLoop is
    Port ( messageIn : in STD_LOGIC_VECTOR (31 downto 0);
           hashOut : out STD_LOGIC_VECTOR (31 downto 0));
end JenkinsMainLoop;

architecture Behavioral of JenkinsMainLoop is

begin
    process(messageIn)
        variable v_hash : unsigned(31 downto 0);
        variable v_message : unsigned(31 downto 0);
    begin
        v_hash := (others => '0');
        v_message := unsigned(messageIn);
        for i in 0 to 3 loop
            v_hash := v_hash + v_message(31 downto 24);
            v_hash := v_hash + (v_hash sll 10);
            v_hash := v_hash xor (v_hash srl 6);
            v_message := v_message sll 8;
        end loop;
        hashOut <= std_logic_vector(v_hash);
    end process;

end Behavioral;
