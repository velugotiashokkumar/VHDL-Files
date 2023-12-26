library IEEE;
use IEEE.std_logic_1164.all;

entity JKFF_tb is
end JKFF_tb;

architecture tb of JKFF_tb is
component JKFF is
port(clock,reset,j,k : in std_logic;
		Q,Qbar : out std_logic);
end component;
signal clock,reset,j,k : std_logic;
signal Q : std_logic :='0';
signal Qbar : std_logic :='1';
begin
	uut : JKFF port map(clock,reset,j,k,Q,Qbar);
	process
	begin
	reset<='1';wait for 50 ns;
	reset<='0';wait for 50 ns;
	wait;
	end process;

	clk_proc : process
	begin
	clock<='0';wait for 10 ns;
	clock<='1';wait for 10 ns;
	clock<='0';wait for 10 ns;
	clock<='1';wait for 10 ns;
	clock<='0';wait for 10 ns;
	clock<='1';wait for 10 ns;
	clock<='0';wait for 10 ns;
	clock<='1';wait for 10 ns;
	clock<='0';wait for 10 ns;
	clock<='1';wait for 10 ns;
	wait;
	end process;
	
	stim_proc : process
	begin
	j<='0';k<='0';wait for 20 ns;
	j<='0';k<='1';wait for 20 ns;
	j<='1';k<='0';wait for 20 ns;
	j<='1';k<='1';wait for 20 ns;
	j<='0';k<='0';wait for 20 ns;
	wait;
	end process;
end tb;
