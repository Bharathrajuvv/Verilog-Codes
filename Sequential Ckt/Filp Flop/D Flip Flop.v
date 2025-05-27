// Desgin code for D Flip Flop 
module d_ff(input d,clk,rst, output reg  q,qn);
  always@(posedge clk)begin
    if(rst)
      qn<=0;
    else
      qn<=d;
  end
  assign q=~qn;
endmodule

// Testbench Code for D Flip Flop 
module test;
  reg d,clk,rst;
  wire q,qn;
  d_ff duv(d,clk,rst,q,qn);
  always #5 clk = ~ clk;
  initial begin 
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("$time=%0t d=%b rst=%b clk=%b q=%b qn=%b",$time,d,rst,clk,q,qn);
    clk=0;rst=1;d=1;
    @(negedge clk)rst=0;
    @(negedge clk)d=0;
    @(negedge clk)d=1;
    #5 $finish;
  end
endmodule
