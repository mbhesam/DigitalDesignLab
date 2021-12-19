module instruction(clock,address,instruction);
input clock;
input  [8 : 0] addr;
output reg [31 : 0] instruction;

reg    [31 : 0] mem [1023 : 0];

initial
begin
    $readmemb("codec.txt",mem);
end

always @(posedge clock)
 instruction = mem[addr];

endmodule
