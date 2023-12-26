library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity ALU is 
generic ( constant N: natural := 1 ); 
Port ( A, B : in STD_LOGIC_VECTOR(7 downto 0); 
	s : in STD_LOGIC_VECTOR(3 downto 0); 
	y : out STD_LOGIC_VECTOR(7 downto 0); 
 	yc : out std_logic  ); 
end ALU; 

architecture Behavioral of ALU is 

signal tmp : std_logic_vector (7 downto 0);
begin 
process(A,B,s)
 begin
 case(s) is
 when "0000" =>  tmp <= A + B ;
 when "0001" =>  tmp <= A - B ;
 when "0010" =>  tmp <= std_logic_vector(to_unsigned((to_integer(unsigned(A)) * to_integer(unsigned(B))),8)) ;
 when "0011" =>  tmp <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) / to_integer(unsigned(B)),8)) ;
 when "0100" =>tmp <= std_logic_vector(unsigned(A) sll N);
 when "0101" =>   tmp <= std_logic_vector(unsigned(A) srl N);
 when "0110" =>  tmp <= std_logic_vector(unsigned(A) rol N);
 when "0111" =>  tmp <= std_logic_vector(unsigned(A) ror N);
 when "1000" =>tmp <= A and B;
 when "1001" =>tmp <= A or B;
 when "1010" =>  tmp <= A xor B;
 when "1011" =>  tmp <= A nor B;
 when "1100" => tmp <= A nand B; 
when "1101" => tmp <= A xnor B; 
when "1110" => 

if(A>B) then
 tmp <= x"01" ;
 else
 tmp <= x"00" ; 
end if;
 when "1111" => 
 if(A=B) then
tmp <= x"01" ; 
else 
tmp <= x"00" ;
 end if;
 when others => tmp <= A + B ;
 end case; 
end process;
y <= tmp;
end Behavioral;