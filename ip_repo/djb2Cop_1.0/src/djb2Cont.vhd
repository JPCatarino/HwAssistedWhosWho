----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.07.2020 17:14:46
-- Design Name: 
-- Module Name: djb2Cont - Behavioral
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

entity djb2Cont is
    Port ( messageIn : in STD_LOGIC_VECTOR (31 downto 0);
           hashIn : in STD_LOGIC_VECTOR (31 downto 0);
           hashOut : out STD_LOGIC_VECTOR (31 downto 0));
end djb2Cont;

architecture Behavioral of djb2Cont is

begin
    process(messageIn)
        variable v_hash  : unsigned(31 downto 0);
        variable v_messageIn : unsigned(31 downto 0);
    begin
        v_hash := unsigned(hashIn);
        v_messageIn := unsigned(messageIn);
        
        for i in 0 to 3 loop
            v_hash := (v_hash sll 5) + v_hash;
            v_hash := v_hash + v_messageIn(31 downto 24);
            v_messageIn := v_messageIn(23 downto 0) & "00000000";
        end loop;
        
        hashOut <= std_logic_vector(v_hash);

    end process;

end Behavioral;
