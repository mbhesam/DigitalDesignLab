module pc(clock,r,input,output);
input              clock, r;
input      [8 : 0] input;
output reg [8 : 0] output;

always@(posedge clock)
begin
output = input;
if(r)
out = 0;
end
endmodule
