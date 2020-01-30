
`timescale 1ns/1ns
module testCG_CGG();
  reg a=0,b=0,e=0,g=0;
  wire w;
  CG_CGG test3(a,b,e,g,w);
  initial begin 
  a=1;
  #(50) a=0;b=1;e=1;
  #(50) a=1;b=1;e=1;g=1;
  #(50) a=0;b=0;e=0;g=0;
  #(50) b=1;e=1;g=1;
  #(50) b=0;a=1;g=0;
  end
endmodule

  
  
