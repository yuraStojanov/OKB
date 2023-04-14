
module clk_wiz_wrapper(
        input clk_in1_n,
        input clk_in1_p,
     //   input reset,
        output clk_out1,
        output clk_out2
    );
    
    clk_wiz_0 clk_wiz_0_inst(
        .clk_in1_n(clk_in1_n),
        .clk_in1_p(clk_in1_p),
    //    .reset(reset),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2)
    );
endmodule
