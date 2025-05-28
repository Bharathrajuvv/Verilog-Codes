// Desgin code for UP/DOWN Counter
module up_down_cou(input clk,rst,d, output reg [3:0]count);
  always@(posedge clk)begin
    if(rst)
      count=4'd0;
    else begin
      if(d)
        count<=count+1;
      else
        count<=count-1;
    end
  end
endmodule

// Test bench code
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

  
