library IEEE;
use IEEE.std_logic_1164.all;
entity MUX_tb is
end MUX_tb;
architecture tb of MUX_tb is
component MUX is
port(i1,i2,i3,i4,i5,i6,i7,i8,s1,s2,s3 : in std_logic;
		y : out std_logic);
end component;
signal i1,i3,i5,i7 : std_logic :='0';
signal i2,i4,i6,i8 : std_logic :='1';
signal s1,s2,s3,y : std_logic;
begin
uut:MUX port map(i1,i2,i3,i4,i5,i6,i7,i8,s1,s2,s3,y);
	process
    begin
    	s1<='0';s2<='0';s3<='0';wait for 10 ns;
        s1<='0';s2<='0';s3<='1';wait for 10 ns;
        s1<='0';s2<='1';s3<='0';wait for 10 ns;
        s1<='0';s2<='1';s3<='1';wait for 10 ns;
        s1<='1';s2<='0';s3<='0';wait for 10 ns;
        s1<='1';s2<='0';s3<='1';wait for 10 ns;
        s1<='1';s2<='1';s3<='0';wait for 10 ns;
        s1<='1';s2<='1';s3<='1';wait for 10 ns;
	  wait;
	end process;
end tb;