// Design code SR Flip Flop
module sr_ff(input s,r,clk,rst, output reg q,qb);
  always@(negedge clk)begin
    if(rst)
      q<=0;
    else begin
      case({s,r})
        2'b00:q<=q;
        2'b01:q<=1'b0;
        2'b10:q<=1'b1;
        2'b11:q<=1'bx;
      endcase
    end
  end
  assign qb=~q;
endmodule


// Test bench code for SR Flip Flop 
module test;
  reg s,r,clk,rst;
  wire q,qb;
  sr_ff duv(s,r,clk,rst,q,qb);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    rst=1; clk=0;s=1;r=0;
    @(negedge clk)
    rst=0;
    begin
      s=0;r=1;
    end
    @(negedge clk)
    begin
    s=1;r=1;
    end
    @(negedge clk)
    begin
    s=0;r=0;
    end
  #20 $finish;
   
  end
  initial begin
    $monitor("time=%0t s=%b r=%b clk=%b rst=%b q=%b qb=%b",$time,s,r,clk,rst,q,qb);
  end
endmodule

             
  
