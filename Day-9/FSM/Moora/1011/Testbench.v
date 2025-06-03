// Testbench code for sequence Decetor for 1011 usign Moore Machine in Non-overlapping
module test;
  reg x,clk,rst;
  wire y;
  seq duv(x,clk,rst,y);
  initial clk=0;
  always #5 clk= !clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor($time,"x=%b clk=%b rst=%b y=%b",x,clk,rst,y);
    rst=0;

  #10 rst=1;
    
    #10 x=1;
    #10 x=0;
    #10 x=1;
    #10 x=1;
    #10 x=0;
    #10 x=1;
    #10 x=1;
    #10 x=1;
     $finish;
  end
endmodule

