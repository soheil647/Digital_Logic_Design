`timescale 1ns/1ns
module testnor();
  wire w;
  reg a,b;
  nor1 N1(a,b,w);
 initial begin 
   a=1;b=0;
  #(25) b=1;
  #(25) a=0;b=0;
  #(25) b=1;
 end
endmodule
