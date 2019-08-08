library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- ********************************************************
-- ******************** ENTITE DU FPGA ********************
-- ********************************************************

entity main is
    Port ( 
	 
			  --KeyboardClock : in  STD_LOGIC;
           --KeyboardData : in  STD_LOGIC;
-- Horloge de la carte de fr?quence f=50 MHz
           MCLK : in std_logic;				  
-- Ports d'attribution de la couleur du pixel ? afficher
           RGB : out std_logic_vector(7 downto 0);
-- Ports de synchro horizontale et verticale
           HS : out std_logic;
           VS : out std_logic;
-- Play indique le mode de jeu , Si play ='0' c'est le mode par dfaut 2 joueurs sinon c'est un seul joueur qui joue contre la montre
			  game_over : in std_logic;
-- PAUSE_ENABLED indique si la partie est suspendu			  
			--	PAUSE_ENABLED: in std_logic;
-- vitesse
			--	SPEED : in std_logic_vector(1 downto 0);
-- signaux d'entrées
	r_sig	: in std_logic;
	g_sig	: in std_logic;
	y_sig : in std_logic;
	b_sig	: in std_logic);
end main;

-- **************************************************************
-- ******************** ARCHITECTURE DU FPGA ********************
-- **************************************************************

architecture Behavioral of main is
	
-- Le controlleur du clavier rcupre les donnes en entre (codes des touches appuyes) et retourne 
-- le dplacement du joueur  
signal SPEED : std_logic_vector(1 downto 0) := "11";	
	
	
	COMPONENT vga_int

	PORT(
-- Horloge de la carte
		MCLK : IN std_logic;
-- Coodonn?es du pixel ? afficher          
		X : OUT std_logic_vector(9 downto 0);
		Y : OUT std_logic_vector(9 downto 0);
-- Synchro verticale et horizontale
		VS : OUT std_logic;
		HS : OUT std_logic;
-- Contr?le de l'affichage vid?o
		VIDEO_EN : OUT std_logic
		);
	END COMPONENT;

	COMPONENT set_rgb
	PORT(
		CLK : in std_logic;
--		ETAT_PARTIE : OUT std_logic;	    
		X : IN std_logic_vector(9 downto 0);
		Y : IN std_logic_vector(9 downto 0);
		VIDEO_EN : IN std_logic	;
		red_btn : IN std_logic;
		green_btn : IN std_logic;
		yellow_btn : IN std_logic;
		blue_btn : IN std_logic;
	   game_over : IN std_logic;

-- Horloge de d?placement de la raquette
		--CLK_raquette : IN std_logic;
-- Horloge de d?placement de la balle
		--CLK_Ball : IN std_logic;
		--PAUSE_ENABLED:IN std_logic;

-- Attribution de la	 couleur du pixel ? afficher
      R : out std_logic;	
      G : out std_logic;
      B : out std_logic
		);
	END COMPONENT;

	signal counter : std_logic_vector(19 downto 0):=(others=>'0'); 					-- Compteur gnral de frquence f=50MHz
	signal x_position, y_position : std_logic_vector(9 downto 0):=(others=>'0');  -- coordonn?es du pointeur
	signal video_en : std_logic;												-- Activation de l'affichage vid?o
	signal clkb : std_logic;													-- vitesse de d?placement de la balle
	signal clks : std_logic;													-- vitesse de d?placement de la raquette
	signal state_partie : std_logic:='0';
	signal R,G,B : std_logic;
	
-- Signaux intermdiaires pour rcuprer les entre des joueurs et transmetre ces dplacements au module Inst_set_rgb
	
   
begin

	RGB <= R&R&R & G&G&G & B&B;

-- ATTRIBUTION DES PORTS MAP AUX COMPONENTS
	
	
	
	Inst_vga_int: vga_int PORT MAP(
	
		MCLK => MCLK,
		X => x_position,
		Y => y_position,
		VS => VS,
		HS => HS,
		VIDEO_EN => video_en
	);
 

	Inst_set_rgb: set_rgb PORT MAP(
		CLK => MCLK,
	--	ETAT_PARTIE => state_partie,
		X => x_position,
		Y => y_position,
		VIDEO_EN => video_en,
		
		red_btn => r_sig,
		green_btn => g_sig,		
		yellow_btn => y_sig,
		blue_btn => b_sig,
		
		game_over => game_over, 
	   --PAUSE_ENABLED=>  PAUSE_ENABLED,
		--CLK_raquette => clks,
		--CLK_Ball => clkb,
		R => R,
		G => G,
		B => B
	);


----------------------------------------------------------------------------
---------- Process sensible ? la fr?quence du processeur: f=50MHZ ----------
----------------------------------------------------------------------------

process(MCLK)
	begin
		if MCLK'event and MCLK='1' then
			clkb<='0'; clks<='0';
			counter <= counter+'1';			-- Incr?mentation du compteur g?n?ral ? chaque front montant de l'horloge
		if SPEED="00" then
				if counter(19 downto 0) = "10000000000000000000" then
--if counter(2 downto 0) = "100" then				
					clkb <= '1';				-- 17me bit du compteur -> horloge de la balle
				end if;
				if counter(18 downto 0) = "1000000000000000000" then
--if counter(1 downto 0)= "10" then
					clks <= '1';				-- 16me bit du compteur -> horloge de la raquette
				end if;			   
			else
				if SPEED="01" then
					if counter(18 downto 0) = "1000000000000000000" then
--if counter(3 downto 0) = "1000" then
					 clkb <= '1';				-- 18me bit du compteur -> horloge de la balle
				   end if;
				   if counter(17 downto 0) = "000000000000000000" then
--if counter(2 downto 0) = "100" then
					 clks <= '1';				-- 17me bit du compteur -> horloge de la raquette
				   end if;
				else 
					if SPEED="10" then
									
							if counter(17 downto 0) = "100000000000000000" then
		--if counter(3 downto 0) = "1000" then
							 clkb <= '1';				-- 18me bit du compteur -> horloge de la balle
							end if;
							if counter(16 downto 0) = "00000000000000000" then
--if counter(2 downto 0) = "100" then
							clks <= '1';				-- 17me bit du compteur -> horloge de la raquette
							end if;
					else 
					      if counter(16 downto 0) = "10000000000000000" then
		--if counter(3 downto 0) = "1000" then
							 clkb <= '1';				-- 18me bit du compteur -> horloge de la balle
							end if;
							if counter(15 downto 0) = "000000000000000" then
--if counter(2 downto 0) = "100" then
							clks <= '1';				-- 17me bit du compteur -> horloge de la raquette
							end if;
					end if;
				end if;	   
			end if;
	   end if;				 
	end process;
end Behavioral;
