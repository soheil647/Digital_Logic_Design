`timescale 1ns/1ns

//CGE
module CG_CGE(input a,b,e,output w);
  wire ab,bb,eb,o1,o2,oo;
  not#(7) n1(bb,b);
  nand#(10) a1(o1,a,bb);
  not#(7) n2(aa,a);
  nand#(10) a2(o2,b,aa);
  not#(7) n3(eb,e);
  nand#(10) a3(oo,o1,o2);
  nor#(14) L(w,oo,ob);
endmodule
