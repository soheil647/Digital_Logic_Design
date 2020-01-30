`timescale 1ns/1ns
module PGG(input a,b,e,g,output w);
not #(5,7) (gb,g);
not #(5,7) (bb,b);
nand #(15,12) (n1,a,e,bb);
nand #(10,8) (w,n1,gb);
endmodule

  
  module testbenchpgg();
  wire w;
  reg a=1,b=1,e=1,g=0;
  PGG UUT(a,b,e,g,w);
  initial begin
     #200
    b=0;
    #200
    b=1;
    #500
     a=1;b=1;e=0;g=0;
    #100
     a=1;b=0;e=0;g=0;
    #100
    a=1;b=0;e=1;g=1;
     #100
     a=1;b=0;e=1;g=0;
    #100
    a=1;b=0;e=0;g=0;
    #500
  $stop;
  end
endmodule


