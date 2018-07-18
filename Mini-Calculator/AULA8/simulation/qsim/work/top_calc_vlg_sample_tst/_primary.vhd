library verilog;
use verilog.vl_types.all;
entity top_calc_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        KEY             : in     vl_logic_vector(1 downto 0);
        SW              : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end top_calc_vlg_sample_tst;
