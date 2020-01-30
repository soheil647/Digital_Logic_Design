`timescale 1ns/1ns

//CGE
module CG_CGE(input a,b,e,output w);
  wire ab,bb,eb,o1,o2,oo;
  not#(5) n1(bb,b);
  nand#(8) a1(o1,a,bb);
  not#(5) n2(aa,a);
  nand#(8) a2(o2,b,aa);
  not#(5) n3(eb,e);
  nand#(8) a3(oo,o1,o2);
  nor#(12) L(w,oo,ob);
endmodule


`timescale 1ns/1ns
module testCG_CGENEW();
  reg a=0,b=0,e=0;
  wire w;
  CG_CGE test4(a,b,e,w);
  initial begin 
  a=1;
  #(50) a=0;b=1;e=1;
  #(50) a=1;b=1;e=1;
  #(50) a=0;b=0;e=0;
  #(50) b=0;
  end
endmodule

  
  