library IEEE;
use IEEE.std_logic_1164.all;
entity MUX is
port(i1,i2,i3,i4,i5,i6,i7,i8,s1,s2,s3 : in std_logic;
		y : out std_logic);
end MUX;
architecture behavioural of MUX is
begin
	process(s1,s2,s3)is
      begin
    	if (s1='0' and s2='0' and s3='0') then
        	y <= i1;
        elsif (s1='0' and s2='0' and s3='1') then
        	y <= i2;
        elsif (s1='0' and s2='1' and s3='0') then
        	y <= i3;
        elsif (s1='0' and s2='1' and s3='1') then
        	y <= i4;
        elsif (s1='1' and s2='0' and s3='0') then
        	y <= i5;
        elsif (s1='1' and s2='0' and s3='1') then
        	y <= i6;
        elsif (s1='1' and s2='1' and s3='0') then
        	y <= i7;
        elsif (s1='1' and s2='1' and s3='1') then
        	y <= i8;
        else
        	y <= '0';
        end if;
     end process;
end behavioural;