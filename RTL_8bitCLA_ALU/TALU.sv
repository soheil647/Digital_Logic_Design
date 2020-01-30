`timescale 1ns/1ns
module testALU();
  
  logic[7:0] A,B,w;
  logic[2:0] F;
  logic CarryOut;
  logic g;
  
  ALU UT (A,B,F,w,g,CarryOut);
   initial begin
     #(150) F=3'b000;A=8'b00001111;B=8'b11111000;
     #(150) F=3'b001;A=8'b00001111;B=8'b11111000;
     #(150) F=3'b010;A=8'b00001111;B=8'b11111000;
     #(150) F=3'b011;A=8'b00001111;B=8'b11111000;
     #(150) F=3'b100;A=8'b00001111;B=8'b11111000;
     #(150) F=3'b101;A=8'b00001111;B=8'b11111000;
     #(150) F=3'b110;A=8'b00001111;B=8'b11111000;
     #(150) F=3'b111;A=8'b00001111;B=8'b11111000;
   end
 endmodule