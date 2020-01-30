`timescale 1ps/1ps

module RegisterX(input[15:0] Xin,input LX,clk,rst,output reg[15:0] Xout);

	always@(posedge clk,posedge rst) begin
		if(rst) Xout<=0; else begin
			if(LX) Xout<=Xin; 
		end
	end
	
endmodule
		