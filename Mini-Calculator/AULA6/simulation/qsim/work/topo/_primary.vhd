library verilog;
use verilog.vl_types.all;
entity topo is
    port(
        SW0             : in     vl_logic;
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        SW7             : in     vl_logic;
        SW89            : in     vl_logic_vector(9 downto 8);
        LEDR            : out    vl_logic
    );
end topo;
