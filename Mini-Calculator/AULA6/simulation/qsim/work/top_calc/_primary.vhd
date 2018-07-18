library verilog;
use verilog.vl_types.all;
entity top_calc is
    port(
        SW              : in     vl_logic_vector(9 downto 0);
        KEY             : in     vl_logic_vector(1 downto 0);
        CLOCK           : in     vl_logic;
        HEX0            : out    vl_logic_vector(6 downto 0);
        LEDR            : out    vl_logic_vector(9 downto 0)
    );
end top_calc;
