library IEEE;
use IEEE.std_logic_1164.all;

entity Flip_Flop_D is
	port (Clock: in std_logic;
			B	  : in std_logic;
			Q	  : out std_logic
			);
end Flip_Flop_D;

architecture Flip_Flop_D_Arch of Flip_Flop_D is
begin
	process (Clock, B)
	begin
		if (Clock'event and Clock = '1') then
			Q <= B;
		end if;
	end process;
end Flip_Flop_D_Arch;