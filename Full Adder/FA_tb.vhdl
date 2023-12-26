library IEEE;
use IEEE.std_logic_1164.all;
 
entity FA_tb is
end FA_tb; 

architecture tb of FA_tb is
component FA is
port(
  a,b,cin: in std_logic;
  cout,s: out std_logic);
end component;
signal a,b,cin,cout,s :std_logic;
begin

  uut: FA port map(a,b,cin,cout,s);

  process
  begin
    a <= '0';b <= '0';cin <= '0'; wait for 1 ns;
      
    a <= '0';b <= '0';cin <= '1'; wait for 1 ns;
    
    a <= '0';b <= '1';cin <= '0'; wait for 1 ns;
    
    a <= '0';b <= '1';cin <= '1'; wait for 1 ns;
    
    a <= '1';b <= '0';cin <= '0'; wait for 1 ns;
    
    a <= '1';b <= '0';cin <= '1'; wait for 1 ns;
    
    a <= '1';b <= '1';cin <= '0'; wait for 1 ns;
    
    a <= '1';b <= '1';cin <= '1'; wait for 1 ns;
    wait;
  end process;
end tb;