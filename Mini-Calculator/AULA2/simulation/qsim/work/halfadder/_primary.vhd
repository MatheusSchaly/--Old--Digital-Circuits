library verilog;
use verilog.vl_types.all;
entity halfadder is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        Sum             : out    vl_logic;
        Carry           : out    vl_logic
    );
end halfadder;
