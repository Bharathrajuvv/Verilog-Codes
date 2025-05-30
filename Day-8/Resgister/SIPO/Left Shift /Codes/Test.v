// Test bench code for SIPO Left Shift Register
module test ;
  reg clk,rst,si;
  wire [3:0] po;
  sipo_sfrl duv(clk,rst,si,po);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t clk=%b rst=%b si=%b po=%b",$time,clk,rst,si,po);
    clk=1;
    forever #5 clk = ~clk;
  end
  initial begin
    rst=1;
    #5 si=0;
    rst=0;
    
    si=1; #5;
    si=0; #5;
    si=0; #5;
    si=1; #5;
    si=1; #5;
    #200 $finish;
  end
endmodule
    
    
    
