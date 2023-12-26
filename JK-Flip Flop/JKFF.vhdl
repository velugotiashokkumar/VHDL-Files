library IEEE;
use IEEE.std_logic_1164.all;
entity JKFF is 
port(clock,reset,j,k : in std_logic;
	Q,Qbar : out std_logic);
end JKFF;

architecture behavioural of JKFF is
signal temp :std_logic:='0';
begin
process(clock,reset)
begin
if (reset = '1') then
	temp<='0';
if (clock='1' and clock'event) then
if (j='0' and k='0') then
	temp<=temp;
elsif (j='0' and k='1') then
	temp<='0';
elsif (j='1' and k='0') then
	temp<='1';
elsif (j='1' and k='1') then
	temp<=not(temp);
else 
	temp<='Z';
end if;end if;end if;
Q<=temp after 10 ns;
Qbar<=not temp after 10 ns;
end process;
end behavioural;