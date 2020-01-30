`timescale 1ps/1ps

module register(input[10:0] a,input init,clk,rst,ld,output logic[10:0] w);


	always@(posedge clk,posedge rst) begin
		if(rst) w<=11'b0; else begin
			if(init) w<=11'b0; else begin
				if(ld) w<=a;
				end
			end
	end
	
	
endmodule
		