`timescale 1ns/1ns
module part7(input [3:0] a, b , input firstE, firstL , firstG , output E , L , G , outE , outL , outG);
  wire[2:0] g,e,l;
  assign #(22,26) {l[0],g[0],e[0]}={(~(~(~a[0]&b[0])&(~(~(a[0]^b[0])&firstL)))),(~(~(~b[0]&a[0])&(~(~(b[0]^a[0])&firstG)))),(~(a[0]^b[0]))&firstE};
  assign #(22,26) {l[1],g[1],e[1]}={(~(~(~a[1]&b[1])&(~(~(a[1]^b[1])&l[0])))),(~(~(~b[1]&a[1])&(~(~(b[1]^a[1])&g[0])))),(~(a[1]^b[1]))&e[0]};
  assign #(22,26) {l[2],g[2],e[2]}={(~(~(~a[2]&b[2])&(~(~(a[2]^b[2])&l[1])))),(~(~(~b[2]&a[2])&(~(~(b[2]^a[2])&g[1])))),(~(a[2]^b[2]))&e[1]};
  assign #(22,26) {L,G,E}={(~(~(~a[3]&b[3])&(~(~(a[3]^b[3])&l[2])))),(~(~(~b[3]&a[3])&(~(~(b[3]^a[3])&g[2])))),(~(a[3]^b[3]))&e[2]};
  assign outE=(a[3]==b[3])?E:0;
  assign outL=(a[3]!=b[3])?~L:L;
  assign outG=(a[3]!=b[3])?~G:G;
endmodule



