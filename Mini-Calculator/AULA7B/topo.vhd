library IEEE;
use IEEE.std_logic_1164.all;

entity topo is
	port(KEY : in std_logic_vector(1 downto 0);
		  LEDR: out std_logic_vector(3 downto 0);
		  HEX : out std_logic_vector(6 downto 0)
		  );
end topo;

architecture topo_beh of topo is
	signal F : std_logic_vector(3 downto 0);
	signal F1: std_logic_vector(6 downto 0);
	
component FSM_Conta
	port(clock   : in std_logic;
		  reset   : in std_logic;
		  contagem: out std_logic_vector(3 downto 0)
		  );
end component;	

component Decod7seg
	port (C: in std_logic_vector(3 downto 0);
			F: out std_logic_vector(6 downto 0)
			);
end component;

begin
	L0: FSM_Conta port map(KEY(0), KEY(1), F);
	L1: Decod7seg port map(F, F1);
	HEX <= F1;
	LEDR <= F;
end topo_beh;