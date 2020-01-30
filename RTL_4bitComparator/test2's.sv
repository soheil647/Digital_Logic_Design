`timescale 1ns/1ns
module testpart7();
  logic [3:0] a=4'b1100 , b=4'b0100;
  logic E, L, G, outE , outL , outG , firstE=1, firstL=1, firstG=1;
  part7 UUT( a [3:0] , b [3:0] ,  firstE , firstL , firstG ,  E , L , G , outE , outL , outG);
  initial begin
    #(350)
    a=5'b0100;
    #(350)
    a=5'b0111;
    #(350)
    a=5'b1101;
    #(350)
    a=5'b0011;
    #(350)
    a=5'b0001;
  end
endmodule