// Testbench code for sequence detector for 10101 in Moore Machine usign over-lapping
module test;
  reg i,clk,rst;
  wire o;
  seq_over duv(i,clk,rst,o);
  initial clk=0;
  always #5 clk=!clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t i=%b clk=%b rst=%b o=%d",$time,i,clk,rst,o);
    rst=1;
    #10 i=0;
    rst=0;
    
    #10 i=1;
    #10 i=0;
    #10 i=1;
    #10 i=0;
    #10 i=1;
    #10 i=0;
    #10 i=1;
    #10 i=0;
    #10 i=1;
    #10 i=0;
    #10 i=1;
    #10 i=0;
    #200 $finish;
  end
endmodule

    
    
  
