library ieee;
use ieee.std_logic_1164.all;

entity multiplexer is
	port( a,b,c,d :in std_logic;
		s0,s1 : std_logic;
		z: out std_logic);
end multiplexer;

architecture data_multiplexer of multiplexer is
begin
	process (a,b,c,d,s0,s1) is
		begin
			if (s0 = '0' and s1 = '0') then
				z <= a;
			elsif (s0 = '1' and s1 = '0') then
				z <= b;
			elsif (s0 = '0' and s1 = '1') then
				z <= c;
			else
				z <= d;
			end if;
		end process;
end data_multiplexer;