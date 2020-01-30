`timescale 1ns/1ns
module testcge();
  reg a=0,b=0,e=0;
  wire w;
  cge test2(a,b,e,w);
  initial begin 
  a=1;e=1;
  #(50) a=0;b=1;
  #(50) a=1;
  #(50) a=0;b=0;e=0;
  #(50) a=1;e=1;
  end
endmodule
