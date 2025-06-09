// Design code for Single Port Static RAM Memory
module mem(clk,rst,w_r,din,addr,dout);

	input clk,rst,w_r ;
	input [3:0] din ;
	input [2:0] addr ;
	output reg [3:0] dout ;

  reg [3:0] ram [0:7] ;
	
	always @ (posedge clk) begin
		
      	if(rst==1)
			dout<=4'b0000;
		
     	 else if(w_r==1)  
			ram[addr] <=din ;
		
      	else if(w_r==0)   
			dout <= ram[addr];
	end 
endmodule 
