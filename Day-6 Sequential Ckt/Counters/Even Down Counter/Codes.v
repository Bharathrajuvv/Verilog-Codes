// Desgin code for Even Down counter
module even_down_counter(input clk, rst, output reg [3:0] count);
  always@(posedge clk) begin
    if(rst)
      count <=4'd0;
    else
      count <=count -2;
  end
endmodule


// Test bench code for Even Down Counter
module test;
  reg clk,rst;
  wire [3:0] count;
  even_down_counter duv(clk,rst,count);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time=%0t clk=%b rst=%b count=%b",$time,clk,rst,count);
    clk=0;
    rst=1;
    #10 rst=0;
    #200 $finish;
  end
  always #5 clk = ~ clk;
endmodule
