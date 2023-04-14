module zynq_ultra_ps_e_0_wrapper(

        input emio_spi0_sclk_i,
        input emio_spi0_s_i,
        input emio_spi0_ss_i_n,

    //    input maxihpm0_lpd_aclk,
        output emio_spi0_sclk_o,
        output emio_spi0_m_o,
        input emio_spi0_m_i,
        output emio_spi0_ss_o_n
    );
    zynq_ultra_ps_e_0 zynq_ultra_ps_e_0_inst(
        .emio_spi0_sclk_i(emio_spi0_sclk_i),
        .emio_spi0_s_i(emio_spi0_s_i),
        .emio_spi0_ss_i_n(emio_spi0_ss_i_n),
  //      .maxihpm0_lpd_aclk(maxihpm0_lpd_aclk),
        .emio_spi0_sclk_o(emio_spi0_sclk_o),
        .emio_spi0_m_o(emio_spi0_m_o),
        .emio_spi0_m_i(emio_spi0_m_i),
        .emio_spi0_ss_o_n(emio_spi0_ss_o_n)
    );
        
endmodule
