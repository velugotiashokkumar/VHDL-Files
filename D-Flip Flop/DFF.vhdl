library IEEE;
use IEEE.std_logic_1164.all;

entity DFF is
port(clock,D : in std_logic;
	Q,Qbar : out std_logic);
end DFF;
architecture behavioural of DFF is
begin
process (clock) is
begin
	if (clock='1' and clock'EVENT) then
	if (D='0') then
	    Q<=D;Qbar<= not(D);
	elsif (D='1') then
	    Q<=D;Qbar<= not(D);
	end if;end if;
end process;
end behavioural;
