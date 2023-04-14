`timescale 1ps/1ps 
module tb ();
  //reg  gtwiz_userclk_tx_reset_in = 0;
  reg  gtwiz_userclk_tx_active_in = 0;
  reg  gtwiz_userclk_rx_active_in = 0;
  reg  gtwiz_reset_clk_freerun_in = 0;
  reg  gtwiz_reset_all_in = 0;
  reg  gtwiz_reset_tx_pll_and_datapath_in = 0;
  reg  gtwiz_reset_tx_datapath_in = 0;
  reg  gtwiz_reset_rx_pll_and_datapath_in = 0;
  reg  gtwiz_reset_rx_datapath_in = 0;
  reg  [127:0] gtwiz_userdata_tx_in = 0;
 // reg  [3:0] drpclk_in = 0;
  reg  [3:0] gthrxn_in = 0;
  reg  [3:0] gthrxp_in = 0;
  reg  gtrefclk00_in0 = 0;
  reg  gtrefclk00_in1 = 0;
  reg  [3:0] rx8b10ben_in = 0;
  reg  [3:0] rxcommadeten_in = 0;
  reg  [3:0] rxmcommaalignen_in = 0;
  reg  [3:0] rxpcommaalignen_in = 0;
  reg  [3:0] rxusrclk_in = 0;
  reg  [3:0] rxusrclk2_in = 0;
  reg  [3:0] tx8b10ben_in = 0;
  reg  [63:0] txctrl0_in = 0;
  reg  [63:0] txctrl1_in = 0;
  reg  [31:0] txctrl2_in = 0;
  reg  [3:0] txusrclk_in = 0;
  reg  [3:0] txusrclk2_in = 0; 
 
  wire gtwiz_reset_rx_cdr_stable_out;
  wire gtwiz_reset_tx_done_out;
  wire gtwiz_reset_rx_done_out;
  wire [127:0] gtwiz_userdata_rx_out;
  wire [1:0] qpll0outclk_out;
  wire [1:0] qpll0outrefclk_out;
  wire [1:0] qpll0refclklost_out;
  wire [1:0] qpll1refclklost_out;  
  wire  [3:0] gthtxn_out;
  wire  [3:0] gthtxp_out;
  wire  [3:0] gtpowergood_out;
  wire  [3:0] gtrefclkmonitor_out;
  wire  [3:0] rxbyteisaligned_out;
  wire  [3:0] rxbyterealign_out;
  wire  [3:0] rxcommadet_out;
  wire  [63:0] rxctrl0_out;
  wire  [63:0] rxctrl1_out;
  wire  [31:0] rxctrl2_out;
  wire  [3:0] rxpmaresetdone_out;
  wire  txoutclk_out;
  wire   [3:0] txpmaresetdone_out;
 


 always #2000 gtwiz_reset_clk_freerun_in = ~gtwiz_reset_clk_freerun_in;
// always #2500 drpclk_in = ~drpclk_in;
 always #3200 gtrefclk00_in0 = ~gtrefclk00_in0;
 always #3200 gtrefclk00_in1 = ~gtrefclk00_in1;
 always #3200 txusrclk_in = ~txusrclk_in;//?
 always #3200 txusrclk2_in = ~txusrclk2_in;//?
 always #3200 rxusrclk_in = ~rxusrclk_in;//?
 always #3200 rxusrclk2_in = ~rxusrclk2_in;//?
 

 //дата
 


 initial begin
    // че это
 // tx8b10ben_in = 4'hf;
 //  rx8b10ben_in = 4'hf;
    
   rxcommadeten_in = 4'hf;
   rxmcommaalignen_in = 4'hf;
   rxpcommaalignen_in = 4'hf;
    //дата
   gthrxp_in = 4'ha;
   gthrxn_in = ~gthrxp_in;
   gtwiz_userdata_tx_in = 128'habcedf0987654321aabbccddffee9911;
   gtwiz_userclk_rx_active_in = 1;
   gtwiz_userclk_tx_active_in = 1;
  
    gtwiz_reset_all_in = 1;
    #5E6;
    repeat (100)
      @(gtwiz_reset_clk_freerun_in);
    gtwiz_reset_all_in = 0;
  end

 
  // ===================================================================================================================
  // PARAMETERS AND FUNCTIONS
  // ===================================================================================================================

  // Instantiate the core, mapping its enabled ports to example design ports and helper blocks as appropriate
 gtwiz_jesd204b_wrapper gtwiz_jesd204b_wrapper(
 // .gtwiz_userclk_tx_reset_in (gtwiz_userclk_tx_reset_in),
  .gtwiz_userclk_tx_active_in (gtwiz_userclk_tx_active_in),
  .gtwiz_userclk_rx_active_in (gtwiz_userclk_rx_active_in),
  .gtwiz_reset_clk_freerun_in (gtwiz_reset_clk_freerun_in),
  .gtwiz_reset_all_in (gtwiz_reset_all_in),
  .gtwiz_reset_tx_pll_and_datapath_in (gtwiz_reset_tx_pll_and_datapath_in),
  .gtwiz_reset_tx_datapath_in (gtwiz_reset_tx_datapath_in),
  .gtwiz_reset_rx_pll_and_datapath_in (gtwiz_reset_rx_pll_and_datapath_in),
  .gtwiz_reset_rx_datapath_in (gtwiz_reset_rx_datapath_in),
  .gtwiz_userdata_tx_in (gtwiz_userdata_tx_in),
//  .drpclk_in (drpclk_in),
  .gthrxn_in (gthrxn_in),
  .gthrxp_in (gthrxp_in),
  .gtrefclk00_in0 (gtrefclk00_in0),
  .gtrefclk00_in1 (gtrefclk00_in1),
  .rx8b10ben_in (rx8b10ben_in),
  .rxcommadeten_in (rxcommadeten_in),
  .rxmcommaalignen_in (rxmcommaalignen_in),
  .rxpcommaalignen_in (rxpcommaalignen_in),
  .rxusrclk_in(rxusrclk_in),
  .rxusrclk2_in(rxusrclk2_in),
  .tx8b10ben_in (tx8b10ben_in),
  .txctrl0_in (txctrl0_in),
  .txctrl1_in (txctrl1_in),
  .txctrl2_in (txctrl2_in),
  .txusrclk_in (txusrclk_in),
  .txusrclk2_in (txusrclk2_in), 
 
  .gtwiz_reset_rx_cdr_stable_out (gtwiz_reset_rx_cdr_stable_out),
  .gtwiz_reset_tx_done_out (gtwiz_reset_tx_done_out),
  .gtwiz_reset_rx_done_out (gtwiz_reset_rx_done_out),
  .gtwiz_userdata_rx_out (gtwiz_userdata_rx_out),
  .qpll0outclk_out(qpll0outclk_out),
  .qpll0outrefclk_out(qpll0outrefclk_out),
  .qpll0refclklost_out(qpll0refclklost_out),
  .qpll1refclklost_out(qpll1refclklost_out),  
  .gthtxn_out (gthtxn_out),
  .gthtxp_out (gthtxp_out),
  .gtpowergood_out (gtpowergood_out),
  .gtrefclkmonitor_out(gtrefclkmonitor_out),
  .rxbyteisaligned_out (rxbyteisaligned_out),
  .rxbyterealign_out (rxbyterealign_out),
  .rxcommadet_out (rxcommadet_out),
  .rxctrl0_out (rxctrl0_out),
  .rxctrl1_out (rxctrl1_out),
  .rxctrl2_out (rxctrl2_out),
  .rxpmaresetdone_out (rxpmaresetdone_out),
  .txoutclk_out (txoutclk_out),
  .txpmaresetdone_out (txpmaresetdone_out)

);

endmodule