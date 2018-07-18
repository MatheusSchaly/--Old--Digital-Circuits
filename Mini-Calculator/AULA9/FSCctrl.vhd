library IEEE;
use IEEE.std_logic_1164.all;

entity FSMctrl is
	port(Clk, Rst, Enter: in std_logic;
		  Operacao: in std_logic_vector(1 downto 0);
		  Selecao: out std_logic_vector(1 downto 0);
		  Enable_1, Enable_2: out std_logic
		  );
end FSMctrl;

architecture FSM_beh of FSMctrl is
	type states is (S0, S1, S2, S3, S4, S5, S6, S7);
	signal EA, PE: states; -- Estado Atual, Proximo Estado
	
begin
	
	P1: process(Clk, Rst)
	begin
		if Rst = '0' then
			EA <= S0;
		elsif Clk'event and Clk = '1' then
			EA <= PE;
		end if;
	end process;
	
	P2: process (EA, Enter, Operacao)
	begin
		case EA is
		
			when S0 =>
				if Enter = '1' then
					PE <= S0;
				else
					PE <= S1;
				end if;
				Enable_1 <= '0';
				Enable_2 <= '0';
				Selecao <= "00";
				
			when S1 =>
				if Enter = '0' then
					PE <= S1;
				else
					PE <= S2;
				end if;
				Enable_1 <= '1';
				Enable_2 <= '0';
				Selecao <= "00";
				
			when S2 => -- Operador
				if Operacao = "00" then
					PE <= S3; -- Soma
				elsif Operacao = "01" then
					PE <= S4; -- OR
				elsif Operacao = "10" then
					PE <= S5; -- SHIFT LEFT
				else
					PE <= S6; -- SHIFT RIGHT
				end if;
				Enable_1 <= '0';
				Enable_2 <= '0';
				
			when S3 =>
				if Enter = '0' then
					PE <= S7;
				else
					PE <= S3;
				end if;
				Enable_1 <= '0';
				Enable_2 <= '0';
				Selecao <= "00";
				
			when S4 =>
				if Enter = '0' then
					PE <= S7;
				else
					PE <= S4;
				end if;
				Enable_1 <= '0';
				Enable_2 <= '0';
				Selecao <= "01";
				
			when S5 =>
				PE <= S0;
				Enable_1 <= '1';
				Enable_2 <= '1';
				Selecao <= "10";
				
			when S6 =>
				PE <= S0;
				Enable_1 <= '1';
				Enable_2 <= '1';
				Selecao <= "11";
				
			when S7 =>
				PE <= S0;
				Enable_1 <= '0';
				Enable_2 <= '1';
				
		end case;
	end process;
	
end FSM_beh;
				