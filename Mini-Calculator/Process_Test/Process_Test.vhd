library IEEE;
use IEEE.std_logic_1164.all;

entity Process_Test is
	port (Clock: in std_logic;
			Result: out std_logic
			);
end Process_Test;

architecture Process_Arch of Process_Test is
begin
	
	P1: process(Clock)
	begin
		if Clock = '0' then
			Result <= '0';
		else
			Result <= '1';
		end if;
	end process;
	
end Process_Arch;