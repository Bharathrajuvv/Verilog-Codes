// Desgin code for T Flip Flop
module t_ff(input t,clk,rst, output reg q,qn);
  always@(posedge clk)begin
    if(rst)
      qn<=0;
    else
      begin
        if(t==1)
          qn<=~qn;
        else
          qn<=qn;
      end
  end
  assign q=~qn;
endmodule


// Test bench Code for T Flip Flop
module test;
  reg t,clk,rst;
  wire q,qn;
  t_ff duv(t,clk,rst,q,qn);
  always #5 clk = ~ clk;
  initial begin 
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("$time=%0t t=%b rst=%b clk=%b q=%b qn=%b",$time,t,rst,clk,q,qn);
    clk=0;rst=1;t=1;
    @(negedge clk)rst=0;
    @(negedge clk)t=0;
    @(negedge clk)t=1;
    #5 $finish;
  end
endmodule
