`timescale 1ns/1ns
module SR_L(input s,r,clock,output w);
  logic o1,o2,q;
  nand#(8,12) A1(o1,s,clock);
  nand#(8,12) A2(o2,r,clock);
  nand#(8,12) A4(w,o2,q);
  nand#(8,12) A3(q,o1,w);
endmodule


module TestSR_L();
  logic s,r,clock,w;
  SR_L Latch(s,r,clock,w);
  
  initial begin;
    #(20)clock=1;
    #(150)s=1;r=1;
    #(150)s=1;r=0;
    #(150)s=0;r=1;
    #(150)s=1;r=0;
  end
endmodule