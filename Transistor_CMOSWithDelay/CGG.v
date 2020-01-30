`timescale  1ns/1ns

//CGG
module CGG(input a,b,e,g,output w);
  wire gb,bb,eb,o1;
  inv1 n1(b,bb);
  nand3 a1(a,bb,e,o1);
  inv1 n2(g,gb);
  nand1 a2(o1,gb,w);
endmodule

