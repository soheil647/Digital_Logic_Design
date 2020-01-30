`timescale 1ps/1ps

module Add_Sub(input[15:0] a,b,input cin,output[15:0] w);

	assign w=cin?a+b:a-b;

endmodule