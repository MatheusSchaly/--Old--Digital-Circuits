library verilog;
use verilog.vl_types.all;
entity topo_vlg_sample_tst is
    port(
        SW0             : in     vl_logic;
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end topo_vlg_sample_tst;
