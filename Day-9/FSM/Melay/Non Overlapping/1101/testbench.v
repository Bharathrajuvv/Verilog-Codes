// Testbench code for 1101 Mealy Non Overlapping
module  dump;
  reg y,rst,clk;
  wire z;
  seq_det duv(y,rst,clk,z);
  initial clk=0;
  always #5 clk =~clk;
  initial begin
    $monitor("time=%0t y=%b rst=%b clk=%b z=%b",$time,y,rst,clk,z);
    $dumpfile("dump.vcd");
    $dumpvars;
    
    rst=1;
    #5 y=0;
    rst=0;
    y=1;
    #5 y=1;
    #5 y=1;
    #5 y=0;
    #5 y=1;
    #5 y=1;
    #5 y=0;
    #5 y=1;
    
    #100 $finish;
  end
endmodule

    
