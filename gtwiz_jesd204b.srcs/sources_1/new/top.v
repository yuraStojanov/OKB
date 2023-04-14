module top (
 

  input CLK_74_25_P,
  input CLK_74_25_N,
  

  /*input FMC_HPC0_GBTCLK0_M2C_C_N, // clk 156.25 quad 226
  input FMC_HPC0_GBTCLK0_M2C_C_P, 

  input FMC_HPC0_GBTCLK1_M2C_C_N, // clk 156.25 quad 227
  input FMC_HPC0_GBTCLK1_M2C_C_P, 
*/

  input USER_MGT_SI570_CLOCK1_C_N, // clk 156.25 quad 226
  input USER_MGT_SI570_CLOCK1_C_P, 

  input USER_MGT_SI570_CLOCK2_C_N, // clk 156.25 quad 227
  input USER_MGT_SI570_CLOCK2_C_P, 

//  input  gtwiz_reset_all_in,

  
//  output gtwiz_reset_tx_done_out,
  output  [3:0] gthtxn_out,
  output  [3:0] gthtxp_out,
  //output  [3:0] gtpowergood_out,
  
  output SPI_CSB,
  input SPI_MISO,
  output SPI_MOSI,
  output SPI_SCLK,
  
  /*output gtwiz_reset_tx_done_out,
  output [3:0] gtpowergood_out,
  output clk_out_156_25,
  output gtwiz_reset_all_in,
  output [1:0] qpll0refclklost_out,
  output [1:0] qpll1refclklost_out,
   */
  
  output FPGA_TX_EN0,
  output FPGA_TX_EN1,
  output FPGA_RX_EN0,
  output FPGA_RX_EN1
  
);

    assign FPGA_TX_EN1 = 1;
    assign FPGA_TX_EN0 = 1;
    
    assign FPGA_RX_EN1 = 1;
    assign FPGA_RX_EN0 = 1;
    
    wire clk_gth_125;



    wire gtwiz_userclk_tx_active_in = 1;
    wire gtwiz_userclk_rx_active_in = 1;

    wire txctrl0_in = 0;
    wire txctrl1_in = 0;
    wire txctrl2_in = 0;

    wire gtwiz_reset_tx_done_out;
    wire [3:0] gtpowergood_out;



wire clk_out_200;
wire clk_out_156_25;
wire gtwiz_reset_clk_freerun_in;
wire [1:0] gtrefclk00_in;
wire [3:0] txusrclk_in;
wire [3:0] txusrclk2_in;
assign gtwiz_reset_clk_freerun_in = clk_out_200;

assign gtrefclk00_in[0] = clk_156_25_q226 ;
assign gtrefclk00_in[1] = clk_156_25_q227;


assign txusrclk_in[0] = clk_out_156_25;
assign txusrclk_in[1] = clk_out_156_25;
assign txusrclk_in[2] = clk_out_156_25;
assign txusrclk_in[3] = clk_out_156_25;
assign txusrclk2_in[0] = clk_out_156_25;
assign txusrclk2_in[1] = clk_out_156_25;
assign txusrclk2_in[2] = clk_out_156_25;
assign txusrclk2_in[3] = clk_out_156_25;



wire [3:0]rxusrclk_in;
wire [3:0]rxusrclk2_in;

assign rxusrclk_in[0] = clk_out_156_25;
assign rxusrclk_in[1] = clk_out_156_25;
assign rxusrclk_in[2] = clk_out_156_25;
assign rxusrclk_in[3] = clk_out_156_25;
assign rxusrclk2_in[0] = clk_out_156_25;
assign rxusrclk2_in[1] = clk_out_156_25;
assign rxusrclk2_in[2] = clk_out_156_25;
assign rxusrclk2_in[3] = clk_out_156_25;


wire tx8b10ben_in;
assign tx8b10ben_in = 0;

wire signal_gen_ready;
assign signal_gen_ready = 1;

