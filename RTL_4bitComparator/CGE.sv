`timescale 1ns/1ns
module PGE(input a,b,e,output w);
 not #(5,7) (ab,a);
 not #(5,7) (bb,b);
 nand #(10,8) (n1,ab,b);
 nand #(10,8) (n2,bb,a);
 nand #(15,12) (n3,n1,n2,e);
 not #(5,7) (w,n3);
endmodule

module testbenchpge();
  wire w;
  reg a=1,b=1,e=1;
  PGE UUT(a,b,e,w);
  initial begin
    #200
    b=0;
    #200
    b=1;
    #500;
    a=0;b=1;e=1;
    #100
    a=1;b=1;e=0;
    #100
    a=0;b=1;e=0;
    #100
  $stop;
  end
endmodule

