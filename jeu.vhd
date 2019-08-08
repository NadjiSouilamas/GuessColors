----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:57 01/12/2019 
-- Design Name: 
-- Module Name:    jeu - Behavioral 
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

entity jeu is
port (
	bt1 : in std_logic;
	bt2 : in std_logic;
	bt3 : in std_logic;
	bt4 : in std_logic;
	clkin : in std_logic;
	rst : in std_logic;
	RGB : out std_logic_vector(7 downto 0);
   HS : out std_logic;
   VS : out std_logic
);
end jeu;

architecture Behavioral of jeu is

component  main 
    Port ( 
	 
-- Horloge de la carte de fréquence f=100 MHz
           MCLK : in std_logic;				  
-- Ports d'attribution de la couleur du pixel ? afficher
           RGB : out std_logic_vector(7 downto 0);
-- Ports de synchro horizontale et verticale
           HS : out std_logic;
           VS : out std_logic;
			  game_over : in std_logic;
			-- signaux d'entrÃ©es
				r_sig	: in std_logic;
				g_sig	: in std_logic;
				y_sig : in std_logic;
				b_sig	: in std_logic);

end component;

component dcm1
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;
  CLK_OUT2          : out    std_logic;
  -- Status and control signals
  RESET             : in     std_logic
 );
end component;


component didact_top 
Port ( rst : in STD_LOGIC;
clkin : in STD_LOGIC;
bouton1 : in STD_LOGIC;
bouton2 : in STD_LOGIC;
bouton3 : in STD_LOGIC;
bouton4 : in STD_LOGIC;
gameover : out std_logic;
seq : out STD_LOGIC_VECTOR (3 downto 0)
);
end component;

signal clk : std_logic;
signal gameover : std_logic;
signal seq : std_logic_vector( 3 downto 0);
signal clk100mhz, clk16mhz : std_logic;
signal red, green, yellow, blue : std_logic;

begin

inst_didact : didact_top port map(
	rst => rst,
	clkin => clk16mhz,
	bouton1 => bt1,
	bouton2 => bt2,
	bouton3 => bt3,
	bouton4 => bt4,
	gameover => gameover,
	seq => seq
);

inst_dcm1 : dcm1 port map(
	reset => '0',
	clk_in1 => clkin,
	clk_out1 => clk16mhz,
	clk_out2 => clk100mhz
);

inst_main : main port map(

           MCLK => clk100mhz,

           RGB => RGB,

           HS => HS,
           VS => VS,
			  game_over => gameover, 

	r_sig	=> red,
	g_sig	=> green,
	y_sig => yellow,
	b_sig	=> blue
);

red <= seq(0) or bt1;
green <= seq(1) or bt2;
yellow <= seq(2) or bt3;
blue <= seq(3) or bt4;

end Behavioral;

