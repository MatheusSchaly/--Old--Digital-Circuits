library IEEE;
use IEEE.Std_Logic_1164.all;

entity C4 is
port (w: in std_logic;
		x: in std_logic;
		y: in std_logic;
		z: in std_logic;
		s0: in std_logic;
		s1: in std_logic;
		F: out std_logic
		);
end C4;

architecture c4_estr of C4 is
begin
	F <= ((w) and (not s1) and (not s0)) or
		  ((x) and (not s1) and (s0)) or
		  ((y) and (s1) and (not s0)) or
		  ((z) and (s1) and (s0));
end c4_estr;