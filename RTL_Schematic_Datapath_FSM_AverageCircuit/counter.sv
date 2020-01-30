`timescale 1ps/1ps

module counter(input rst,clk,output co);

	wire[2:0] a,w;
	always@(posedge clk,posedge rst) begin;
		a=3'b000;
		if(rst) w<=3'b000; else begin
			w<= a + 1;
			end
		end
		
		assign co=(w==3'b111)?1'b1:1'b0;
		
endmodule
			
			
