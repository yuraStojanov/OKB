#CLOCKS

#PS_REF_CLK 33.33 MHz U69 SI5341B
#Other net PACKAGE_PIN R24 - PS_REF_CLK Bank 503 - PS_REF_CLK
#CLK_125 125 MHz U69 SI5341B
#set_property PACKAGE_PIN G9 [get_ports "CLK_125_N"] ;
#set_property IOSTANDARD LVDS [get_ports "CLK_125_N"] ;
#set_property PACKAGE_PIN H9 [get_ports "CLK_125_P"] ;
#set_property IOSTANDARD LVDS [get_ports "CLK_125_P"] ;


##CLK_74_25 74.25 MHz U69 SI5341B
set_property IOSTANDARD LVDS [get_ports CLK_74_25_N]
set_property PACKAGE_PIN D15 [get_ports CLK_74_25_P]
set_property PACKAGE_PIN D14 [get_ports CLK_74_25_N]
set_property IOSTANDARD LVDS [get_ports CLK_74_25_P]





#MGTH 226 HPC0 I/F
#set_property PACKAGE_PIN V7 [get_ports "FMC_HPC0_GBTCLK0_M2C_C_N"] ;
#set_property PACKAGE_PIN V8 [get_ports "FMC_HPC0_GBTCLK0_M2C_C_P"] ;
set_property PACKAGE_PIN U9 [get_ports USER_MGT_SI570_CLOCK1_C_N]
set_property PACKAGE_PIN U10 [get_ports USER_MGT_SI570_CLOCK1_C_P]

#MGTH 227 HPC0 I/F
#set_property PACKAGE_PIN T7 [get_ports "FMC_HPC0_GBTCLK1_M2C_C_N"] ;
#set_property PACKAGE_PIN T8 [get_ports "FMC_HPC0_GBTCLK1_M2C_C_P"] ;
set_property PACKAGE_PIN R9 [get_ports USER_MGT_SI570_CLOCK2_C_N]
set_property PACKAGE_PIN R10 [get_ports USER_MGT_SI570_CLOCK2_C_P]


# TX_EN
set_property PACKAGE_PIN G16 [get_ports FPGA_TX_EN1]
set_property IOSTANDARD LVCMOS18 [get_ports FPGA_TX_EN1]
set_property PACKAGE_PIN H16 [get_ports FPGA_TX_EN0]
set_property IOSTANDARD LVCMOS18 [get_ports FPGA_TX_EN0]

# RX_EN
set_property PACKAGE_PIN L15 [get_ports FPGA_RX_EN1]
set_property IOSTANDARD LVCMOS18 [get_ports FPGA_RX_EN1]
set_property PACKAGE_PIN K15 [get_ports FPGA_RX_EN0]
set_property IOSTANDARD LVCMOS18 [get_ports FPGA_RX_EN0]




##FMC
##HPC0 J5
##назначить им стандарт lvds

#set_property LOC R1 [get_ports "gthtxn_out[1]"] ;
###set_property IOSTANDARD LVDS [get_ports "gthtxn_out[1]"] ;
#set_property LOC R2 [get_ports "gthtxp_out[1]"] ;
###set_property IOSTANDARD LVDS [get_ports "gthtxp_out[1]"] ;

#set_property LOC P3 [get_ports "gthtxn_out[0]"] ;
###set_property IOSTANDARD LVDS [get_ports "gthtxn_out[0]"] ;
#set_property LOC P4 [get_ports "gthtxp_out[0]"] ;
###set_property IOSTANDARD LVDS [get_ports "gthtxp_out[0]"] ;

#set_property LOC M4 [get_ports "gthtxp_out[3]"] ;
###set_property IOSTANDARD LVDS [get_ports "gthtxp_out[3]"] ;
#set_property LOC N1 [get_ports "gthtxn_out[3]"] ;
###set_property IOSTANDARD LVDS [get_ports "gthtxn_out[3]"] ;

