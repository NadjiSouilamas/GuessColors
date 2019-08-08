----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:09:55 12/13/2018 
-- Design Name: 
-- Module Name:    msa3_hdl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity msa3_hdl is
    Port ( b0 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           gs : in  STD_LOGIC;
           clkin : in  STD_LOGIC;
			  start : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           enable_del : out  STD_LOGIC;
			  gameover : out  STD_LOGIC
			  );
end msa3_hdl;

architecture Behavioral of msa3_hdl is


type etat is (display,a,b,c,d,e,f,endgame);
signal seqq : std_logic_vector ( 2 downto 0) ; 
signal shreg : std_logic_vector ( 7 downto 0) ; 
signal etatpres, etatsuiv : etat;
type sequence is array (0 to 2) of std_logic_vector( 2 downto 0);


begin

--registre d'état
xreg: process(rst,clkin)
begin
	if(rst = '1')then
	etatpres <= display;
	elsif(clkin'event and clkin = '1')then
	etatpres <= etatsuiv;
	end if;
end process;

--IFL
xifl: process(etatpres, b1,b0,gs,start)
   variable cpt : integer ; 
   begin
	case etatpres is
	
	when display => 
      if (start ='0') then  
		etatsuiv <= display; 
		else etatsuiv <= a; 
		end if; 
	when a =>
	if(gs = '1') then
		if (b1 = '0' and b0 = '0') then
			etatsuiv <= b;
		else
			etatsuiv <= endgame;
		end if;
	else
		etatsuiv <= a;
	end if;
	when b =>
	if(gs = '0')then
	etatsuiv <= c;
	else
	etatsuiv <= b;
	end if;
	when c =>
	if(gs = '1') then
	if(b1 = '0' and b0 = '1') then
	etatsuiv <= d;
	else
	etatsuiv <= endgame;
	end if;
	else
	etatsuiv <= c;
	end if;
	when d =>
	if(gs = '0')then
	etatsuiv <= e;
	else
	etatsuiv <= d;
	end if;
	when e =>
	if(gs = '1') then
	if(b1 = '1' and b0 = '0') then
	etatsuiv <= f;
	else
	etatsuiv <= endgame;
	end if;
	else
	etatsuiv <= e;
	end if;
	when f =>
	seqq<="000";
	etatsuiv <= f;
	when endgame =>
		
		etatsuiv <= endgame;
		
	when others => etatsuiv <= a;
	end case;
end process;
--OFL
enable_del <= '1' when etatpres = f else '0';
gameover <= '1' when etatpres = endgame else '0';
end Behavioral;