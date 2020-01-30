`timescale 1ps/1ps

module Memory_Rom(input[2:0] a,output reg[15:0] w);

	always@(a) begin
		case(a)
			
			3'b000:w<=1/6;
			3'b001:w<=1/120;
			3'b010:w<=1/5040;
			3'b011:w<=1/362880;
			3'b100:w<=1/39916800;
			3'b101:w<=1/6227020800;
			3'b110:w<=1/130767436800;
			3'b111:w<=1/355687428096000;
		endcase
	end
endmodule