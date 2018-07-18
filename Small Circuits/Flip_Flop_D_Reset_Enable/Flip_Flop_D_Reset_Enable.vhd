library IEEE;
use IEEE.std_logic_1164.all;

entity Flip_Flop_D_Reset_Enable is
	port (Clock : in std_logic;
			Reset : in std_logic;
			Enable: in std_logic;
			D		: in std_logic;
			Q		: out std_logic
			);
end Flip_Flop_D_Reset_Enable;

architecture Flip_Flop_D_Reset_Enable_Arch of Flip_Flop_D_Reset_Enable is
begin
	process(Clock, Reset, Enable, D)
	begin
		if Reset = '0' then
			Q <= '0';
		elsif Clock'event and Clock = '1' then
			if Enable = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end Flip_Flop_D_Reset_Enable_Arch;