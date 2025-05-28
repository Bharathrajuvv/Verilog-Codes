// Desgin Code for Up/Down Synchronous Counter
module up_down_syn_cou(input clk,rst,d, output reg [3:0]count );
  always@(posedge clk)begin
    if(rst==0)
      count<=4'd0;
    else begin
      if(d==1)
        count<=count+1;
      else
        count<=count-1;
    end
  end
endmodule

// Test bench code for Up/Down Synchronous Counter
module test;
  reg clk,rst,d;
  wire [3:0] count;
  up_down_syn_cou duv(clk,rst,d,count);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t clk=%b rst=%b d=%b count=%b",$time,clk,rst,d,count);
    clk=0;
    @(posedge clk);
    rst=0;
    d=1;
    #15 rst=1;
    #50 d=0;
    #13 rst=1;
    #200 $finish;
  end
  always #5 clk = ~clk;
endmodule

    
    
   
  
