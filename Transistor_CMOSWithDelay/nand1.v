`timescale 1ns/1ns
module nand1(input a,b,output w);
  wire f;
  supply1 Vdd;
  supply0 Gnd;
  pmos #(5,6,7) T1(w,Vdd,a),
                T2(w,Vdd,b);
  nmos #(3,4,5) T3(f,Gnd,a),
                T4(w,f,b);
endmodule