wire [13:0]signal0_sampl0;
wire [13:0]signal0_sampl1;

wire [1:0]signal0_cntrl0;
wire [1:0]signal0_cntrl1;

wire [13:0]signal1_sampl0;
wire [13:0]signal1_sampl1;

wire [1:0]signal1_cntrl0;
wire [1:0]signal1_cntrl1;

wire [127:0]gtwiz_userdata_tx_in;


always @(posedge gtwiz_reset_clk_freerun_in) begin end

    counter counter_inst(
    .clk_in( gtwiz_reset_clk_freerun_in),
    .enable_in(gtwiz_reset_all_in),
    
    .signal_out(gtwiz_reset_all_in)
    );
    


//assign gtwiz_reset_all_in = 1;





signal_gen signal_gen_inst (
  .clk(clk_out_156_25),
  .rst_n(~gtwiz_reset_all_in),

  //Channel 0
  .signal0_sampl0(signal0_sampl0[13:0]),
  .signal0_sampl1(signal0_sampl1[13:0]),
  .signal0_cntrl0(signal0_cntrl0[1:0]),
  .signal0_cntrl1(signal0_cntrl1[1:0]),
  //Channel 1
  .signal1_sampl0(signal1_sampl0[13:0]),
  .signal1_sampl1(signal1_sampl1[13:0]),
  .signal1_cntrl0(signal1_cntrl0[1:0]),
  .signal1_cntrl1(signal1_cntrl1[1:0]),
  .ready_in(signal_gen_ready)
);

assign gtwiz_userdata_tx_in[127:64] = 0;//?gtwiz_userdata_tx_in[127:64] =  gtwiz_userdata_tx_in[61:61]
transport_layer transport_layer_inst (
  .clk(clk_out_156_25),
  .rst_n(~gtwiz_reset_all_in),

  //Channel 0
  .signal0_sampl0(signal0_sampl0[13:0]),
  .signal0_sampl1(signal0_sampl1[13:0]),
  .signal0_cntrl0(signal0_cntrl0[1:0]),
  .signal0_cntrl1(signal0_cntrl1[1:0]),
  //Channel 1
  .signal1_sampl0(signal1_sampl0[13:0]),
  .signal1_sampl1(signal1_sampl1[13:0]),
  .signal1_cntrl0(signal1_cntrl0[1:0]),
  .signal1_cntrl1(signal1_cntrl1[1:0]),

  .tx_tdata(gtwiz_userdata_tx_in[63:0]),

  .tx_tready(tx_tready)
 // .ready_out(tl_ready)
);



    wire [1:0] qpll0outrefclk_out;

wire [1:0] qpll0refclklost_out;
wire [1:0] qpll1refclklost_out;



  // Instantiate the core, mapping its enabled ports to example design ports and helper blocks as appropriate
  gtwiz_jesd204b_wrapper gtwiz_jesd204b_wrapper_inst (
  
  .rxusrclk_in(rxusrclk_in[3:0]),
  .rxusrclk2_in(rxusrclk_in[3:0]),

  
  //.gtwiz_userclk_tx_reset_in (gtwiz_userclk_tx_reset_in),
  .gtwiz_userclk_tx_active_in (gtwiz_userclk_tx_active_in),
  .gtwiz_userclk_rx_active_in (gtwiz_userclk_rx_active_in),

  .gtwiz_reset_clk_freerun_in (gtwiz_reset_clk_freerun_in),
  .gtwiz_reset_all_in (gtwiz_reset_all_in),
  .gtwiz_userdata_tx_in (gtwiz_userdata_tx_in),
  .gtrefclk00_in0 (clk_156_25_q226),
  .gtrefclk00_in1 (clk_156_25_q227),
  .txctrl0_in (txctrl0_in),
  .txctrl1_in (txctrl1_in),
  .txctrl2_in (txctrl2_in),
  .txusrclk_in (txusrclk_in[3:0]),
  .txusrclk2_in (txusrclk2_in[3:0]), 
  
  .gtwiz_reset_tx_done_out (gtwiz_reset_tx_done_out),
  
  .qpll0outrefclk_out (qpll0outrefclk_out),
  
  .qpll0refclklost_out (qpll0refclklost_out[1:0]),
  .qpll1refclklost_out (qpll1refclklost_out[1:0]),
  
  .gthtxn_out (gthtxn_out),
  .gthtxp_out (gthtxp_out),
  .gtpowergood_out (gtpowergood_out),
  .txoutclk_out (txoutclk_out),
  .txpmaresetdone_out (txpmaresetdone_out)
);

    wire emio_spi0_sclk_i = 0;
    wire emio_spi0_s_i = 0;
    wire emio_spi0_ss_i_n = 0;
