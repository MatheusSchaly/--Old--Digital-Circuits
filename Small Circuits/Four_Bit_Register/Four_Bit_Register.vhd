library IEEE;
use IEEE.std_logic_1164.all;

entity Four_Bit_Register is
	port (Clock : in std_logic;
			Reset : in std_logic;
			Enable: in std_logic;
			D		: in std_logic_vector(3 downto 0);
			Q		: out std_logic_vector(3 downto 0)
			);
end Four_Bit_Register;

architecture Four_Bit_Register_Arch of Four_Bit_Register is
begin
	process(Clock, Reset, D)
	begin
		if Reset = '0' then
			Q <= "0000";
		elsif Clock'event and Clock = '1' then
			if Enable = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end Four_Bit_Register_Arch;