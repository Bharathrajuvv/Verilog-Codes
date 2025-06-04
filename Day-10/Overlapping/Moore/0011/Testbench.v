// Testbench code for Sequence detector for 0011 usign Moore Machine in Overlapping
module test;
  reg s,clk,rst;
  wire w;
  seq_over duv(s,clk,rst,w);
  initial clk=0;
  always #5 clk= ~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t s=%b clk=%b rst=%b w=%b",$time,s,clk,rst,w);
    rst=1;
    #10 s=0;
    rst=0;
    #10 s=0;
    #10 s=0;
    #10 s=1;
    #10 s=1;
    #10 s=0;
    #10 s=0;
    #10 s=1;
    #10 s=1;
    #10 s=0;
    #10 s=0;
    #100 $finish;
  end
endmodule

    
    
    
    
    
  
  
  
