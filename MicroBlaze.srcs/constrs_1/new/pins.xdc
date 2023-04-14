
set_property IOSTANDARD LVDS_25 [get_ports diff_clock_rtl_0_clk_p]
set_property PACKAGE_PIN C11 [get_ports diff_clock_rtl_0_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports diff_clock_rtl_0_clk_n]
set_property PACKAGE_PIN C10 [get_ports diff_clock_rtl_0_clk_n]

#1 SCL_TX_2
set_property IOSTANDARD LVTTL [get_ports iic_rtl_0_scl_io]
set_property DRIVE 12 [get_ports iic_rtl_0_scl_io] 
set_property SLEW SLOW [get_ports iic_rtl_0_scl_io]
set_property PACKAGE_PIN M13 [get_ports iic_rtl_0_scl_io]

#2 SDA_TX_2
set_property IOSTANDARD LVTTL [get_ports iic_rtl_0_sda_io]
set_property DRIVE 12 [get_ports iic_rtl_0_sda_io]
set_property SLEW SLOW [get_ports iic_rtl_0_sda_io]
set_property PACKAGE_PIN R13 [get_ports iic_rtl_0_sda_io]

#3 SDA_PWR_2
set_property IOSTANDARD LVTTL [get_ports spi_rtl_1_ss_io]
set_property DRIVE 12 [get_ports spi_rtl_1_ss_io]
set_property SLEW SLOW [get_ports spi_rtl_1_ss_io]
set_property PACKAGE_PIN M16 [get_ports spi_rtl_1_ss_io]

#4 SCL_PWR_2
set_property IOSTANDARD LVTTL [get_ports reset_rtl_0]
set_property DRIVE 12 [get_ports reset_rtl_0]
set_property SLEW SLOW [get_ports reset_rtl_0]
set_property PACKAGE_PIN M17 [get_ports reset_rtl_0]

#5 SDA_TX_1
set_property IOSTANDARD LVTTL [get_ports spi_rtl_0_io0_io]
set_property DRIVE 12 [get_ports spi_rtl_0_io0_io]
set_property SLEW SLOW [get_ports spi_rtl_0_io0_io]
set_property PACKAGE_PIN M18 [get_ports spi_rtl_0_io0_io]

#6 SCL_TX_1
set_property IOSTANDARD LVTTL [get_ports spi_rtl_0_io1_io]
set_property DRIVE 12 [get_ports spi_rtl_0_io1_io]
set_property SLEW SLOW [get_ports spi_rtl_0_io1_io]
set_property PACKAGE_PIN R12 [get_ports spi_rtl_0_io1_io]

#7 SCL_RX_2
set_property IOSTANDARD LVTTL [get_ports spi_rtl_0_ss_io]
set_property DRIVE 12 [get_ports spi_rtl_0_ss_io]
set_property SLEW SLOW [get_ports spi_rtl_0_ss_io]
set_property PACKAGE_PIN P14 [get_ports spi_rtl_0_ss_io]

#8 SDA_RX_1
set_property IOSTANDARD LVTTL [get_ports spi_rtl_1_io0_io]
set_property DRIVE 12 [get_ports spi_rtl_1_io0_io]
set_property SLEW SLOW [get_ports spi_rtl_1_io0_io]
set_property PACKAGE_PIN R18 [get_ports spi_rtl_1_io0_io]

#9 SDA_RX_2
set_property IOSTANDARD LVTTL [get_ports spi_rtl_1_io1_io]
set_property DRIVE 12 [get_ports spi_rtl_1_io1_io]
set_property SLEW SLOW [get_ports spi_rtl_1_io1_io]
set_property PACKAGE_PIN N14 [get_ports spi_rtl_1_io1_io]

