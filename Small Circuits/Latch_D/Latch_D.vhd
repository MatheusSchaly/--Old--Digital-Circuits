library IEEE;
use IEEE.std_logic_1164.all;

entity Latch_D is
	port (A: in std_logic;
			B: in std_logic;
			Q: out std_logic
			);
end Latch_D;

architecture Latch_D_Arch of Latch_D is
begin
	process (A, B)
	begin
		if (A = '1') then
			Q <= B;
		end if;
	end process;
end Latch_D_Arch;