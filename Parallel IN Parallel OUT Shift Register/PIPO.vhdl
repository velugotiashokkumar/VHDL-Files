library IEEE;
use IEEE.STD_LOGIC_1164.ALL

entity PIPO is
    Port ( d : in STD_LOGIC_VECTOR (3 downto 0);
           clock : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0));
end PIPO;

architecture Behavioral of PIPO is
begin
process(clock,clear)
begin
if(clear<='0')then
    if(rising_edge(clock))then
        q<=d;
    end if;
else
    q<="0000";
end if;
end process;
end Behavioral;
