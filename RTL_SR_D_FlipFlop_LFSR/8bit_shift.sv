`timescale 1ns/1ns
module shift(input sin,input clock,output[7:0] w,output sout);
  D_L u1(sin,clock,w[0]);
  D_L u2(w[0],clock,w[1]);
  D_L u3(w[1],clock,w[2]);
  D_L u4(w[2],clock,w[3]);
  D_L u5(w[3],clock,w[4]);
  D_L u6(w[4],clock,w[5]);
  D_L u7(w[5],clock,w[6]);
  D_L u8(w[6],clock,w[7]);
  assign sout=w[7];
endmodule
  

module TestShift();
  logic sin;
  logic[7:0] w;
  logic clock;
  shift SS(sin,clock,w,sout);
  initial begin;
    clock=0;
    #(20) sin=1;
    #(20) sin=0;
    #(20) clock=1;
    #(100) sin=1;
  end
endmodule
    
  
  


