module alwshift(input si,clock,r,output logic[7:0] w);
  
  always@(posedge clock,r) begin;
  
  if(r) w=8'b00000000;
  else
    w={si,w[7:1]};
  end
endmodule

module test_Alw();
  logic si,clock=0,r=0;
  logic[7:0] w;
  
  alwshift ut(si,clock,r,w);
  
  
  
  
  
  
  
  
  


  
  
  