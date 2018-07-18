library IEEE;
use IEEE.std_logic_1164.all;

entity Half_Adder is
	port (A   : in std_logic;
			B	 : in std_logic;
			Sum : out std_logic;
			Cout: out std_logic
			);
end Half_Adder;

architecture Half_Adder_Arch of Half_Adder is
begin
	Cout <= A and B;
	Sum  <= A xor B;
end Half_Adder_Arch;