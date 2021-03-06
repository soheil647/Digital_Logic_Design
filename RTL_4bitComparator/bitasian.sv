`timescale 1ns/1ns   
module testingassianment();
  logic[3:0] a,b;
  logic firstG,firstL,firstE,G,L,E;
  bitAssian CAA(a[3:0],b[3:0],firstG,firstL,firstE,G,L,E);
  initial begin
    #(200) a[3:0]=4'b1110;b[3:0]=4'b0001;firstE=1;firstL=1;firstG=1;
    #(200) a[3:0]=4'b0001;b[3:0]=4'b1111;
    #(200) a[3:0]=4'b1010;b[3:0]=4'b1010;
    #(400) a[3:0]=4'b1111;b[3:0]=4'b1110;
    #(400) a[3:0]=4'b1100;b[3:0]=4'b1101;
  end
endmodule