#set_property LOC J1 [get_ports "gthtxn_out[2]"] ;
###set_property IOSTANDARD LVDS [get_ports "gthtxn_out[2]"] ;
#set_property PACKAGE_PIN J2 [get_ports "gthtxp_out[2]"] ;
###set_property IOSTANDARD LVDS [get_ports "gthtxp_out[2]"] ;

#set_property LOC GTHE3_CHANNEL_X0Y3 [get_cells -hierarchical -filter {NAME =~
#*gen_channel_container[0].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]


#SPI
set_property PACKAGE_PIN L16 [get_ports SPI_SCLK]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_SCLK]

set_property PACKAGE_PIN L17 [get_ports SPI_MOSI]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_MOSI]

set_property PACKAGE_PIN J17 [get_ports SPI_MISO]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_MISO]

set_property PACKAGE_PIN K17 [get_ports SPI_CSB]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_CSB]





create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_wiz_wrapper/clk_wiz_0_inst/inst/clk_out2]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_151]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_152]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_153]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_154]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_2]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_3]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_4]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_5]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_6]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_7]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_8]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_9]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_10]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_11]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_12]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_13]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_14]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_15]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_16]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_17]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_18]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_19]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_20]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_21]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_22]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_23]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_24]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_25]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 1 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_26]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_27]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 1 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_28]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_29]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_30]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_31]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe35]
set_property port_width 1 [get_debug_ports u_ila_0/probe35]
connect_debug_port u_ila_0/probe35 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_32]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe36]
set_property port_width 1 [get_debug_ports u_ila_0/probe36]
connect_debug_port u_ila_0/probe36 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_33]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe37]
set_property port_width 1 [get_debug_ports u_ila_0/probe37]
connect_debug_port u_ila_0/probe37 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_34]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe38]
set_property port_width 1 [get_debug_ports u_ila_0/probe38]
connect_debug_port u_ila_0/probe38 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_35]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe39]
set_property port_width 1 [get_debug_ports u_ila_0/probe39]
connect_debug_port u_ila_0/probe39 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_36]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe40]
set_property port_width 1 [get_debug_ports u_ila_0/probe40]
connect_debug_port u_ila_0/probe40 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_37]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe41]
set_property port_width 1 [get_debug_ports u_ila_0/probe41]
connect_debug_port u_ila_0/probe41 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_38]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe42]
set_property port_width 1 [get_debug_ports u_ila_0/probe42]
connect_debug_port u_ila_0/probe42 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_39]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe43]
set_property port_width 1 [get_debug_ports u_ila_0/probe43]
connect_debug_port u_ila_0/probe43 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_40]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe44]
set_property port_width 1 [get_debug_ports u_ila_0/probe44]
connect_debug_port u_ila_0/probe44 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_41]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe45]
set_property port_width 1 [get_debug_ports u_ila_0/probe45]
connect_debug_port u_ila_0/probe45 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_42]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe46]
set_property port_width 1 [get_debug_ports u_ila_0/probe46]
connect_debug_port u_ila_0/probe46 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_43]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe47]
set_property port_width 1 [get_debug_ports u_ila_0/probe47]
connect_debug_port u_ila_0/probe47 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_44]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe48]
set_property port_width 1 [get_debug_ports u_ila_0/probe48]
connect_debug_port u_ila_0/probe48 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_45]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe49]
set_property port_width 1 [get_debug_ports u_ila_0/probe49]
connect_debug_port u_ila_0/probe49 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_46]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe50]
set_property port_width 1 [get_debug_ports u_ila_0/probe50]
connect_debug_port u_ila_0/probe50 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_47]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe51]
set_property port_width 1 [get_debug_ports u_ila_0/probe51]
connect_debug_port u_ila_0/probe51 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_48]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe52]
set_property port_width 1 [get_debug_ports u_ila_0/probe52]
connect_debug_port u_ila_0/probe52 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_49]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe53]
set_property port_width 1 [get_debug_ports u_ila_0/probe53]
connect_debug_port u_ila_0/probe53 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_50]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe54]
set_property port_width 1 [get_debug_ports u_ila_0/probe54]
connect_debug_port u_ila_0/probe54 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_51]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe55]
set_property port_width 1 [get_debug_ports u_ila_0/probe55]
connect_debug_port u_ila_0/probe55 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_52]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe56]
set_property port_width 1 [get_debug_ports u_ila_0/probe56]
connect_debug_port u_ila_0/probe56 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_53]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe57]
set_property port_width 1 [get_debug_ports u_ila_0/probe57]
connect_debug_port u_ila_0/probe57 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_54]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe58]
set_property port_width 1 [get_debug_ports u_ila_0/probe58]
connect_debug_port u_ila_0/probe58 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_55]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe59]
set_property port_width 1 [get_debug_ports u_ila_0/probe59]
connect_debug_port u_ila_0/probe59 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_56]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe60]
set_property port_width 1 [get_debug_ports u_ila_0/probe60]
connect_debug_port u_ila_0/probe60 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_57]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe61]
set_property port_width 1 [get_debug_ports u_ila_0/probe61]
connect_debug_port u_ila_0/probe61 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_58]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe62]
set_property port_width 1 [get_debug_ports u_ila_0/probe62]
connect_debug_port u_ila_0/probe62 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_59]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe63]
set_property port_width 1 [get_debug_ports u_ila_0/probe63]
connect_debug_port u_ila_0/probe63 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_60]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe64]
set_property port_width 1 [get_debug_ports u_ila_0/probe64]
connect_debug_port u_ila_0/probe64 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_61]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe65]
set_property port_width 1 [get_debug_ports u_ila_0/probe65]
connect_debug_port u_ila_0/probe65 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_62]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe66]
set_property port_width 1 [get_debug_ports u_ila_0/probe66]
connect_debug_port u_ila_0/probe66 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_63]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe67]
set_property port_width 1 [get_debug_ports u_ila_0/probe67]
connect_debug_port u_ila_0/probe67 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_64]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe68]
set_property port_width 1 [get_debug_ports u_ila_0/probe68]
connect_debug_port u_ila_0/probe68 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_65]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe69]
set_property port_width 1 [get_debug_ports u_ila_0/probe69]
connect_debug_port u_ila_0/probe69 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_66]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe70]
set_property port_width 1 [get_debug_ports u_ila_0/probe70]
connect_debug_port u_ila_0/probe70 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_67]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe71]
set_property port_width 1 [get_debug_ports u_ila_0/probe71]
connect_debug_port u_ila_0/probe71 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_68]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe72]
set_property port_width 1 [get_debug_ports u_ila_0/probe72]
connect_debug_port u_ila_0/probe72 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_69]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe73]
set_property port_width 1 [get_debug_ports u_ila_0/probe73]
connect_debug_port u_ila_0/probe73 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_70]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe74]
set_property port_width 1 [get_debug_ports u_ila_0/probe74]
connect_debug_port u_ila_0/probe74 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_71]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe75]
set_property port_width 1 [get_debug_ports u_ila_0/probe75]
connect_debug_port u_ila_0/probe75 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_72]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe76]
set_property port_width 1 [get_debug_ports u_ila_0/probe76]
connect_debug_port u_ila_0/probe76 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_73]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe77]
set_property port_width 1 [get_debug_ports u_ila_0/probe77]
connect_debug_port u_ila_0/probe77 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_74]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe78]
set_property port_width 1 [get_debug_ports u_ila_0/probe78]
connect_debug_port u_ila_0/probe78 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_75]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe79]
set_property port_width 1 [get_debug_ports u_ila_0/probe79]
connect_debug_port u_ila_0/probe79 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_76]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe80]
set_property port_width 1 [get_debug_ports u_ila_0/probe80]
connect_debug_port u_ila_0/probe80 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_77]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe81]
set_property port_width 1 [get_debug_ports u_ila_0/probe81]
connect_debug_port u_ila_0/probe81 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_78]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe82]
set_property port_width 1 [get_debug_ports u_ila_0/probe82]
connect_debug_port u_ila_0/probe82 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_79]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe83]
set_property port_width 1 [get_debug_ports u_ila_0/probe83]
connect_debug_port u_ila_0/probe83 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_80]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe84]
set_property port_width 1 [get_debug_ports u_ila_0/probe84]
connect_debug_port u_ila_0/probe84 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_81]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe85]
set_property port_width 1 [get_debug_ports u_ila_0/probe85]
connect_debug_port u_ila_0/probe85 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_82]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe86]
set_property port_width 1 [get_debug_ports u_ila_0/probe86]
connect_debug_port u_ila_0/probe86 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_83]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe87]
set_property port_width 1 [get_debug_ports u_ila_0/probe87]
connect_debug_port u_ila_0/probe87 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_84]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe88]
set_property port_width 1 [get_debug_ports u_ila_0/probe88]
connect_debug_port u_ila_0/probe88 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_85]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe89]
set_property port_width 1 [get_debug_ports u_ila_0/probe89]
connect_debug_port u_ila_0/probe89 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_86]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe90]
set_property port_width 1 [get_debug_ports u_ila_0/probe90]
connect_debug_port u_ila_0/probe90 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_87]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe91]
set_property port_width 1 [get_debug_ports u_ila_0/probe91]
connect_debug_port u_ila_0/probe91 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_88]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe92]
set_property port_width 1 [get_debug_ports u_ila_0/probe92]
connect_debug_port u_ila_0/probe92 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_89]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe93]
set_property port_width 1 [get_debug_ports u_ila_0/probe93]
connect_debug_port u_ila_0/probe93 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_90]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe94]
set_property port_width 1 [get_debug_ports u_ila_0/probe94]
connect_debug_port u_ila_0/probe94 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_91]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe95]
set_property port_width 1 [get_debug_ports u_ila_0/probe95]
connect_debug_port u_ila_0/probe95 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_92]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe96]
set_property port_width 1 [get_debug_ports u_ila_0/probe96]
connect_debug_port u_ila_0/probe96 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_93]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe97]
set_property port_width 1 [get_debug_ports u_ila_0/probe97]
connect_debug_port u_ila_0/probe97 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_94]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe98]
set_property port_width 1 [get_debug_ports u_ila_0/probe98]
connect_debug_port u_ila_0/probe98 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_95]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe99]
set_property port_width 1 [get_debug_ports u_ila_0/probe99]
connect_debug_port u_ila_0/probe99 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_96]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe100]
set_property port_width 1 [get_debug_ports u_ila_0/probe100]
connect_debug_port u_ila_0/probe100 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_97]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe101]
set_property port_width 1 [get_debug_ports u_ila_0/probe101]
connect_debug_port u_ila_0/probe101 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_98]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe102]
set_property port_width 1 [get_debug_ports u_ila_0/probe102]
connect_debug_port u_ila_0/probe102 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_99]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe103]
set_property port_width 1 [get_debug_ports u_ila_0/probe103]
connect_debug_port u_ila_0/probe103 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_100]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe104]
set_property port_width 1 [get_debug_ports u_ila_0/probe104]
connect_debug_port u_ila_0/probe104 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_101]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe105]
set_property port_width 1 [get_debug_ports u_ila_0/probe105]
connect_debug_port u_ila_0/probe105 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_102]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe106]
set_property port_width 1 [get_debug_ports u_ila_0/probe106]
connect_debug_port u_ila_0/probe106 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_103]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe107]
set_property port_width 1 [get_debug_ports u_ila_0/probe107]
connect_debug_port u_ila_0/probe107 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_104]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe108]
set_property port_width 1 [get_debug_ports u_ila_0/probe108]
connect_debug_port u_ila_0/probe108 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_105]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe109]
set_property port_width 1 [get_debug_ports u_ila_0/probe109]
connect_debug_port u_ila_0/probe109 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_106]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe110]
set_property port_width 1 [get_debug_ports u_ila_0/probe110]
connect_debug_port u_ila_0/probe110 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_107]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe111]
set_property port_width 1 [get_debug_ports u_ila_0/probe111]
connect_debug_port u_ila_0/probe111 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_108]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe112]
set_property port_width 1 [get_debug_ports u_ila_0/probe112]
connect_debug_port u_ila_0/probe112 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_109]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe113]
set_property port_width 1 [get_debug_ports u_ila_0/probe113]
connect_debug_port u_ila_0/probe113 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_110]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe114]
set_property port_width 1 [get_debug_ports u_ila_0/probe114]
connect_debug_port u_ila_0/probe114 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_111]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe115]
set_property port_width 1 [get_debug_ports u_ila_0/probe115]
connect_debug_port u_ila_0/probe115 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_112]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe116]
set_property port_width 1 [get_debug_ports u_ila_0/probe116]
connect_debug_port u_ila_0/probe116 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_113]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe117]
set_property port_width 1 [get_debug_ports u_ila_0/probe117]
connect_debug_port u_ila_0/probe117 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_114]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe118]
set_property port_width 1 [get_debug_ports u_ila_0/probe118]
connect_debug_port u_ila_0/probe118 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_115]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe119]
set_property port_width 1 [get_debug_ports u_ila_0/probe119]
connect_debug_port u_ila_0/probe119 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_116]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe120]
set_property port_width 1 [get_debug_ports u_ila_0/probe120]
connect_debug_port u_ila_0/probe120 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_117]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe121]
set_property port_width 1 [get_debug_ports u_ila_0/probe121]
connect_debug_port u_ila_0/probe121 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_118]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe122]
set_property port_width 1 [get_debug_ports u_ila_0/probe122]
connect_debug_port u_ila_0/probe122 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_119]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe123]
set_property port_width 1 [get_debug_ports u_ila_0/probe123]
connect_debug_port u_ila_0/probe123 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_120]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe124]
set_property port_width 1 [get_debug_ports u_ila_0/probe124]
connect_debug_port u_ila_0/probe124 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_121]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe125]
set_property port_width 1 [get_debug_ports u_ila_0/probe125]
connect_debug_port u_ila_0/probe125 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_122]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe126]
set_property port_width 1 [get_debug_ports u_ila_0/probe126]
connect_debug_port u_ila_0/probe126 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_123]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe127]
set_property port_width 1 [get_debug_ports u_ila_0/probe127]
connect_debug_port u_ila_0/probe127 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_124]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe128]
set_property port_width 1 [get_debug_ports u_ila_0/probe128]
connect_debug_port u_ila_0/probe128 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_125]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe129]
set_property port_width 1 [get_debug_ports u_ila_0/probe129]
connect_debug_port u_ila_0/probe129 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_126]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe130]
set_property port_width 1 [get_debug_ports u_ila_0/probe130]
connect_debug_port u_ila_0/probe130 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_127]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe131]
set_property port_width 1 [get_debug_ports u_ila_0/probe131]
connect_debug_port u_ila_0/probe131 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_128]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe132]
set_property port_width 1 [get_debug_ports u_ila_0/probe132]
connect_debug_port u_ila_0/probe132 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_129]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe133]
set_property port_width 1 [get_debug_ports u_ila_0/probe133]
connect_debug_port u_ila_0/probe133 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_130]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list clk_wiz_wrapper/clk_wiz_0_inst/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 1 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_135]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 1 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_136]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe2]
set_property port_width 1 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_137]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe3]
set_property port_width 1 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list gtwiz_jesd204b_wrapper_inst/gtwizard_ultrascale_0_inst_n_138]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_out_200]
