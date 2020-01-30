

`timescale  1ns/1ns

module CG_CGG(input a,b,e,g,output w);
  wire gb,bb,eb,o1;
  not #(5) n1(bb,b);
  nand #(8) a1(o1,a,bb,e);
  not #(5) n2(gb,g);
  nand #(8) a2(w,o1,gb);
endmodule


module testCG_CGGNEW();
  reg a=0,b=0,e=0,g=0;
  wire w;
  CG_CGG test3(a,b,e,g,w);
  initial begin 
  a=1;
  #(50) a=0;b=1;e=1;
  #(50) a=1;b=1;e=1;g=1;
  #(50) a=0;b=0;e=0;g=0;
  #(50) b=1;e=1;g=1;
  end
endmodule
