library verilog;
use verilog.vl_types.all;
entity topo is
    port(
        SW0             : in     vl_logic;
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        LEDR            : out    vl_logic
    );
end topo;
