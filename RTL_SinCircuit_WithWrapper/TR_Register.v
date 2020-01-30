`timescale 1ps/1ps

module TR_Register(input[15:0] TR_in,input[15:0] Xin,input[7:0] y,input IN,Lx,clk,rst,output reg[15:0] TR_out,output reg SigOut);


	always@(posedge clk,posedge rst) begin
		if(rst) TR_out<=0; else begin
			if(IN) TR_out<=Xin;else begin
				if(Lx) TR_out<=TR_in; 
			end
		end
	end
	
	always@(TR_in) begin
		SigOut<=0;
		if(TR_in<<y) SigOut<=1;
	end
	
endmodule
		