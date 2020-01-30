`timescale 1ps/1ps

module andgates(input[10:0] a,input co,output[10:0] w);
	wire[10:0] o;
	
		and(w[0],a[3],co);
		and(w[1],a[4],co);
		and(w[2],a[5],co);
		and(w[3],a[6],co);
		and(w[4],a[7],co);
		and(w[5],a[8],co);
		and(w[6],a[9],co);
		and(w[7],a[10],co);
		and(w[8],0,co);
		and(w[9],0,co);
		and(w[10],0,co);
	
	endmodule
	