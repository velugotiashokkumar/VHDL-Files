library IEEE;
use IEEE.std_logic_1164.all;

entity HA is
port(
  a,b: in std_logic;
  c,s: out std_logic);
end HA;

architecture behavioural of HA is
begin
	process (a,b) is
    begin
    c <= a and b;
    s <= a xor b;
    end process;
end behavioural;