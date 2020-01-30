
`timescale 1ns/1ns

module CompratoR(input a0,a1,a2,a3,b0,b1,b2,b3,output g3,e3);
  supply0 gnd;
  supply1 vdd;
  CG_CGG  ce0(a0,b0,vdd,gnd,g0);
  CG_CGE  cg0(a0,b0,vdd,e0);
  CG_CGG  ce1(a1,b1,e0,g0,g1);
  CG_CGE  cg1(a1,b1,e0,e1);
  CG_CGG  ce2(a2,b2,e1,g1,g2);
  CG_CGE  cg2(a2,b2,e1,e2);
  CG_CGG  ce3(a3,b3,e2,g2,g3);
  CG_CGE  cg3(a3,b3,e2,e3);
endmodule

module CompratoR_T();
  reg a0=1,a1=0,a2=1,a3=0,b0=1,b1=1,b2=1,b3=0;
  COMP UUT(a0,a1,a2,a3,b0,b1,b2,b3,g3,e3);
  initial begin
    #(100) 
 a0=1;
 b0=1;
 a1=0;
 b1=0;
 a2=1;
 b2=1;
 a3=1;
 b3=1;
   #(100) 
 a0=0;
 b0=1;
 a1=0;
 b1=0;
 a2=0;
 b2=1;
 a3=1;
 b3=0;
 
   #(100) 
 a0=1;
 b0=1;
 a1=0;
 b1=1;
 a2=0;
 b2=1;
 a3=1;
 b3=0;
  end
endmodule

  

