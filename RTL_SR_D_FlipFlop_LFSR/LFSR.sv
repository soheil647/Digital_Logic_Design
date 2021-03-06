`timescale 1ns/1ns
module LFSR(input clock,r,output [7:0]w);
logic sin;
logic u[4:0];
xor(u[0],w[4],w[0]);
xor(u[1],u[0],w[5]);
xor(u[2],u[1],w[6]);
assign sin = u[2];
alwshift X(sin,clock,r,w);

endmodule

module LFSR_tb();
logic clock=0;
logic r=1;
wire [7:0]w;
always#(87) clock=~clock;
LFSR G(clock,r,w);
initial begin
 #50 r=0;
 #50 r=1;
 #50 r=0;
end
endmodule

