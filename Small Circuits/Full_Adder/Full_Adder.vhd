library IEEE;
use IEEE.std_logic_1164.all;

entity Full_Adder is
	port (A   : in std_logic;
			B   : in std_logic;
			Cin : in std_logic;
			Sum : out std_logic;
			Cout: out std_logic
			);
end Full_Adder;

architecture Full_Adder_Arch of Full_Adder is
begin
	Sum  <= A xor B xor Cin;
	Cout <= (A and B) or (Cin and A) or (Cin and B);
end Full_Adder_Arch;