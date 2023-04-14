`timescale 1ps / 1ps

module clk_wiz_tb;

    reg CLK_74_25_N = 1;
    reg CLK_74_25_P = 0;
    
    reg gtwiz_reset_all_in = 0;
    
   // reg reset = 0;
    wire clk_out_200;
    wire clk_out_156_25;
    
    always #6734 CLK_74_25_P = ~CLK_74_25_P;
    always #6734 CLK_74_25_N = ~CLK_74_25_N;


initial begin
    gtwiz_reset_all_in = 1;
    #5E7;//5E6
    repeat (100)
      @(clk_out_200);
    gtwiz_reset_all_in = 0;
  end
         
         
    clk_wiz_wrapper clk_wiz_wrapper(
        .clk_in1_n(CLK_74_25_N),
        .clk_in1_p(CLK_74_25_P),
 //       .reset(reset),
        .clk_out1(clk_out_200),
        .clk_out2(clk_out_156_25)
        );
endmodule
