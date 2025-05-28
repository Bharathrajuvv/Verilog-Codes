// Desgin code for Ring Counter 
module ring_cou(input clk,rst, output reg [3:0] count);
  always@(posedge clk)begin
    if(rst)
      count<=4'b1000;
    else begin
      count[3]<=count[0];
      count[2]<=count[3];
      count[1]<=count[2];
      count[0]<=count[1];
    end
  end
endmodule

// Testbench code for Ring counter
module test;
  reg clk,rst;
  wire [3:0] count;
  ring_cou duv(clk,rst,count);
  initial begin
    clk=0;
    forever #5 clk = ~clk;
  end
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time clk=%b rst=%b count=%b",$time,clk,rst,count);
    #0 rst=1;
    #20 rst=0;
    repeat (20) begin
      @(posedge clk);
    end
    $finish();
  end
    endmodule
      
  
