module signal_gen (
  input         clk,
  input         rst_n,

  //Channel 0
  output [13:0] signal0_sampl0,
  output [13:0] signal0_sampl1,
  output  [1:0] signal0_cntrl0,
  output  [1:0] signal0_cntrl1,
  //Channel 1
  output [13:0] signal1_sampl0,
  output [13:0] signal1_sampl1,
  output  [1:0] signal1_cntrl0,
  output  [1:0] signal1_cntrl1,
  input         ready_in
);

wire [13:0] sine_lut64_14bit [63:0];
`include "sine_lut64_14bit.vh"

//Channel 0
reg [13:0] signal0_sampl0_reg;
reg [13:0] signal0_sampl1_reg;
reg  [1:0] signal0_cntrl0_reg;
reg  [1:0] signal0_cntrl1_reg;
reg  [5:0] index0;
//Channel 1
reg [13:0] signal1_sampl0_reg;
reg [13:0] signal1_sampl1_reg;
reg  [1:0] signal1_cntrl0_reg;
reg  [1:0] signal1_cntrl1_reg;
reg  [5:0] index1;

//Create samples and pseudo control bits
//The samples a created from a sine wave LUT
//each lane has different sample data created by simply offsetting into the LUT
//the control bits are just a simple counter clipped to two bits.
always @(posedge clk, negedge rst_n)
begin
  if(!rst_n)
  begin
    //Channel 0
    signal0_sampl0_reg <= sine_lut64_14bit[0];
    signal0_sampl1_reg <= sine_lut64_14bit[1];
    signal0_cntrl0_reg <= 2'd0;  //clipped to two bits
    signal0_cntrl1_reg <= 2'd1;  //clipped to two bits
    index0 <= 0;
    //Channel 1
    signal1_sampl0_reg <= sine_lut64_14bit[2];
    signal1_sampl1_reg <= sine_lut64_14bit[3];
    signal1_cntrl0_reg <= 2'd2;  //clipped to two bits
    signal1_cntrl1_reg <= 2'd3;  //clipped to two bits
    index1 <= 2;
  end
  else
  begin
    if(ready_in)
    begin
      //Channel 0
      signal0_sampl0_reg <= sine_lut64_14bit[index0];
      signal0_sampl1_reg <= sine_lut64_14bit[index0+1];
      signal0_cntrl0_reg <= index0;  //clipped to two bits
      signal0_cntrl1_reg <= index0+1;  //clipped to two bits
      index0 <= index0+2;
      //Channel 1
      signal1_sampl0_reg <= sine_lut64_14bit[index1];
      signal1_sampl1_reg <= sine_lut64_14bit[index1+1];
      signal1_cntrl0_reg <= index1;  //clipped to two bits
      signal1_cntrl1_reg <= index1+1;  //clipped to two bits
      index1 <= index1+2;
    end
  end
end//always

//assign the registered samples and control bits to the outputs
//Channel 0
assign signal0_sampl0 = signal0_sampl0_reg;
assign signal0_sampl1 = signal0_sampl1_reg;
assign signal0_cntrl0 = signal0_cntrl0_reg;
assign signal0_cntrl1 = signal0_cntrl1_reg;
//Channel 1
assign signal1_sampl0 = signal1_sampl0_reg;
assign signal1_sampl1 = signal1_sampl1_reg;
assign signal1_cntrl0 = signal1_cntrl0_reg;
assign signal1_cntrl1 = signal1_cntrl1_reg;

endmodule
