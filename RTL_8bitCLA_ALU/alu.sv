`timescale 1ns/1ns

module ALU(input [7:0] A,B,input [2:0] F,output reg[7:0] S,output reg G,CarryOut);
  
  
  always@(A,B,F) begin
    CarryOut=0;
    if(A > B) G = 1;else G = 0;
    
    case(F)
      3'b000 : # (64.3) {CarryOut,S} = A + B;
      3'b001 : # (64.3) {CarryOut,S} = A - B;
      3'b010 : # (71.3)if(A<B) S  = B;
      3'b011 : # (64.3){CarryOut,S} = A + {1'b0,B[7:1]} ;
      3'b100 : # (14.2)S = 0;
      3'b101 : # (56)S = A | B;
      3'b110 : # (56)S = A &B ;
      3'b111 : # (7.2){CarryOut,S} = B + B;

    endcase
  end
  
endmodule
