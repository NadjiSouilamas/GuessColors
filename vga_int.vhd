------------------------------------------
-- Create Date:    2015
-- Design Name:    
-- Module Name:    vga_int
-- Project Name:   
-- Target Device: Nexys 3 board
-- Tool versions:  
-- Description: This program gives the x and y coordinates of the pixel
-- being sweeped. The synchronizatoin signals (horizontal and vertical) 
-- are prepared and should be routed to appropriate pins.
-- In order to understand the timing, use the nexts 3 reference manuel.
-- x signal is in [0,640) and y in [0,480)
--	On the Nexys 3 board, the signals that should be directely 
-- connected to VGA connector are:
-- NET "HS"  LOC = "N6"  ;
-- NET "VS"  LOC = "P7" ;
-- and clk pins:
-- NET "MCLK"  LOC = "V10"  ;
--
-- Vahid Meghdadi
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity vga_int is
    Port ( MCLK : in std_logic;
           X : out std_logic_vector(9 downto 0);
           Y : out std_logic_vector(9 downto 0);
			  VS, HS : out std_logic;
           VIDEO_EN : out std_logic);
end vga_int;

architecture board of vga_int is
	type T_state is (pw,bp,disp,fp);
	signal h_state, v_state : T_state;
	signal x_count, y_count : integer range 0 to 1023;
	signal count : integer range 0 to 3;
	signal clk, line_clk : std_logic:='1';
	signal en_25, line_en, tempo : std_logic;
begin

	CLK_DIV: process(MCLK)
	begin
		if MCLK'event and MCLK='1' then
			count <= count +1;
			en_25 <= '0';
			if count = 3 then
				en_25 <= '1';
			end if;
		end if;
	end process;
	
	H_FSM:process(Mclk)
	begin
		if MCLK'event and MCLK='1' then
			if en_25 = '1' then
				case h_state is
				when pw =>  if X_count = 95 then X_count <= 0;
														h_state <= bp;
								else x_count <= x_count + 1;
								end if;
				when bp =>  if X_count = 47 then X_count <= 0;
														h_state <= disp;
								else x_count <= x_count + 1;
								end if;
				when disp =>if X_count = 639 then X_count <= 0;
														h_state <= fp;
								else x_count <= x_count + 1;
								end if;
				when fp =>	if X_count = 15 then X_count <= 0;
														h_state <= pw;
								else x_count <= x_count + 1;
								end if;
				end case;
			end if;
		end if;
	end process;
	
	line_clk <= '0' when h_state=pw else '1';
	
	HS <= line_clk; 
	
	process(MCLK)
	begin
		if MCLK'event and MCLK='1' then
			line_en <= '0';
			tempo <= line_clk;
			if tempo = '0' and line_clk = '1' then
				line_en <= '1';
			end if;
		end if;
	end process;

	V_FSM:process(MCLK)
	begin
		if MCLK'event and MCLK = '1' then
			if line_en = '1' then
				case v_state is
				when pw =>  if y_count = 1 then y_count <= 0;
														v_state <= bp;
								else y_count <= y_count + 1;
								end if;
				when bp =>  if y_count = 28 then y_count <= 0;
														v_state <= disp;
								else y_count <= y_count + 1;
								end if;
				when disp =>if y_count = 479 then y_count <= 0;
														v_state <= fp;
								else y_count <= y_count + 1;
								end if;
				when fp =>	if y_count = 9 then y_count <= 0;
														v_state <= pw;
								else y_count <= y_count + 1;
								end if;
				end case;
			end if;
		end if;
	end process;

	VS <= '0' when v_state=pw else '1';
	VIDEO_EN <= '1' when v_state=disp and h_state = disp else '0';
	X<= conv_std_logic_vector(x_count,10);
	Y<= conv_std_logic_vector(y_count,10);

end board;
