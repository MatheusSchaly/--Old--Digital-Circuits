library verilog;
use verilog.vl_types.all;
entity topo is
    port(
        KEY             : in     vl_logic_vector(1 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        LEDR            : out    vl_logic_vector(9 downto 0)
    );
end topo;
