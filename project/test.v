module test;
reg           wr,clock,r;
reg  [15 : 0] data;
wire [ 8 : 0] out, add_now;
wire [31 : 0] instruction;
wire [15 : 0] out_r1, out_r2;

instruction_memory i0 (clock, add_now,instruction);
adder              i1 (clock, addnow, out);
register           i2 (clock, instruction[19:15], instruction[24:20], instruction[11:7], data, wr, out_r1, out_r2);
pc                 i3 (clock,r,out,add_now);

			
initial
begin
clock = 1'b0;
end
always
#5 clock = ~clock;

initial
begin
r = 1;
#10;
r = 0;
wr = 1;

data = $random;
#20;

data = $random;
#20;

data = $random;
#20;

data = $random;
#20;
wr = 0;
end

endmodule