zynq_ultra_ps_e_0_wrapper zynq_ultra_ps_e_0_wrapper_inst(
        .emio_spi0_sclk_i(emio_spi0_sclk_i),
        .emio_spi0_s_i(emio_spi0_s_i),
        .emio_spi0_ss_i_n(emio_spi0_ss_i_n),
   //     .maxihpm0_lpd_aclk(maxihpm0_lpd_aclk),
        .emio_spi0_sclk_o(SPI_SCLK),
        .emio_spi0_m_o(SPI_MOSI),
        .emio_spi0_m_i(SPI_MISO),
        .emio_spi0_ss_o_n(SPI_CSB)
);

    clk_wiz_wrapper clk_wiz_wrapper(
        .clk_in1_n(CLK_74_25_N),
        .clk_in1_p(CLK_74_25_P),
      //  .reset(reset),
        .clk_out1(clk_out_200),
        .clk_out2(clk_out_156_25)
        );
        
        



        
     /*
        reg probe0;
        reg probe1;
        reg probe2;
        reg probe3;
        reg probe4;
        reg probe5;
        initial begin
            probe0 <= gtwiz_reset_tx_done_out;
            probe1 <= gtpowergood_out;
            probe2 <= clk_out_156_25;
            probe3 <= gtwiz_reset_all_in;
            probe4 <= qpll0refclklost_out[1:0];
            probe5 <= qpll1refclklost_out[1:0];
        end
     */
      /*
        ila_0_wrapper ila_0_inst_wrapper(
        .clk(clk_out_200),
        .probe0(gtwiz_reset_tx_done_out),
        .probe1(gtpowergood_out),
        .probe2(clk_out_156_25),
        .probe3(gtwiz_reset_all_in),
        .probe4(qpll0refclklost_out[1:0]),
        .probe5(qpll1refclklost_out[1:0])
        );
        */
       
        wire CEB;
        assign CEB = 0;
        wire ODIV2_inst0;
        assign ODIV2_inst0 = 0;
        
        wire ODIV2_inst1;
        assign ODIV2_inst1 = 0;
        
        IBUFDS_GTE4 #(
            .REFCLK_EN_TX_PATH(1'b0),
            .REFCLK_HROW_CK_SEL(2'b10),
            .REFCLK_ICNTL_RX(2'b00)
        )

        IBUFDS_GTE4_inst0(
            .O(clk_156_25_q226),
            .ODIV2(ODIV2_inst0),
            .CEB(CEB),
            .I(USER_MGT_SI570_CLOCK1_C_P),
            .IB(USER_MGT_SI570_CLOCK1_C_N)
        );

        IBUFDS_GTE4 #(
            .REFCLK_EN_TX_PATH(1'b0),
            .REFCLK_HROW_CK_SEL(2'b10),
            .REFCLK_ICNTL_RX(2'b00)
        )

        IBUFDS_GTE4_inst1(
            .O(clk_156_25_q227),
            .ODIV2(ODIV2_inst1),
            .CEB(CEB),
            .I(USER_MGT_SI570_CLOCK2_C_P),
            .IB(USER_MGT_SI570_CLOCK2_C_N)
        );

endmodule
