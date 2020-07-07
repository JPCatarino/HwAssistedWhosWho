----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.07.2020 02:08:27
-- Design Name: 
-- Module Name: PearsonHashing32 - Behavioral
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

entity PearsonHashing32 is
    Port ( messageIn : in STD_LOGIC_VECTOR (31 downto 0);
           hashOut : out STD_LOGIC_VECTOR (31 downto 0);
           validDataOut : out STD_LOGIC);
end PearsonHashing32;

architecture Behavioral of PearsonHashing32 is
    signal hashOut1, hashOut2, hashOut3, hashOut4 : std_logic_vector(7 downto 0);
    signal s_messageIn : std_logic_vector(127 downto 0);
    signal dataReady : std_logic;
    signal s_hReady1, s_hReady2, s_hReady3, s_hReady4 : std_logic;
begin

    process(messageIn)
        variable v_messageIn : std_logic_vector(127 downto 0);
        variable v_counter : unsigned(1 downto 0) := "00";
    begin
        case v_counter is
            when "00" =>
                dataReady <= '0';
                v_messageIn(127 downto 96) := messageIn;
                v_messageIn(95 downto 0) := (others => '0');
            when "01" =>
                dataReady <= '0';
                v_messageIn(127 downto 96) := v_messageIn(127 downto 96);
                v_messageIn(95 downto 64) := messageIn;
                v_messageIn(63 downto 0) := v_messageIn(63 downto 0);
            when "10" =>
                dataReady <= '0';
                v_messageIn(127 downto 64) := v_messageIn(127 downto 64);
                v_messageIn(63 downto 32) := messageIn;
                v_messageIn(31 downto 0) := v_messageIn(31 downto 0);
            when "11" =>
                v_messageIn(127 downto 32) := v_messageIn(127 downto 32);
                v_messageIn(31 downto 0) := messageIn;
                dataReady <= '1';
             end case;
         v_counter := v_counter + 1;
         s_messageIn <= v_messageIn;
    end process;
    
    hashBlock1: entity work.PearsonHashing128(Behavioral)
                port map(
                    readyIn => dataReady,
                    messageIn => s_messageIn,
                    hashOff => "00",
                    hashOut => hashOut1,
                    hashReady => s_hReady1
                );
    
    hashBlock2: entity work.PearsonHashing128(Behavioral)
                port map(
                    readyIn => dataReady,                    
                    messageIn => s_messageIn,
                    hashOff => "01",                    
                    hashOut => hashOut2,
                    hashReady => s_hReady2
                );
    
    hashBlock3: entity work.PearsonHashing128(Behavioral)
                port map(
                    readyIn => dataReady,
                    messageIn => s_messageIn,
                    hashOff => "10",
                    hashOut => hashOut3,
                    hashReady => s_hReady3
                );
    
    hashBlock4: entity work.PearsonHashing128(Behavioral)
                port map(
                    readyIn => dataReady,
                    messageIn => s_messageIn,
                    hashOff => "11",
                    hashOut => hashOut4,
                    hashReady => s_hReady4
                );
                
     hashOut <= hashOut1 & hashOut2 & hashOut3 & hashOut4;
     validDataOut <= s_hReady1 and s_hReady2 and s_hReady3 and s_hReady4;

end Behavioral;
