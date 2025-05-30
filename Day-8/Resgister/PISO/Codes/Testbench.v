// Testbench Code for PISO Shift Register
module test;
  reg [3:0] pi;
  reg d,clk,rst;
  wire so;
  piso_shr duv(pi,d,clk,rst,so);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t pi=%b d=%b clk=%b rst=%b so=%b",$time,pi,d,clk,rst,so);
    clk=1;
    forever #5 clk=!clk;
  end
  initial begin
    rst=1;
  pi = 4'b0000;
    d = 0;
    rst = 1;
    
    #10 rst = 0;
    #10 pi = 4'b1010; d = 0;  
    #10 pi = 4'b1100; d = 0; 
    #10 d = 1;         
    #10 d = 0;                
    #10 pi = 4'b0101;          
    #10 d = 1;
    #10 d = 0;
    #10 pi = 4'b1111;
    
    #100 $finish;
  end
endmodule

