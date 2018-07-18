library verilog;
use verilog.vl_types.all;
entity topo_vlg_check_tst is
    port(
        HEX             : in     vl_logic_vector(6 downto 0);
        LEDR            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end topo_vlg_check_tst;
