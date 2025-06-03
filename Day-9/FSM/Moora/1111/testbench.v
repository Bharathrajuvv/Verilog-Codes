// Testbench code for sequence dector for 1111 usgin Moore Machine in Non-overlapping
module test;
  reg in,clk,rst;
  wire ou;
  seq_det duv(in,clk,rst,ou);
  initial clk=0;
  always #5 clk =!clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t in=%b clk=%b rst=%b ou=%b",$time,in,clk,rst,ou);
    rst=1;
    #5 in=0;
    rst=0;
    #5 in=1;
    #5 in=0;
    #5 in=1;
    #5 in=1;
    #5 in=1;
    #5 in=1;
    #5 in=0;
    #200 $finish;
  end
endmodule

