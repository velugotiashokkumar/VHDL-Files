library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIPO is
    Port ( s : in STD_LOGIC;
           clock : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : inout STD_LOGIC_VECTOR (3 downto 0));
end SIPO;

architecture Behavioral of SIPO is
begin
process(clear,clock)
begin
if(clear<='0')then
    if(rising_edge(clock))then
        q(3 downto 1)<=q(2 downto 0);
        q(0)<=s;
    end if;
else
    q<="0000";
end if;
end process;
end Behavioral;
