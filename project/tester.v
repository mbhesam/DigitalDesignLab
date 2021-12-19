module tester;
reg clock,wr;
reg  [ 4 : 0] r1, r2, write_r;
reg  [15 : 0] data;
wire [15 : 0] out_r1, out_r2;

register a0 (clock,r1,r2,write_r,data,wr,out_r1,out_r2);

initial
clock = 1'b0;
always
#5 clock = ~clock;


initial
begin
wr = 1;
write_r = 5'b00000;

data = $random;
#10;
write_r =5'b00001;

data = $random;
#10;
write_r =5'b00010;

data = $random;
#10;
write_r =5'b00011;

data = $random;
#10;
wr = 0;
r1 = 5'b00000;
r2 =5'b00000;

#10;
r1 =5'b00001;
r2 =5'b00001;

#10;
r1 =5'b00010;
r2 =5'b00010;

#10;
r1 =5'b00011;
r2 =5'b00011;

#10;
#10;
end
endmodule
