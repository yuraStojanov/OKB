`timescale 1ps / 1ps

module gthbuf_tb;
       reg I = 1;
       reg IB = 0;
       wire O;
        
        reg CEB = 0;
        //assign CEB = 0;
        
        
        wire ODIV2;
        //assign ODIV2 = 0;
        
        always #6734 I = ~I;
        always #6734 IB = ~IB;

        
        IBUFDS_GTE4 #(
            .REFCLK_EN_TX_PATH(1'b0),
            .REFCLK_HROW_CK_SEL(2'b10),
            .REFCLK_ICNTL_RX(2'b00)
        )

        IBUFDS_GTE4_inst0(
            .O(O),
            .ODIV2(ODIV2),
            .CEB(CEB),
            .I(I),
            .IB(IB)
        );

endmodule
