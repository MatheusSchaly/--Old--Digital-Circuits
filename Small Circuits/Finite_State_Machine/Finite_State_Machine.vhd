library IEEE;
use IEEE.std_logic_1164.all;

entity Finite_State_Machine is
	port (Clock: in std_logic;
			Reset: in std_logic;
			Counter: out std_logic_vector(2 downto 0)
			);
end Finite_State_Machine;

architecture Finite_State_Machine_Arch of Finite_State_Machine is
	type states is (E0, E1, E2, E3, E4);
	signal CE, NE: STATES; -- Current State, Next State

begin
	P1: process(Clock, Reset)
	begin
		if Reset = '1' then
			CE <= E0;
		elsif Clock'event and Clock = '1' then
			CE <= NE;
		end if;
	end process;
	
	P2: process(CE)
	begin
		case CE is
			when E0 =>
				Counter <= "001";
				NE <= E1;
			when E1 =>
				Counter <= "010";
				NE <= E2;
			when E2 =>
				Counter <= "011";
				NE <= E3;
			when E3 =>
				Counter <= "100";
				NE <= E4;
			when E4 =>
				Counter <= "101";
				NE <= E0;
		end case;
	end process;
end Finite_State_Machine_Arch;