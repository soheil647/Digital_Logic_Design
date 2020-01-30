`timescale 1ns/1ns
module caoneca2();
  logic[3:0] a,b;
  logic firstE,firstG,firstL,E,L,G;
  logic a0,a1,a2,a3,b0,b1,b2,b3,g3,e3;
  bitAssian kAA(a,b,firstG,firstL,firstE,G,L,E);
  COMP KWW(a0,a1,a2,a3,b0,b1,b2,b3,g3,e3);
  initial begin
    #(100) a[3:0]=4'b1111;b[3:0]=4'b0011;a0=1;a1=1;a2=1;a3=1;b0=0;b1=0;b2=1;b3=1;firstL=1;firstG=1;firstL=1;

  end
endmodule
  