----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.07.2020 18:30:44
-- Design Name: 
-- Module Name: djb2 - Behavioral
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

entity djb2 is
    Port ( reset : in STD_LOGIC;
           messageIn : in STD_LOGIC_VECTOR (31 downto 0);
           hashOut : out STD_LOGIC_VECTOR (31 downto 0));
end djb2;

architecture Behavioral of djb2 is
    signal s_reset : std_logic;
    signal s_counter : unsigned(1 downto 0);
    signal s_hash, s_hashCarry : std_logic_vector(31 downto 0) := x"00001505";
begin
    process(messageIn)
        variable v_hash  : unsigned(31 downto 0);
        variable v_messageIn : unsigned(31 downto 0);
    begin
        v_hash := unsigned(s_hashCarry);
        v_messageIn := unsigned(messageIn);
        
        for i in 0 to 3 loop
            v_hash := (v_hash sll 5) + v_hash;
            v_hash := v_hash + v_messageIn(31 downto 24);
            v_messageIn := v_messageIn(23 downto 0) & "00000000";
        end loop;
        
        s_hash <= std_logic_vector(v_hash);
        
    end process;
    
    hashOut <= s_hash;
    
    process(reset)
    begin
        if(reset = '1') then
            s_hashCarry <= x"00001505";
        else
            s_hashCarry <= s_hashCarry;
        end if;
    end process;
end Behavioral;
