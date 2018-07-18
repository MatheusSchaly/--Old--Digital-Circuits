library IEEE;
use IEEE.std_logic_1164.all;

entity desloc_1_bit_dir is
	-- generic (N: natural := 64);
	port (clk: 	  in std_logic;
			enable: in std_logic;
			reset:  in std_logic;
			sr_in:  in std_logic_vector(7 downto 0);
			sr_out: out std_logic_vector(7 downto 0)
			);
end entity;

architecture rtl of desloc_1_bit_dir is
	signal sr: std_logic_vector(7 downto 0); -- N bits register
begin
	process(clk, reset)
	begin
		if (reset = '0') then -- Register's asynchronous reset
			sr <= (others => '0');
		elsif (rising_edge(clk)) then -- Register's clock signal
			if (enable = '1') then -- Register's enable signal
			-- Shifts 1 bit to the right. Most insignificant bit is lost.
			sr(6 downto 0) <= sr_in(7 downto 1);
			sr(7) <= '0';
			end if;
		end if;
	end process;
	sr_out <= sr;
end rtl;