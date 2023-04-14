//10 000
module counter(
    input clk_in,
    input enable_in,
    
    output signal_out
    );
    
    reg signal = 1;
    reg [15:0] counter = 0;
    
    assign signal_out = signal;
    
    always @(posedge clk_in) begin
        counter = counter + 1'b1;
        if (counter == 16'h2710) begin
            signal = 0;
        end
    end

endmodule
