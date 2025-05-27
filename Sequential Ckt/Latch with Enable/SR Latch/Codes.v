// Design code for SR Latch with Enable
module sr_latch(input s,r,e, output reg q,qn);
  assign q=~qn;
  always@(*)begin
    if (e) begin
      qn<=0;
    end
  else
      case ({s,r})
        2'b00:qn<=qn;
        2'b01:qn<=1'b0;
        2'b10:qn<=1'b1;
        default qn<=1'bx;
      endcase
  end
endmodule
    

// Test bench code for SR Latch with Enable
module test;
  reg s,r,e;
  wire q,qn;
  sr_latch duv(s,r,e,q,qn);
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      $monitor("$time=%0t s=%b r=%b e=%b q=%b qn=%b",$time,s,r,e,q,qn);
      s=0;r=0; e=0;
      #5 s=0;r=1; e=0;
      #5 s=1;r=0; e=0;
      #5 s=1;r=1; e=0;
      #10 $finish;
    end
endmodule
