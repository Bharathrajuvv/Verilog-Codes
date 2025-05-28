// Test bench code for Up/Down counter
module test;
  reg clk,rst,d;
  wire [3:0] count;
  up_down_cou duv(clk,rst,d,count);
   always #5 clk=~clk;
initial  begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t clk=%b rst=%b d=%b count=%b",$time,clk,rst,d,count);
    clk=0;
  @(posedge clk);
    rst=1;
    d=1;  
    #17; rst=0;
    #70; d=0;
    #15; rst=0;
    #200; $finish;
  end
 
endmodule

  
