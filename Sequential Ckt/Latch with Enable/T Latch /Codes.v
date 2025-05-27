// Desgin code for T Latch with enable
module t_latch(input t,e, output reg q,qn);
  assign q=~qn;
  always @(*) begin
    if (e)begin
      qn<=0;
    end
    else
    case ({t})
      1'b0:qn=1'b1;
      1'b1:qn=1'b0;
    endcase
  end
endmodule

// Test Bench code for T Latch with Enable
module test;
  reg t,e;
  wire q,qn;
  t_latch duv(t,e,q,qn);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("$time=%0t t=%b e=%b q=%b qn=%b",$time,t,e,q,qn);
    t=0; e=0;
    #10 t=1; e=0;
  end
endmodule

                   
      
     
