`timescale 1ns/1ns
//test
module TCLA();

logic[7:0] a,b,w;
logic carryin,carryout;
  CLAadder g1(a ,b ,carryin,w,carryout);
  initial begin
    carryin=1;
    #(50) a=8'b00110001; b=8'b00110100;
    #(50) a=8'b00001001; b=8'b00001100;
    #(50) a=8'b11111111; b=8'b11111111;
    #(50) a=8'b11111111; b=8'b00000000;
    #(50) a=8'b11110000; b=8'b11111111;
    #(50) a=8'b11110000; b=8'b00001111;
  end 
endmodule
