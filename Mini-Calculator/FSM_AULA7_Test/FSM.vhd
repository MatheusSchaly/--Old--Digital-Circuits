library IEEE;
use IEEE.std_logic_1164.all;

entity FSM is
	port (clock: in std_logic;
			reset: in std_logic;
			counter: out std_logic_vector(2 downto 0)
			);
end FSM;

architecture FSM_arch of FSM is
	type states is (E0, E1, E2, E3, E4);
	signal EA, PE: STATES; -- Estado Atual, Proximo Estado
	
	
begin
	P1: process(clock, reset)
	begin
		if reset = '1' then
			EA <= E0;
		elsif clock'event and clock = '1' then
			EA <= PE;
		end if;
	end process;
	
	P2: process(EA)
	begin
		case EA is
			when E0 =>
				counter <= "001";
				PE <= E1;
			when E1 =>
				counter <= "010";
				PE <= E2;
			when E2 =>
				counter <= "011";
				PE <= E3;
			when E3 =>
				counter <= "100";
				PE <= E4;
			when E4 =>
				counter <= "101";
				PE <= E0;
		end case;
	end process;
end FSM_arch;