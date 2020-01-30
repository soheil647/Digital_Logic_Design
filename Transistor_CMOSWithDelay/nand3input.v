`timescale 1ns/1ns
module nand3(input a,b,c,output w);
  wire f,g,h;
  supply1 Vdd;
  supply0 Gnd;
  pmos #(5,6,7) T1(w,Vdd,a),
                T2(w,Vdd,b),
                T3(w,Vdd,c);
  nmos #(3,4,5) T4(f,Gnd,a),
                T5(g,f,b),
                T6(w,g,c);
endmodule  
