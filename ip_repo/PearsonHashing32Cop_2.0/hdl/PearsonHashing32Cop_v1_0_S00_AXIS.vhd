library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PearsonHashing32Cop_v1_0_S00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
        validData    : out std_logic;
        countData    : out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
        readEnabled  : in  std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- AXI4Stream sink: Clock
		S_AXIS_ACLK	: in std_logic;
		-- AXI4Stream sink: Reset
		S_AXIS_ARESETN	: in std_logic;
		-- Ready to accept data in
		S_AXIS_TREADY	: out std_logic;
		-- Data in
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		-- Byte qualifier
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- Indicates boundary of last packet
		S_AXIS_TLAST	: in std_logic;
		-- Data is in valid
		S_AXIS_TVALID	: in std_logic
	);
end PearsonHashing32Cop_v1_0_S00_AXIS;

architecture arch_imp of PearsonHashing32Cop_v1_0_S00_AXIS is
    signal s_countData   : std_logic_vector(C_S_AXIS_TDATA_WIDTH - 1 downto 0);
    signal s_hashOut     : std_logic_vector(31 downto 0);
    signal s_validOut, s_ready, s_validIn, s_hashReady : std_logic;
    signal s_message1, s_message2, s_message3, s_message4 : std_logic_vector(31 downto 0);
    signal s_messageF : std_logic_vector(127 downto 0);
    
    component PearsonHashing32 is
		port (
		   messageIn : in STD_LOGIC_VECTOR (127 downto 0);
		   validIn : in STD_LOGIC;
           hashOut   : out STD_LOGIC_VECTOR (31 downto 0);
           validOut : out std_logic);
	end component PearsonHashing32;
begin
	
	p_hash: PearsonHashing32
               port map(messageIn => s_messageF,
                        validIn => s_validIn,
						hashOut => s_hashOut,
						validOut => s_hashReady
						);
                        
    s_ready <= ((not s_validOut) and s_hashReady) or readEnabled;
    s_messageF <= s_message1 & s_message2 & s_message3 & s_message4;
    
    process(S_AXIS_ACLK)
        variable v_counter : unsigned(1 downto 0) := "00";
	begin
        if (rising_edge (S_AXIS_ACLK)) then
	        if (S_AXIS_ARESETN = '0') then
	           s_validOut <= '0';
	           s_validIn <= '0';
	           s_countData  <= (others => '0');
       
            elsif (S_AXIS_TVALID = '1') then
	           if (s_ready = '1') then
                    s_validOut <= '1';
                    s_validIn <= '0';
	                s_countData  <= s_hashOut;
	           else
                   case v_counter is
                    when "00" =>
                        s_validIn <= '0';
                        s_message1 <= S_AXIS_TDATA;
                    when "01" =>
                        s_validIn <= '0';
                        s_message2 <= S_AXIS_TDATA;
                    when "10" =>
                        s_validIn <= '0';
                        s_message3 <= S_AXIS_TDATA;
                    when "11" =>
                        s_message4 <= S_AXIS_TDATA;
                        s_validIn <= '1';
                   end case;
                   v_counter := v_counter + 1;
	           end if;
	        elsif (readEnabled = '1') then
	           s_validOut <= '0'; 
	           s_validIn <= '0';              
            end if;
        end if;
    end process;

	validData     <= s_validOut;
	countData     <= s_countData;
	S_AXIS_TREADY <= s_ready;	
end arch_imp;