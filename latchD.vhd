library ieee;
use ieee.std_logic_1164.all;

entity latchD is
port(
	D: in std_logic;
	Qsaida: out std_logic
);
end latchD;

architecture archlatchD of latchD is

component latchRS is
port(
	R: in std_logic;
	S: in std_logic;
	Q: out std_logic;
	enable: in std_logic;
	Qbar: out std_logic
	
);
end component;

begin

	RS00: latchRS port map(D, not(D), Qsaida, '1');
	
end archlatchD;



