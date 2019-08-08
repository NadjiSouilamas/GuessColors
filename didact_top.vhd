library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity didact_top is
Port ( rst : in STD_LOGIC;
clkin : in STD_LOGIC;
bouton1 : in STD_LOGIC;
bouton2 : in STD_LOGIC;
bouton3 : in STD_LOGIC;
bouton4 : in STD_LOGIC;
gameover : out std_logic;
seq : out STD_LOGIC_VECTOR (3 downto 0)

);
end didact_top;
architecture Behavioral of didact_top is

component debounce_hdl
port(
	sig_in : in STD_LOGIC;
	clkin : in STD_LOGIC;
	sig_out : out STD_LOGIC);
end component;



component diviseur_clk
port(
	clkin : in STD_LOGIC;
	clk1hz : out STD_LOGIC;
	clk1_5hz : out STD_LOGIC;
	clk2hz : out STD_LOGIC;
	clk4hz : out STD_LOGIC;
	clk16hz : out STD_LOGIC;
	clk2khz : out STD_LOGIC);
end component;

component msa3_hdl
port(
	clkin : in STD_LOGIC;
	rst : in STD_LOGIC;
	b0 : in STD_LOGIC;
	b1 : in STD_LOGIC;
	gs : in STD_LOGIC;
	start : in std_logic; 
	gameover : out  STD_LOGIC;
	enable_del : out STD_LOGIC);
end component;

component msa4_hdl
port(
	clkin : in STD_LOGIC;
	rst : in STD_LOGIC;
	b0 : in STD_LOGIC;
	b1 : in STD_LOGIC;
	gs : in STD_LOGIC;
	start : in std_logic;
	gameover : out std_logic;	
	enable_del : out STD_LOGIC);
end component;

component msa5_hdl
port(
	clkin : in STD_LOGIC;
	rst : in STD_LOGIC;
	b0 : in STD_LOGIC;
	b1 : in STD_LOGIC;
	gs : in STD_LOGIC;
	start : in std_logic;
	gameover : out std_logic;	
	enable_del : out STD_LOGIC);
end component;

component msa6_hdl
port(
	clkin : in STD_LOGIC;
	rst : in STD_LOGIC;
	b0 : in STD_LOGIC;
	b1 : in STD_LOGIC;
	gs : in STD_LOGIC;
	start : in std_logic; 
	gameover : out  STD_LOGIC;
	enable_del : out STD_LOGIC);
end component;

signal CLKIN_IBUFG_OUT : std_logic;
signal CLK0_OUT : std_logic;
signal LOCKED_OUT : std_logic;
signal b0, b1, gs, enable_del3, enable_del4, enable_del5, enable_del6 : std_logic;
signal clk1hz,clk1_5hz,clk2hz,clk4hz,clk16hz,clk2khz : std_logic;
signal debout1,debout2,debout3,debout4 : std_logic;
signal shreg : std_logic_vector(3 downto 0);
signal start_msa3, start_msa4 , start_msa5, start_msa6 : std_logic; 
signal seqqq : std_logic_vector(3 downto 0);
signal se4q,se5q,se6q,vseq : std_logic_vector(3 downto 0);
signal gameover3, gameover4,gameover5,gameover6 : std_logic; 

Begin

inst1_debounce: debounce_hdl port map(
	sig_in => bouton1,
	sig_out => debout1,
	clkin => clk2khz
);

inst2_debounce: debounce_hdl port map(
	sig_in => bouton2,
	sig_out => debout2,
	clkin => clk2khz
);

inst3_debounce: debounce_hdl port map(
	sig_in => bouton3,
	sig_out => debout3,
	clkin => clk2khz
);

inst4_debounce: debounce_hdl port map(
	sig_in => bouton4,
	sig_out => debout4,
	clkin => clk2khz
);





inst_diviseur_clk: diviseur_clk port map(
	clkin => clkin,
	clk1hz => clk1hz,
	clk1_5hz => clk1_5hz,
	clk2hz => clk2hz,
	clk4hz => clk4hz,
	clk16hz => clk16hz,
	clk2khz => clk2khz
);

Inst_msa3_hdl: msa3_hdl port map(
	clkin => clkin,
	rst => rst,
	b0 => b0,
	gameover => gameover3,
	start => start_msa3, 
	b1 => b1,
	gs => gs,
	enable_del => enable_del3
);

