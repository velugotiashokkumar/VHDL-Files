library IEEE;
use IEEE.std_logic_1164.all;
entity BG_tb is
end BG_tb; 

architecture tb of BG_tb is
component BG is
port(
  a,b: in std_logic;
  c,d,e,f,g,h,i: out std_logic);
end component;
signal a,b,c,d,e,f,g,h,i :std_logic;
begin

  uut: BG port map(a,b,c,d,e,f,g,h,i);

  process
  begin
    a <= '0';b <= '0';wait for 1 ns;
      
    a <= '0';b <= '1';wait for 1 ns;
    
    a <= '1';b <= '0';wait for 1 ns;
    
    a <= '1';b <= '1';wait for 1 ns;
    wait;
  end process;
end tb;