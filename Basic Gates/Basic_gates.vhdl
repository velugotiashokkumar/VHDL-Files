 library IEEE;
use IEEE.std_logic_1164.all;

entity BG is
port(
  a,b: in std_logic;
  c,d,e,f,g,h,i: out std_logic);
end BG;

architecture behavioural of BG is
begin
  process(a, b) is
  begin
    c <= a or b;
    d <= a and b;
    e <= not a;
    f <= a nor b;
    g <= a nand b;
    h <= a xor b;
    i <= a xnor b;
  end process;
end behavioural;