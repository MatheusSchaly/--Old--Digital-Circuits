library IEEE;
use IEEE.Std_Logic_1164.all;

entity top_calc is
	port (SW	  : in std_logic_vector(9 downto 0);
			KEY  : in std_logic_vector(1 downto 0);
			CLOCK: in std_logic;
			HEX0 : out std_logic_vector(6 downto 0);
			HEX1 : out std_logic_vector(6 downto 0);
			LEDR : out std_logic_vector(9 downto 0)
			);
end top_calc;

architecture topo_stru of top_calc is

	signal Q0, Q3, F, F1, F2, F3, F4: std_logic_vector(7 downto 0);
	signal Q1, Q2: std_logic_vector(3 downto 0);
	signal ENABLE: std_logic_vector(1 downto 0);
	signal SELECAO: std_logic_vector(1 downto 0);
	
	component C1
		port (A: in std_logic_vector(7 downto 0);
				B: in std_logic_vector(7 downto 0);
				F: out std_logic_vector(7 downto 0)
				);
	end component;
	
	component C2
		port (A: in std_logic_vector(7 downto 0);
				B: in std_logic_vector(7 downto 0);
				F: out std_logic_vector(7 downto 0)
				);
	end component;
	
	component desloc_1_bit_esq
		port (clk: 	  in std_logic;
				enable: in std_logic;
				reset:  in std_logic;
				sr_in:  in std_logic_vector(7 downto 0);
				sr_out: out std_logic_vector(7 downto 0)
				);
	end component;
	
	component desloc_1_bit_dir
		port (clk: 	  in std_logic;
				enable: in std_logic;
				reset:  in std_logic;
				sr_in:  in std_logic_vector(7 downto 0);
				sr_out: out std_logic_vector(7 downto 0)
				);
	end component;
	
	component mux4x1
		port (w, x, y, z: in std_logic_vector(7 downto 0);
				s: in std_logic_vector(1 downto 0);
				m: out std_logic_vector(7 downto 0)
				);
	end component;
	
	component Decod7seg
		port (C: in std_logic_vector(3 downto 0);
				F: out std_logic_vector(6 downto 0)
				);
	end component;
	
	component D_4FF
		port (CLK, RST, EN: in std_logic;
				D: in std_logic_vector(3 downto 0);
				Q: out std_logic_vector(3 downto 0)
				);
	end component;
	
	component D_8FF
		port (CLK, RST, EN: in std_logic;
				D: in std_logic_vector(7 downto 0);
				Q: out std_logic_vector(7 downto 0)
				);
	end component;
	
	component FSMctrl
		port (Clk, Rst, Enter: in std_logic;
				Operacao: in std_logic_vector(1 downto 0);
				Selecao: out std_logic_vector(1 downto 0);
				Enable_1, Enable_2: out std_logic
				);
	end component;
	
begin
	L0 : FSMctrl   		 port map(CLOCK, KEY(0), KEY(1), SW(9 downto 8), SELECAO, ENABLE(0), ENABLE(1));
	L1 : D_8FF 	  			 port map(CLOCK, KEY(0), ENABLE(0), SW(7 downto 0), Q0);
	L2 : C1 		   		 port map(Q0, SW(7 downto 0), F1);
	L3 : C2		 		    port map(Q0, SW(7 downto 0), F2);
	L4 : desloc_1_bit_esq port map(CLOCK, ENABLE(0), KEY(0), SW(7 downto 0), F3);
	L5 : desloc_1_bit_dir port map(CLOCK, ENABLE(0), KEY(0), SW(7 downto 0), F4);
	L6 : mux4x1   			 port map(F1, F2, F3, F4, SELECAO, F);
	L7 : D_4FF 	  			 port map(CLOCK, KEY(0), ENABLE(1), F(3 downto 0), Q1);
	L8 : D_4FF 	  			 port map(CLOCK, KEY(0), ENABLE(1), F(7 downto 4), Q2);
	L9 : D_8FF				 port map(CLOCK, KEY(0), ENABLE(1), F, Q3);
	L10: Decod7seg			 port map(Q1, HEX0);
	L11: Decod7seg 		 port map(Q2, HEX1);
	LEDR <= "00" & Q3;
end topo_stru;