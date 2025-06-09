// Testbench code for Dual Port Static RAM Memory
module test;
  reg clk,rst,wr_a,wr_b;
  reg [2:0] addr_a,addr_b;
  reg [3:0] a,b;
  wire [3:0] c,d;
  dual_mem duv(clk,rst,wr_a,wr_b,addr_a,addr_b,a,b,c,d);
  initial clk=0;
    always #5 clk=~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t clk=%b rst=%b wr_a=%b wr_b=%b addr_a=%b addr_b=%b a=%b b=%b c=%b d=%b",$time,clk,rst,wr_a,wr_b,addr_a,addr_b,a,b,c,d);
    rst=1;
    #10 rst=0;
    	wr_a =1 ;  
		
		addr_a=3'b000 ; a=4'b1111 ; #20 ;
		addr_a=3'b001 ; a=4'b1110 ; #20 ;
		addr_a=3'b010 ; a=4'b1101 ; #20 ;
		addr_a=3'b011 ; a=4'b1100 ; #20 ;
		addr_a=3'b100 ; a=4'b1011 ; #20 ;
		addr_a=3'b101 ; a=4'b0101 ; #20 ;
		addr_a=3'b110 ; a=4'b1001 ; #20 ;
		addr_a=3'b111 ; a=4'b1000 ; #20 ;
		
		wr_a=0 ;    
		
		addr_a=3'b000 ; #20 ;
		addr_a=3'b001 ; #20 ;
		addr_a=3'b010 ; #20 ;
		addr_a=3'b011 ; #20 ;
		addr_a=3'b100 ; #20 ;
		addr_a=3'b101 ; #20 ;
		addr_a=3'b110 ; #20 ;
		addr_a=3'b111 ; #20 ;
        
       	wr_b =1 ;  
		
		addr_b=3'b000 ;  b=4'b1111 ; #20 ;
		addr_b=3'b001 ;  b=4'b1110 ; #20 ;
		addr_b=3'b010 ;  b=4'b1101 ; #20 ;
		addr_b=3'b011 ;  b=4'b1100 ; #20 ;
		addr_b=3'b100 ;  b=4'b1011 ; #20 ;
		addr_b=3'b101 ;  b=4'b0101 ; #20 ;
		addr_b=3'b110 ;  b=4'b1001 ; #20 ;
		addr_b=3'b111 ;  b=4'b1000 ; #20 ;
		
		wr_b=0 ;    
		
		addr_b=3'b000 ; #20 ;
		addr_b=3'b001 ; #20 ;
		addr_b=3'b010 ; #20 ;
		addr_b=3'b011 ; #20 ;
		addr_b=3'b100 ; #20 ;
		addr_b=3'b101 ; #20 ;
		addr_b=3'b110 ; #20 ;
		addr_b=3'b111 ; #20 ;
		 #100 $finish;
  end
endmodule

    
    
    
      







































