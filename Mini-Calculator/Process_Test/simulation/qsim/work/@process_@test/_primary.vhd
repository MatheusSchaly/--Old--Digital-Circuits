library verilog;
use verilog.vl_types.all;
entity Process_Test is
    port(
        Clock           : in     vl_logic;
        Result          : out    vl_logic
    );
end Process_Test;
