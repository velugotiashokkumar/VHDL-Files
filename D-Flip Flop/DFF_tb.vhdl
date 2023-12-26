library IEEE;
use IEEE.std_logic_1164.all;

entity DFF_tb is
end DFF_tb;

architecture tb of DFF_tb is
component DFF is
port(clock,D : in std_logic;
      Q,Qbar : out std_logic);
end component;
signal clock,Q,D : std_logic :='0';
signal Qbar : std_logic :='1';
begin
	uut : DFF port map(clock,D,Q,Qbar);
	process
	begin
	clock<='0';wait for 10 ns;
	clock<='1';wait for 10 ns;
	clock<='0';wait for 10 ns;
	clock<='1';wait for 10 ns;
	wait;
	end process;
	stim_proc : process
	begin
	D<='0';wait for 20 ns;
	D<='1';wait for 20 ns;
	wait;
	end process;
end tb;