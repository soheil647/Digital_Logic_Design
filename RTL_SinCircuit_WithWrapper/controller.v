`timescale 1ps/1ps

module controller(input clk,rst,y,start,sigout,output ce,Ldx,LdT,Ldr,IniC,IniT,IniR,Selx,Selr,ready);

	typedef enum { ideal, starting, loading, Mu1, Mu2, add } Controlls;

	Controlls ps,ns;

	always@(start,ps)begin
		ns=ideal;
		{Lds,LdT,Ldr,IniC,IniT,IniR,Selx,Selr,ready,ce}=1'b0;
		case(ps)
			ideal:begin ns=start?starting:ideal;
				ready=1;end
			starting:begin ns=start?starting:loading;
				IniC=1;IniT=1;Inir=1;Ldx=1;end
			loading:begin LdT=1;Ldr=1;ns=Mu1;end
			Mu1:begin LdT=1;selx=1;ns=Mu2;end
			Mu2:begin ns=sigout?ideal:add;
				Selr=1;LdT=1;end
			add:begin Ldr=1;ce=ce+1;
				ns=Mu1;end
			default:ns=ideal;
		endcase
	end
	
	always@(posedge clk,posedge rst) begin
		if(rst) ps<=ideal;else ps<=ns;
	end
	
endmodule
		
	
