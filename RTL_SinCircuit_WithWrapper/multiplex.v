`timescale 1ps/1ps

module multiplex(input[15:0] a,b,input Selx,Selr,output reg[15:0] w);

	always@(Selx,Selr) begin
		if(Selx) w<=a;else begin
			if(Selr) w<=b;
		end
	end		
	
endmodule