`timescale 1ns/1ns
module bit_Latch(input[7:0] D,input clock,output[7:0] w);
  D_L u1(D[0],clock,w[0]);
  D_L u2(D[1],clock,w[1]);
  D_L u3(D[2],clock,w[2]);
  D_L u4(D[3],clock,w[3]);
  D_L u5(D[4],clock,w[4]);
  D_L u6(D[5],clock,w[5]);
  D_L u7(D[6],clock,w[6]);
  D_L u8(D[7],clock,w[7]);
endmodule
  
  

