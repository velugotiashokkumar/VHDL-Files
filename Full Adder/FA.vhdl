library IEEE;
use IEEE.std_logic_1164.all;

entity FA is
port ( a,b,cin : in std_logic;
	   s,cout : out std_logic);
end FA;

architecture behavioural of FA is
begin
	process (a,b,cin) is
	begin
		s <= a xor b xor cin;
		cout <= (a and b)or(b and cin)or(cin and a);
	end process;
end behavioural;