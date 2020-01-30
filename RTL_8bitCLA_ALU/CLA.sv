`timescale 1ns/1ns
module CLAadder(input [7:0]dataA, dataB,input carryIn,output [7:0]dataOut,output carryOut);

assign #29.3  {carryOut,dataOut} = dataA + dataB + carryIn;

endmodule