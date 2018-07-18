library IEEE;
use IEEE.Std_Logic_1164.all;

entity top_calc is
	port (SW: in std_logic_vector(9 downto 0);
			HEX0: out std_logic_vector(6 downto 0);
			LEDR: out std_logic_vector(9 downto 0)
			);
end top_calc;

architecture topo_stru of top_calc is

	signal F, F1, F2, F3, F4: std_logic_vector(3 downto 0);
	
	component C1
		port(A: in std_logic_vector(3 downto 0);
			  B: in std_logic_vector(3 downto 0);
			  F: out std_logic_vector(3 downto 0)
			  );
	end component;
	
	component C2
		port (A: in std_logic_vector(3 downto 0);
				B: in std_logic_vector(3 downto 0);
				F: out std_logic_vector(3 downto 0)
				);
	end component;
	
	component C3
		port (A: in std_logic_vector(3 downto 0);
				B: in std_logic_vector(3 downto 0);
				F: out std_logic_vector(3 downto 0)
				);
	end component;
	
	component C4
		port (A: in std_logic_vector(3 downto 0);
				F: out std_logic_vector(3 downto 0)
				);
	end component;
	
	component mux4x1
		port(w, x, y, z: in std_logic_vector(3 downto 0);
			  s: in std_logic_vector(1 downto 0);
			  m: out std_logic_vector(3 downto 0)
			  );
	end component;
	
	component Decod7seg
		port (C: in std_logic_vector(3 downto 0);
				F: out std_logic_vector(6 downto 0)
				);
	end component;
	
begin
	L0: C1 port map(SW(3 downto 0), SW(7 downto 4), F1);
	L1: C2 port map(SW(3 downto 0), SW(7 downto 4), F2);
	L2: C3 port map(SW(3 downto 0), SW(7 downto 4), F3);
	L4: C4 port map(SW(3 downto 0), F4);
	L5: mux4x1 port map(F1, F2, F3, F4, SW(9 downto 8), F);
	L6: Decod7seg port map(F, HEX0);
	LEDR <= "000000" & F;
end topo_stru;