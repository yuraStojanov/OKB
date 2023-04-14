`timescale 1ps / 1ps

module counter_tb;

reg clk_in = 0;
//reg enable_in;
wire signal_out;
 always #2000 clk_in = ~clk_in;


    counter counter_inst(
    .clk_in( clk_in),
    .enable_in(signal_out),
    
    .signal_out(signal_out)
    );
    


endmodule
