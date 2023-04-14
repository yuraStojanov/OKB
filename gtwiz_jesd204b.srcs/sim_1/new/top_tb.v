`timescale 1ps/1ps 


module top_tb();
  reg CLK_125_P = 1;
  reg CLK_125_N = 0;
  reg  gtwiz_reset_all_in;
  
  wire gtwiz_reset_tx_done_out;
  wire  [3:0] gthtxn_out;
  wire  [3:0] gthtxp_out;
  wire  [3:0] gtpowergood_out;
  
  wire SPI_CSB;
  wire SPI_MISO;
  wire SPI_MOSI;
  wire SPI_SCLK;
  
   
  always #4000 CLK_125_P = ~CLK_125_P;
  always #4000 CLK_125_N = ~CLK_125_N;

  
  initial begin
  gtwiz_reset_all_in = 1;
        #5E6;
    repeat (100)
      @(CLK_125_P);
    gtwiz_reset_all_in = 0;
  end
 
 
  top top(
    .CLK_125_P(CLK_125_P),
    .CLK_125_N(CLK_125_N),
    .gtwiz_reset_all_in(gtwiz_reset_all_in),
    .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
    .gthtxn_out(gthtxn_out),
    .gthtxp_out(gthtxp_out),
    .gtpowergood_out(gtpowergood_out),
  
    .SPI_CSB(SPI_CSB),
    .SPI_MISO(SPI_MISO),
    .SPI_MOSI(SPI_MOSI),
    .SPI_SCLK(SPI_SCLK)
  
  );
 
endmodule

