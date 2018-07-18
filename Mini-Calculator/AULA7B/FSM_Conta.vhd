library IEEE;
use IEEE.std_logic_1164.all;

entity FSM_Conta is
	port(clock   : in std_logic;
		  reset   : in std_logic;
		  contagem: out std_logic_vector(3 downto 0)
		  );
end;

architecture FSM_Conta_bhv of FSM_Conta is
	type STATES is (E0, E1, E2, E3, E4);
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
				contagem <= "0001";
				PE <= E1;
			when E1 =>
				contagem <= "0010";
				PE <= E2;
			when E2 =>
				contagem <= "0011";
				PE <= E3;
			when E3 =>
				contagem <= "0100";
				PE <= E4;
			when E4 =>
				contagem <= "0101";
				PE <= E0;
		end case;
	end process;
	
end FSM_Conta_bhv;