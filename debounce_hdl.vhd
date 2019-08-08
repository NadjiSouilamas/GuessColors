library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity debounce_hdl is
	Port ( sig_in : in STD_LOGIC;
	clkin : in STD_LOGIC;
	sig_out : out STD_LOGIC);
end debounce_hdl;

architecture Behavioral of debounce_hdl is

signal Q1, Q2, Q3 : std_logic;

begin

process(clkin)
begin
	if (clkin'event and clkin = '1') then
		Q1 <= sig_in;
		Q2 <= Q1;
		Q3 <= Q2;
	end if;
	end process;
	sig_out <= Q1 and Q2 and (not Q3);
end Behavioral;