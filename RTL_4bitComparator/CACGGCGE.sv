`timescale 1ns/1ns

module COMP(input a0,a1,a2,a3,b0,b1,b2,b3,output g3,e3);
  supply0 gnd;
  supply1 vdd;
  PGG  ce0(a0,b0,vdd,gnd,g0);
  PGE  cg0(a0,b0,vdd,e0);
  PGG  ce1(a1,b1,e0,g0,g1);
  PGE  cg1(a1,b1,e0,e1);
  PGG  ce2(a2,b2,e1,g1,g2);
  PGE  cg2(a2,b2,e1,e2);
  PGG  ce3(a3,b3,e2,g2,g3);
  PGE  cg3(a3,b3,e2,e3);
endmodule

  
