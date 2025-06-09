// Testbench code for Single Port Static RAM Memory
module mem_tb() ;
	reg clk,rst,w_r ;
	reg [3:0] din ;
	reg [2:0] addr ;
	wire [3:0] dout ;
	
	mem dut (clk,rst,w_r,din,addr,dout);
	
	initial begin
		clk=0 ;
		forever #10 clk=~clk ;
	end 
	
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0,dut) ;
		$monitor("Time=%0t clk=%b rst=%b w_r=%b din=%b addr=%b dout=%b",$time,clk,rst,w_r,din,addr,dout ) ;
		
		#0  rst=1 ;
		#30 rst=0 ;
		
		w_r =1 ;  
		
		addr=3'b000 ; din=4'b1111 ; #20 ;
		addr=3'b001 ; din=4'b1110 ; #20 ;
		addr=3'b010 ; din=4'b1101 ; #20 ;
		addr=3'b011 ; din=4'b1100 ; #20 ;
		addr=3'b100 ; din=4'b1011 ; #20 ;
		addr=3'b101 ; din=4'b0101 ; #20 ;
		addr=3'b110 ; din=4'b1001 ; #20 ;
		addr=3'b111 ; din=4'b1000 ; #20 ;
		
		w_r=0 ;    
		
		addr=3'b000 ; #20 ;
		addr=3'b001 ; #20 ;
		addr=3'b010 ; #20 ;
		addr=3'b011 ; #20 ;
		addr=3'b100 ; #20 ;
		addr=3'b101 ; #20 ;
		addr=3'b110 ; #20 ;
		addr=3'b111 ; #20 ;
		
		$finish() ; 
	end 
endmodule 

