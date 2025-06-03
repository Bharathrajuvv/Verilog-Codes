// Testbench code for Sequence Detector for 11011 usign Melay Machine in Overlapping
module test;
  reg y,clk,rst;
  wire z;
  seq_over duv(y,clk,rst,z);
  initial clk=0;
  always #5 clk=~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t y=%b clk=%b rst=%b z=%b",$time,y,clk,rst,z);
    rst=1;
    #10 y=0;
    rst=0;
    #10 y=1;
     #10 y=1;
     #10 y=1;
     #10 y=0;
     #10 y=1;
     #10 y=1;
     #10 y=1;
     #10 y=1;
     #10 y=0;
     #10 y=1;
     #10 y=1;
     #10 y=1;
    #200 $finish;
  end
endmodule

    
