library verilog;
use verilog.vl_types.all;
entity avrage is
    port(
        ready           : out    vl_logic;
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        start           : in     vl_logic;
        w               : out    vl_logic_vector(10 downto 0);
        DATAin          : in     vl_logic_vector(10 downto 0)
    );
end avrage;
