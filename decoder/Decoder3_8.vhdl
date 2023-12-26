library IEEE;
use IEEE.std_logic_1164.all;

entity DEC is
port ( a,b,c : in std_logic;
	   o0,o1,o2,o3,o4,o5,o6,o7 : out std_logic);
end DEC;

architecture behavioural of DEC is
begin
	process (a,b,c) is
    begin
		o0 <= (not a)and(not b)and(not c);
		o1 <= (not a)and(not b)and(c);
		o2 <= (not a)and(b)and(not c);
		o3 <= (not a)and(b)and(c);
		o4 <= (a)and(not b)and(not c);
		o5 <= (a)and(not b)and(c);
		o6 <= (a)and(b)and(not c);
		o7 <= (a)and(b)and(c);
	end process;
end behavioural;