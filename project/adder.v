module adder(clk,input,output);
input clock;
input  [8 : 0] input;
output reg [8 : 0] output;

always @(posedge clock)
 output = input + 1;

endmodule
