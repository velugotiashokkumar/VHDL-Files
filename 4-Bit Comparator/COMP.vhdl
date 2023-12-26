library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           x : out STD_LOGIC;
           y : out STD_LOGIC;
           z : out STD_LOGIC);
end comparator;

architecture Behavioral of comparator is
begin
process(a,b)
begin
if a>b then
    x<='1';y<='0';z<='0';
elsif a<b then
    x<='0';y<='1';z<='0';
elsif a=b then
    x<='0';y<='0';z<='1';
end if;
end process;
end Behavioral;
