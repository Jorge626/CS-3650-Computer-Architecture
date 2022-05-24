library ieee;
use ieee.std_logic_1164.all;

entity comparator is
	port( a, b : in std_logic_vector (3 downto 0);
		greater, less, equal : out std_logic
		);
end comparator;

architecture data_comparator of comparator is
begin
	greater <= '1' when (A > B)
	else '0';
	equal <= '1' when (A = B)
	else '0';
	less <= '1' when (A < B)
	else '0';
end data_comparator;