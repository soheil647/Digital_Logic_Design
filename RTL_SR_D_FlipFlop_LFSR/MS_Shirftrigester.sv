`timescale 1ns/1ns
module MS_Shirftrigester(input si,r,clock,output[7:0] w);
  MS_LatchRST T1(r,si,clock,w[0]);
  MS_LatchRST T2(r,w[0],clock,w[1]);
  MS_LatchRST T3(r,w[1],clock,w[2]);
  MS_LatchRST T4(r,w[2],clock,w[3]);
  MS_LatchRST T5(r,w[3],clock,w[4]);
  MS_LatchRST T6(r,w[4],clock,w[5]);
  MS_LatchRST T7(r,w[5],clock,w[6]);
  MS_LatchRST T8(r,w[6],clock,w[7]);
endmodule


module Test_MS_Shift();
  logic[7:0] w;
  logic si,r=0,clock=0;
  MS_Shirftrigester Y0(si,r,clock,w);

    initial repeat (100) #(25) clock=~clock;
    
    initial begin;
      #(30) si=0;
      #(30) si=1;
      #(30) si=0;r=1;
      #(30) si=1;r=0;
    end
  endmodule
  