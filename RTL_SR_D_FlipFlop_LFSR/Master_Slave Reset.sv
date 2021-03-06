`timescale 1ns/1ns
module MS_LatchRST(input r,D,clock,output w);
  logic o,clockbar,s,rb;
  not N2(rb,r);
  not N1(clockbar,clock);
  D_L D1(D,clock,o);
  D_L D2(o,clockbar,s);
  and A0(w,s,rb);
  
endmodule


module testMS_RST();

  logic r,d,clock,w;

  MS_LatchRST M1(r,d,clock,w);

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
