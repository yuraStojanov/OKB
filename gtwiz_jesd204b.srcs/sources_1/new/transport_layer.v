module transport_layer (
  input         clk,
  input         rst_n,

  //Channel 0
  input  [13:0]  signal0_sampl0,
  input  [13:0]  signal0_sampl1,
  input   [1:0]  signal0_cntrl0,
  input   [1:0]  signal0_cntrl1,
  //Channel 1
  input  [13:0]  signal1_sampl0,
  input  [13:0]  signal1_sampl1,
  input   [1:0]  signal1_cntrl0,
  input   [1:0]  signal1_cntrl1,

  output [63:0] tx_tdata,
  input         tx_tready,
  
  output        ready_out
);

reg [31:0] lane0_data_reg;
reg [31:0] lane1_data_reg;

reg [1:0] fill;

always @(posedge clk, negedge rst_n)
begin
  if(!rst_n)
  begin
    lane0_data_reg <= 0;
    lane1_data_reg <= 0;
    fill <= 2'b10;
  end
  else
  begin
    if(tx_tready | fill)
    begin
      //map the control words and sample data into lanes
      lane0_data_reg <= {signal0_cntrl1[1:0], signal0_sampl1[13:0], signal0_cntrl0[1:0], signal0_sampl0[13:0]};
      lane1_data_reg <= {signal1_cntrl1[1:0], signal1_sampl1[13:0], signal1_cntrl0[1:0], signal1_sampl0[13:0]};
    end
    fill <= fill >> 1;
  end
end//always

//concatenate the individaual lane busses into one vector
assign tx_tdata = { lane1_data_reg,  lane0_data_reg };

assign ready_out = tx_tready | (|fill);

endmodule