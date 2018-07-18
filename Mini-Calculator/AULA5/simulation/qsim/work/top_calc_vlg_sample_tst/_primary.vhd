library verilog;
use verilog.vl_types.all;
entity top_calc_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end top_calc_vlg_sample_tst;
