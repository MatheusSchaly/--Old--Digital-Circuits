library IEEE;
use IEEE.std_logic_1164.all;

entity Multiplexer is
	port (A, B, C, D: in std_logic_vector(2 downto 0);
			Sel		 : in std_logic_vector(1 downto 0);
			Output    : out std_logic_vector(2 downto 0)
			);
end Multiplexer;

architecture Multiplexer_Arch of Multiplexer is
begin
	Output <= A when Sel = "00" else
				 B when Sel = "01" else
				 C when Sel = "10" else
				 D;
end Multiplexer_Arch;