`timescale 1ns/1ns

module Comp(input a,b,l,g,e,output L,G,E);
  wire ab,bb,o1,w1,o3,xl,xg,xe;
  not#(2,4) N1(ab,a);
  not#(2,4) N2(bb,b);
  nand#(7,6)D1(l1,ab,b);
  nand#(7,6)D2(l2,ab,l);
  nand#(7,6)D3(l3,b,l);
  nand#(7,6)D4(g1,a,bb);
  nand#(7,6)D5(g2,a,g);
  nand#(7,6)D6(g3,bb,g);
  nand#(16,10)D7(e1,ab,bb,e);
  nand#(16,10)D8(e2,a,b,e);
  nand#(14,8)D9(L,l1,l2,l3);
  nand#(14,8)D10(G,g1,g2,g3);
  nand#(8,8)D11(E,e1,e2);
endmodule