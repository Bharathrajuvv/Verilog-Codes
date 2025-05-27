// Design code for 4 Bit Up Counter
module up_cou(input clk,rst, output reg [3:0] count);
  always@(posedge clk)
    begin
    if(rst)
      count <=4'd0;
    else
      count <=count+1;
  end
endmodule

// Test bench code for 4 Bit Up counter
module test;
  reg clk,rst;
  wire [3:0] count;
  up_cou duv(clk,rst,count);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t clk=%b rst=%b count=%b",$time,clk,rst,count);
    clk=0;
    rst=1;
    @(negedge clk) rst=0;
    #200;
    $finish;
  end
  
    always  #5 clk = ~ clk;
endmodule

