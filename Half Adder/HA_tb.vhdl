library IEEE;
use IEEE.std_logic_1164.all;
 
entity HA_tb is
end HA_tb; 

architecture tb of HA_tb is
component HA is
port(
  a,b: in std_logic;
  c,s: out std_logic);
end component;
signal a,b,c,s :std_logic;
begin

  uut: HA port map(a,b,c,s);

  process
  begin
    a <= '0';b <= '0';wait for 1 ns;
      
    a <= '0';b <= '1';wait for 1 ns;
    
    a <= '1';b <= '0';wait for 1 ns;
    
    a <= '1';b <= '1';wait for 1 ns;
    wait;
  end process;
end tb;