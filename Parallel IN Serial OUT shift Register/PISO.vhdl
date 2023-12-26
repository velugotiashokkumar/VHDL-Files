library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PISO is
    Port ( d : in STD_LOGIC_VECTOR (3 downto 0);
           clock : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : inout std_logic_vector (3 downto 0);
           s : out STD_LOGIC);
end PISO;

architecture Behavioral of PISO is
begin
process(clock,clear)
begin
if(clear<='0')then
    if(rising_edge(clock))then
        q<=d;
        q(3 downto 1)<=q(2 downto 0);
        s<=q(3);
    end if;
else
    q<="0000";
end if;
end process;
end Behavioral;
