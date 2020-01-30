`timescale 1ns/1ns
module GenMS(input[7:0] D,input clock,r,output[7:0] w);
  logic[7:0] u;
  
  genvar i;
  generate for(i=0;i<8;i=i+1) begin;
  MS_LatchRST u (r,D[i],clock,w[i]);
end endgenerate

endmodule


module testGenMS();

  logic[7:0] d,w;
  logic r,clock;

  GenMS M1(d,clock,r,w);

  initial begin;
    r=0;
    clock =0;
    d=0;
     #200 r=1;
     #500 r=0;
     #10000 $finish;

     end 
  
    always #(100) clock=~clock;
    always #(150) d=~d;
   
endmodule
  
