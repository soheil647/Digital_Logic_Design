`timescale 1ns/1ns
module nor1(input a,b,output w);
  wire f;
  supply1 Vdd;
  supply0 Gnd;
  pmos #(5,6,7) T1(f,Vdd,a),
                T2(w,f,b);
  nmos #(3,4,5) T3(w,Gnd,a),
                T4(w,Gnd,b); 
endmodule


