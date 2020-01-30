`timescale 1ns/1ns                                                                

module Comperatorbit(input[3:0] a, b,input firstE,firstL ,firstG, output E, L, G);
  logic[4:0] e, l , g;
  genvar i;
  generate for(i=0; i<4; i=i+1) begin :row
    testComp CC(a[i], b[i], e[i], l[i], g[i], e[i+1], l[i+1], g[i+1]); end
  endgenerate
  assign {e[0], l[0], g[0]}={firstE,firstL,firstG};
  assign {E, L, G}={e[4], l[4], g[4]};

endmodule                                                                                                                                                                                                                                                            