`timescale 1ns/1ns
module testCG_CGE();
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

  
  
