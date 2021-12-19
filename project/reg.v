module register(clock,r1,r2,write_r,data,wr,out_r1,out_r2);
input clock,wr;
input  [4 : 0] r1, r2, write_r;
input [15 : 0] data;
output reg [15 : 0] out_r1, out_r2;

reg    [15 : 0] mem [1023 : 0];

always @(posedge clock)
begin

if(wr == 0)
    begin
    out_r1 = mem[r1];
    out_r2 = mem[r2];
    end

else if(wr == 1)
    begin
    mem[write_r] = data;
    end

end

endmodule
