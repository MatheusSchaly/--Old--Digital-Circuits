library verilog;
use verilog.vl_types.all;
entity FSM_vlg_check_tst is
    port(
        counter         : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end FSM_vlg_check_tst;
