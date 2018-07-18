library IEEE;
use IEEE.std_logic_1164.all;

entity Encoder is
	port (Display_Hexa: in std_logic_vector(6 downto 0);
			Binary		: out std_logic_vector(3 downto 0)
			);
end Encoder;

architecture Encoder_Arch of Encoder is
begin
		Binary <= "0000" when Display_Hexa = "1000000" else -- 0
					 "0001" when Display_Hexa = "1111001" else -- 1
  					 "0010" when Display_Hexa = "0100100" else -- 2
  					 "0011" when Display_Hexa = "0110000" else -- 3
 			  		 "0100" when Display_Hexa = "0011001" else -- 4
  					 "0101" when Display_Hexa = "0010010" else -- 5
  					 "0110" when Display_Hexa = "0000010" else -- 6
  					 "0111" when Display_Hexa = "1111000" else -- 7
  					 "1000" when Display_Hexa = "0000000" else -- 8
  					 "1001" when Display_Hexa = "0010000" else -- 9
  					 "1010" when Display_Hexa = "0001000" else -- A
  					 "1011" when Display_Hexa = "0000011" else -- b
  					 "1100" when Display_Hexa = "1000110" else -- C
  					 "1101" when Display_Hexa = "0100001" else -- d
  					 "1110" when Display_Hexa = "0000110" else -- E
  					 "1111"; 	   		                	    -- F
end Encoder_Arch;