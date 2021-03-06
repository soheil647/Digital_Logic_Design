`timescale 1ns/1ns
module MS_Latch(input D,clock,output w);
  logic o,clockbar;
  not N1(clockbar,clock);
  D_L D1(D,clock,o);
  D_L D2(o,clockbar,w);
endmodule


module testMS();

  logic d,clock,w;

  MS_Latch M1(d,clock,w);

  initial begin;
    clock =0;
    d=0;
     #10000 $finish;
     end     
    always #(100) clock=~clock;
    always #(150) d=~d;
   
endmodule