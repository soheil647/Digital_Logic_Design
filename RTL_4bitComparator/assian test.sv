`timescale 1ns/1ns 
module testComp(input a,b,l,g,e ,output E,L,G);
    assign #(22,26) {L,G,E}={(~a&b)|(~a&l)|(b&l),(a&~b)|(a&g)|(~b&g),(~a&~b&e)|(a&b&e)};
endmodule

module Compfirst();
  logic a,b,l,g,e,E,L,G;
  testComp kAA(a,b,l,g,e,E,L,G);
  initial begin
    #(100) a=1;b=0;l=0;g=1;e=1;
    #(100) b=1;l=0;g=1;e=1;
    #(100) a=0;
  end
endmodule
  
