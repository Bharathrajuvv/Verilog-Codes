//Design code foe D Latch with Enable
module d_latch(input d,e, output reg q,qn);
  assign qn=~q;
  always @(*) begin
    if (e) begin
      q<=0;
    end
    else
    case ({d})
      1'b0:q=1'b0;
      1'b1:q=1'b1;
    endcase
  end
endmodule

 // Test Bench Code for D Latch with Enable
module test;
  reg d,e;
  wire q,qn;
  d_latch duv(d,e,q,qn);
  initial begin
    $monitor("time=%0t d=%b e=%b q=%b qn=%b",$time,d,e,q,qn);
    d=0; e=0;
    #5 d=1; e=0;
  end
endmodule
     
      
     
