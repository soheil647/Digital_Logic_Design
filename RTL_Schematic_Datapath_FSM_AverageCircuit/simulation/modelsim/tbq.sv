`timescale 1ps/1ps
module testQ();
  logic[7:0] a;
  logic[10:0] o;
  logic c=0,rst,s,r;
  
  avrage GG(	
  .ready(r),
	.rst(rst),
	.clk(c),
	.start(s),
	.w(o),
	.DATAin(a));
  
  always #(20) c=~c;
  
  initial begin
    rst=0;
    s=0;
    #(40) s=1;
    #(50) s=0;
    #(37) a=10101010;
    #(37) a=11111111;
    #(37) a=10101010;
    #(37) a=11111111;
    #(37) a=10101010;
    #(37) a=11111111;     
    #(37) a=10101010;
    #(37) a=11111111;
  end
endmodule