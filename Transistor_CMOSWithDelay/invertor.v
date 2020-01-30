`timescale 1ns/1ns
module invert1(input a,output w);
 supply1 vdd;
 supply0 gnd;
 nmos#(5,6,7)T1(w,gnd,a);
 pmos#(3,4,5)T2(w,vdd,a);
endmodule
 
