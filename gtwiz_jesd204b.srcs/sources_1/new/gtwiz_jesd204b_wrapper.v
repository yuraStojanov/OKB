module gtwiz_jesd204b_wrapper (
 
 // input  gtwiz_userclk_tx_reset_in,
  input  gtwiz_userclk_tx_active_in,
  input  gtwiz_userclk_rx_active_in,
  input  gtwiz_reset_clk_freerun_in,
  input  gtwiz_reset_all_in,
  input  gtwiz_reset_tx_pll_and_datapath_in,
  input  gtwiz_reset_tx_datapath_in,
  input  gtwiz_reset_rx_pll_and_datapath_in,
  input  gtwiz_reset_rx_datapath_in,
  input  [127:0] gtwiz_userdata_tx_in,
  //input  [3:0] drpclk_in,
  input  [3:0] gthrxn_in,
  input  [3:0] gthrxp_in,
  input  gtrefclk00_in0,
  input  gtrefclk00_in1,
  input  [3:0] rx8b10ben_in,
  input  [3:0] rxcommadeten_in,
  input  [3:0] rxmcommaalignen_in,
  input  [3:0] rxpcommaalignen_in,
  input  [3:0] rxusrclk_in,
  input  [3:0] rxusrclk2_in,
  input  [3:0] tx8b10ben_in,
  input  [63:0] txctrl0_in,
  input  [63:0] txctrl1_in,
  input  [31:0] txctrl2_in,
  input  [3:0] txusrclk_in,
  input  [3:0] txusrclk2_in,

   
 
  output gtwiz_reset_rx_cdr_stable_out,
  output gtwiz_reset_tx_done_out,
  output gtwiz_reset_rx_done_out,
  output [127:0] gtwiz_userdata_rx_out,
  output [1:0] qpll0outclk_out,
  output [1:0] qpll0outrefclk_out,
  output [1:0] qpll0refclklost_out,
  output [1:0] qpll1refclklost_out,  
  output  [3:0] gthtxn_out,
  output  [3:0] gthtxp_out,
  output  [3:0] gtpowergood_out,
  output  [3:0] gtrefclkmonitor_out,
  output  [3:0] rxbyteisaligned_out,
  output  [3:0] rxbyterealign_out,
  output  [3:0] rxcommadet_out,
  output  [63:0] rxctrl0_out,
  output  [63:0] rxctrl1_out,
  output  [31:0] rxctrl2_out,
  output  [3:0] rxpmaresetdone_out,
  output  txoutclk_out,
  output   [3:0] txpmaresetdone_out
);


   wire [1:0]gtrefclk00_in;
   assign gtrefclk00_in[0] = gtrefclk00_in0 ;
   assign gtrefclk00_in[1] = gtrefclk00_in1 ;
    
  // ===================================================================================================================
  // CORE INSTANCE
  // ===================================================================================================================

  // Instantiate the core, mapping its enabled ports to example design ports and helper blocks as appropriate
  gtwizard_ultrascale_0 gtwizard_ultrascale_0_inst (
  //.gtwiz_userclk_tx_reset_in (gtwiz_userclk_tx_reset_in),
  .gtwiz_userclk_tx_active_in (gtwiz_userclk_tx_active_in),
  .gtwiz_userclk_rx_active_in (gtwiz_userclk_rx_active_in),
  .gtwiz_reset_clk_freerun_in (gtwiz_reset_clk_freerun_in),
  .gtwiz_reset_all_in (gtwiz_reset_all_in),
  .gtwiz_reset_tx_pll_and_datapath_in (gtwiz_reset_tx_pll_and_datapath_in),
  .gtwiz_reset_tx_datapath_in (gtwiz_reset_tx_datapath_in),
  .gtwiz_reset_rx_pll_and_datapath_in (gtwiz_reset_rx_pll_and_datapath_in),
  .gtwiz_reset_rx_datapath_in (gtwiz_reset_rx_datapath_in),
  .gtwiz_userdata_tx_in (gtwiz_userdata_tx_in),
 // .drpclk_in (drpclk_in),
  .gthrxn_in (gthrxn_in),
  .gthrxp_in (gthrxp_in),
  .gtrefclk00_in(gtrefclk00_in),
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
