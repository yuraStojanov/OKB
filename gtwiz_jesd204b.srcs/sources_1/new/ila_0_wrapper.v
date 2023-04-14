module ila_0_wrapper(
        input clk,
        input probe0,
        input probe1,
        input probe2,
        input probe3,
        input [1:0] probe4,
        input [1:0]probe5

    );


        ila_0 ila_0_inst(
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4),
        .probe5(probe5)


        );

endmodule



/*
module ila_0_wrapper(
        input clk,
        input probe0,// clk_in1_n
        input probe1,// clk_in1_p
        input probe2,// clk_out1
        input probe3,// clk_out2
        input probe4,// FMC_HPC0_GBTCLK0_M2C_C_P
        input probe5, // FMC_HPC0_GBTCLK0_M2C_C_N
        input probe6, // gtrefclk00_in0
        input probe7, // FMC_HPC0_GBTCLK1_M2C_C_P
        input probe8, // FMC_HPC0_GBTCLK1_M2C_C_N
        input probe9, // gtrefclk00_in1
        input probe10, //gtpowergood_out
        input probe11, // gtwiz_reset_dobe_out
        input [127:0] probe12,//gtwiz_userdata_tx_in[127:0]
        input [3:0] probe13,
        input [3:0] probe14,
        input probe15


    );


        ila_0 ila_0_inst(
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4),
        .probe5(probe5),
        .probe6(probe6),
        .probe7(probe7),
        .probe8(probe8),
        .probe9(probe9),
        .probe10(probe10),
        .probe11(probe11),
        .probe12(probe12),
        .probe13(probe13),
        .probe14(probe14),
        .probe15(probe15)
        

        );

endmodule
*/