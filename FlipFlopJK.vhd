library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopJK is
port(
	J, K : in std_logic;
	clk : in std_logic;
	Q, Qbar : out std_logic;
	preset, clear : in std_logic
);
end FlipFlopJK;

architecture archFlipFlopJK of FlipFlopJK is
signal Qsignal: std_logic;
	
begin	

	process(clk, clear,preset)
	begin
		if (clear = '0') then
			Qsignal <= '0';
		elsif(preset = '0') then
			Qsignal <= '1';
		elsif(clk'event and clk='0') then	
			if(J = '0' and K = '0') then
				Qsignal <= not Qsignal;
			elsif (J = '0' and K = '1') then
				Qsignal <= '1';
			elsif (J = '1' and K = '0') then
				Qsignal <= '0';
			end if;
		end if;
	end process;
	
	Q <= Qsignal;
	Qbar <= not Qsignal;
	
	
end archFlipFlopJK;
