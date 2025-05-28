// Testbench code for Johson counter
module test;
  reg clk,rst;
  wire [3:0] count;
  johson_cou duv(clk,rst,count);
  initial begin
    clk=0;
    forever #5 clk = ~clk;
  end
  initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);
    $monitor("time clk=%b rst=%b count=%b",$time,clk,rst,count);
    #0 rst=1;
    #20 rst=0;
    repeat (20) begin
      @(posedge clk);
    end
    $finish();
  end
endmodule
