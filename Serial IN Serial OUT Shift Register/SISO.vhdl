library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SISO is
    Port ( i : in STD_LOGIC;
           o : out STD_LOGIC;
           clock : in STD_LOGIC;
           clear : in std_logic;
           q : inout STD_LOGIC_VECTOR (3 downto 0));
end SISO;

architecture Behavioral of SISO is
begin
process(clock,clear)
begin
if (clear<='0')then
    if (rising_edge(clock))then
        q(3 downto 1)<=q(2 downto 0);
        q(0)<=i;
        o<=q(3);
    end if;
else
    q<="0000";o<='0';
end if;
end process;
end Behavioral;
