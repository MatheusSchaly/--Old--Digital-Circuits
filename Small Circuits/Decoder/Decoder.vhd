library IEEE;
use IEEE.std_logic_1164.all;

entity Decoder is
	port (Binary	   : in std_logic_vector(3 downto 0);
			Display_Hexa: out std_logic_vector(6 downto 0)
			);
end Decoder;

architecture Decoder_Arch of Decoder is
begin
		Display_Hexa <= "1000000" when Binary = "0000" else -- 0
							 "1111001" when Binary = "0001" else -- 1
  							 "0100100" when Binary = "0010" else -- 2
  							 "0110000" when Binary = "0011" else -- 3
  							 "0011001" when Binary = "0100" else -- 4
  							 "0010010" when Binary = "0101" else -- 5
  							 "0000010" when Binary = "0110" else -- 6
  							 "1111000" when Binary = "0111" else -- 7
  							 "0000000" when Binary = "1000" else -- 8
  							 "0010000" when Binary = "1001" else -- 9
  							 "0001000" when Binary = "1010" else -- A
  							 "0000011" when Binary = "1011" else -- b
  							 "1000110" when Binary = "1100" else -- C
  							 "0100001" when Binary = "1101" else -- d
  							 "0000110" when Binary = "1110" else -- E
  							 "0001110"; 	                      -- F
end Decoder_Arch;