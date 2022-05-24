library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port( a :in std_logic_vector ( 1 downto 0);
		b: out std_logic_vector ( 3 downto 0));
end decoder;

architecture data_decoder of decoder is
begin
	process (a) is
		begin
			if (a = "00") then
				b <= "0001";
			elsif (a = "01") then
				b <= "0010";
			elsif (a = "10") then
				b <=  "0100";
			else
				b <= "1000";
			end if;
		end process;
end data_decoder;