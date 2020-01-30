`timescale 1ns/1ns
module D_L(input D,clock,output w);
  logic o1,o2,q,Db;
  not#(4,6) N1(Db,D);
  nand#(8,12) A1(o1,D,clock);
  nand#(8,12) A2(o2,Db,clock);
  nand#(8,12) A4(w,o2,q);
  nand#(8,12) A3(q,o1,w);
endmodule



module TestD_L();
  logic D,clock,w;
  SR_L Latch(D,clock,w);
  
  initial begin;
    #(20)clock=1;
    #(150)D=1;
    #(150)D=0;
    #(150)D=1;
    #(150)D=0;
  end
endmodule
