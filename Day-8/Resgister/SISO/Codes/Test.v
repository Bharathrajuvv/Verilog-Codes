// Test Bench code for SISO
module test;
  reg clk,rst,si;
  wire so;
  siso_sfr duv(clk,rst,si,so);
  initial begin
   
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t si=%b clk=%b rst=%b so=%b",$time,si,clk,rst,so);
     clk=1;
    forever #5 clk=~clk;
  end
  initial begin
    rst=1;
    #5 si=0;
    rst=0;
    si=1;
    
    si=1; #5;
    si=0; #5;
    si=0; #5;
    si=1; #5;
   #200 $finish;
  end
endmodule

