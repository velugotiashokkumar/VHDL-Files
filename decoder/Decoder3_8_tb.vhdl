library IEEE;
use IEEE.std_logic_1164.all;
 
entity DEC_tb is
end DEC_tb; 

architecture tb of DEC_tb is
component DEC is
port(
  a,b,c: in std_logic;
  o0,o1,o2,o3,o4,o5,o6,o7: out std_logic);
end component;
signal a,b,c,o0,o1,o2,o3,o4,o5,o6,o7 :std_logic;
begin

  uut: DEC port map(a,b,c,o0,o1,o2,o3,o4,o5,o6,o7);

  process
  begin
    a <= '0';b <= '0';c <= '0'; wait for 1 ns;
      
    a <= '0';b <= '0';c <= '1'; wait for 1 ns;
    
    a <= '0';b <= '1';c <= '0'; wait for 1 ns;
    
    a <= '0';b <= '1';c <= '1'; wait for 1 ns;
    
    a <= '1';b <= '0';c <= '0'; wait for 1 ns;
    
    a <= '1';b <= '0';c <= '1'; wait for 1 ns;
    
    a <= '1';b <= '1';c <= '0'; wait for 1 ns;
    
    a <= '1';b <= '1';c <= '1'; wait for 1 ns;
    wait;
  end process;
end tbghdl ;