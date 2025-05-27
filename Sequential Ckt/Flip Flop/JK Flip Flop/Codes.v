// Desgin code JK Flip Flop
module jk_ff(input j,k,clk,rst, output reg q,qn);
  always@(posedge clk)begin
    if(rst)
      qn<=0;
    else begin
      case({j,k})
        2'b00:qn=qn;
        2'b01:qn=1'b0;
        2'b10:qn=1'b1;
        default:qn<=~qn;
      endcase
    end
  end
  assign q=~qn;
endmodule


// Test bench code for JK Flip Flop 
module test;
  reg j,k,clk,rst;
  wire q,qb;
  jk_ff duv(j,k,clk,rst,q,qb);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    rst=1; clk=0;j=1;k=0;
    @(negedge clk)
    rst=0;
    begin
      j=0;k=1;
    end
    @(negedge clk)
    begin
    j=1;k=1;
    end
    @(negedge clk)
    begin
    j=0;k=0;
    end
  #10 $finish;
   
  end
  initial begin
    $monitor("time=%0t j=%b k=%b clk=%b rst=%b q=%b qb=%b",$time,j,k,clk,rst,q,qb);
  end
endmodule

             
  
