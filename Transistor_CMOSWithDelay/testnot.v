 `timescale 1ns/1ns
 module testnot ();
   wire w;
   reg a;
   invert1 U1(a,w );
  initial begin 
  #(10) a=1'b0;
  #(10) a=~a;
  #(10) a=~a;
  end
endmodule

