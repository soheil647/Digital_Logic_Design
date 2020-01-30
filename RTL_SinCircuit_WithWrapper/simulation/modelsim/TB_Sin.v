`timescale 1 ps/ 1 ps

module TB_Sin();
  
  reg	clk=0,rst,start;
  reg[15:0] x;
  reg[7:0] y;
  wire ready;
  wire[15:0] w;
  
  sin S1(ready,clk,rst,x,y,start,w);
  
  always #(20) clk=~clk;
  
  initial begin 
    rst=0;start=0;x=00000011_10000000;y=0_1100000;
    #27 start=1;
    #27 start=0;
    #297 rst=1;
  end
endmodule
