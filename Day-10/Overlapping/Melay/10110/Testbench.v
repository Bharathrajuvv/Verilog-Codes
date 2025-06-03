// Testbench code for sequence deceter for 10110 using Melay Machine in Over-laooing
module test;
  reg s,clk,rst;
  wire n;
  seq_over duv(s,clk,rst,n);
  initial clk=0;
  always #5 clk=!clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%t s=%b clk=%b rst=%b n=%b",$time,s,clk,rst,n);
    rst=1;
    #10 s=0;
    rst=0;
       #10 s=1;
       #10 s=0;
       #10 s=1;
       #10 s=1;
       #10 s=0;
       #10 s=1;
       #10 s=0;
       #10 s=1;
       #10 s=1;
       #10 s=0;
       #10 s=1;
       #10 s=0;
       #10 s=1;
       #200 $finish;
  end
endmodule