Inst_msa4_hdl: msa4_hdl port map(
	clkin => clkin,
	rst => rst,
	b0 => b0,
	gameover => gameover4,
	start => start_msa4, 
	b1 => b1,
	gs => gs,
	enable_del => enable_del4
);

Inst_msa5_hdl: msa5_hdl port map(
	clkin => clkin,
	rst => rst,
	b0 => b0,
	start => start_msa5, 
	b1 => b1,
	gs => gs,
	gameover => gameover5,
	enable_del => enable_del5
);


Inst_msa6_hdl: msa6_hdl port map(
	clkin => clkin,
	rst => rst,
	b0 => b0,
	start => start_msa6, 
	b1 => b1,
	gs => gs,
	gameover => gameover6,
	enable_del => enable_del6
);



b0 <= '1' when debout2 = '1' or debout4 = '1' else '0';
b1 <= '1' when debout3 = '1' or debout4 = '1' else '0';

-- Description du Get something
gs <= '1' when debout4 = '1' or debout3 = '1' or debout2 = '1' or debout1 = '1' else
'0';
 


dipslay3 : process (rst, clk1hz)
type sequence is array (0 to 2) of std_logic_vector( 3 downto 0);
variable seqq : sequence := ("0001", "0010", "0100");
variable cpt : integer := 0;
 
begin 
    seqqq <="0000";
	 if(rst ='1') then 
	 cpt:=0;
		start_msa3 <= '0';
    elsif(clk1hz'event and clk1hz = '1') then 
	  if(cpt < 3) then 
	  seqqq <= seqq(cpt); cpt := cpt+1; 
	  else start_msa3 <='1';
	  end if;	
      	  
    end if; 
end process;


dipslay4 : process (rst, clk1_5hz)
type sequence is array (0 to 3) of std_logic_vector( 3 downto 0);
variable seqq : sequence := ("1000", "0001", "0010", "1000");
variable cpt : integer := 0;
 
begin 
    se4q <="0000";
	 if(rst ='1') then 
	 cpt:=0; 
	 start_msa4 <= '0';
    elsif(clk1_5hz'event and clk1_5hz = '1' and enable_del3 = '1') then 
	  if(cpt < 4) then 
	  se4q <= seqq(cpt); cpt := cpt+1; 
	  else start_msa4 <='1';
	  end if;	
      	  
    end if; 
end process;

dipslay5 : process (rst, clk2hz)
type sequence is array (0 to 4) of std_logic_vector( 3 downto 0);
variable seqq : sequence := ("0100", "0010", "0001", "0010", "1000");
variable cpt : integer := 0;
 
begin 
    se5q <="0000";
	 if(rst ='1') then 
	 cpt:=0; 
	 start_msa5 <= '0';
    elsif(clk2hz'event and clk2hz = '1' and enable_del4 = '1') then 
	  if(cpt < 5) then 
	  se5q <= seqq(cpt); cpt := cpt+1; 
	  else start_msa5 <='1';
	  end if;	
      	  
    end if; 
end process;

dipslay6 : process (rst, clk2hz)
type sequence is array (0 to 5) of std_logic_vector( 3 downto 0);
variable seqq : sequence := ("0001", "1000", "0100", "0001", "1000", "0010");
variable cpt : integer := 0;
 
begin 
    se6q <="0000";
	 if(rst ='1') then 
	 cpt:=0; 
	 start_msa6 <= '0';
    elsif(clk2hz'event and clk2hz = '1' and enable_del5 = '1') then 
	  if(cpt < 6) then 
	  se6q <= seqq(cpt); cpt := cpt+1; 
	  else start_msa6 <='1';
	  end if;	
      	  
    end if; 
end process;


victory : process (rst, clk4hz) 
begin 
    
if(rst = '1')then
 vseq <= "0000";
 elsif(clk4hz'event and clk4hz = '1')then
 if(enable_del6 = '1')then
	vseq(0)<= clk2hz;
	vseq(2) <= vseq(0);
	vseq(1) <= vseq(2);
	vseq(3) <= vseq(1);
	end if;
	end if;
end process;

 
gameover <= '1' when ( gameover3 = '1' or gameover4 = '1' or gameover5 = '1' or gameover6 = '1')  else '0';  
seq <= seqqq + se4q + se5q + se6q + vseq; -- will be modified   

end Behavioral;