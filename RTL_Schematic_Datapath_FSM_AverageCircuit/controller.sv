`timescale 1ps/1ps

module controller(input rst,clk,start,co,output init,ready,ld);

	logic[1:0]ps,ns;
	
	always@(ps,start,co) begin
		ns=2'b00;
			case(ps)
			2'b00:ns=start?2'b01:2'b00;
			2'b01:ns=start?2'b01:2'b10;
			2'b10:ns=start?2'b10:2'b11;
			2'b11:ns=co?2'b00:start?2'b01:2'b10;
			endcase
	end
	
	always@(posedge clk,posedge rst) begin
		if(rst) ps<=2'b00;else ps<=ns;
	end
	
	assign init=(ps==2'b01)?1'b1:1'b0;
	assign ready=(ps==2'b00)?1'b1:1'b0;
	assign ld=(ps==2'b01)?1'b1:1'b0;
			
		
endmodule	
