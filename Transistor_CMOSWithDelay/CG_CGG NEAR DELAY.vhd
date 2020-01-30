
`timescale  1ns/1ns

module CG_CGG(input a,b,e,g,output w);
  wire gb,bb,eb,o1;
  not #(7) n1(bb,b);
  nand #(10) a1(o1,a,bb,e);
  not #(7) n2(gb,g);
  nand #(10) a2(w,o1,gb);
endmodule


