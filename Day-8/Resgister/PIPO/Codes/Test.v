// Test Bench Code for PIPO Shift Register
module test;
  reg [3:0] pi;
  reg clk,rst;
  wire [3:0] po;
  pipo_shr duv(pi,clk,rst,po);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t pi=%b clk=%b rst=%b po=%b",$time,pi,clk,rst,po);
     clk=1;
    forever #5 clk=!clk;
   
  end
  initial begin
    rst=1;
    #5 pi=0;
    rst=0;
    pi=1;
    
    #5 pi=1;
    #5 pi=0;
    #5 pi=0;
    #5 pi=1;
    #5 pi=0;
    #5 pi=1;
    
    #100 $finish();
  end
endmodule
