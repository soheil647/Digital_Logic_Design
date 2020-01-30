`timescale 1ps/1ps

module Counter(input clk,rst,init,ce,output reg[2:0] w);

	always@(posedge clk,posedge rst) begin
	
		if(rst) w<=0;else begin
			if(init) w<=0;else begin
				if(ce) w<=w+1'b1;
				end
			end
		end
		
	
endmodule