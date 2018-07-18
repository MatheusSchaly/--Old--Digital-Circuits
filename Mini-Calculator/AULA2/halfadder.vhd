library IEEE;
use IEEE.Std_Logic_1164.all;

entity halfadder is
port (A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		Sum: out std_logic;
		Carry: out std_logic
		);
end halfadder;

architecture circuito_logico of halfadder is

	signal w_WIRE_1 : std_logic;
	signal w_WIRE_2 : std_logic;
	signal w_WIRE_3 : std_logic;

begin
   w_WIRE_1 <= A xor B;
   w_WIRE_2 <= w_WIRE_1 and C;
   w_WIRE_3 <= A and B;
 
   Sum   <= w_WIRE_1 xor C;
   Carry <= w_WIRE_2 or w_WIRE_3;
end circuito_logico;