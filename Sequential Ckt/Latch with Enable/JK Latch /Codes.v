// Desgin code for JK Latch with Enable
module jk_latch(input j,k,e, output reg q,qn);
  assign q=~qn;
  always@(*)begin
    if (e) begin
      qn<=0;
    end
    else
    case({j,k})
      2'b00:qn=qn;
      2'b01:qn=1'b0;
      2'b10:qn=1'b1;
      2'b11:qn=1'bx;
    endcase
  end
endmodule

// Test Bench code for JK Latch with enable
module test;
  reg j,k,e;
  wire q,qn;
  jk_latch duv(j,k,e,q,qn);
  initial begin 
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t j=%b k=%b e=%b q=%b qn=%b",$time,j,k,e,q,qn);
    j=0;k=0; e=0;
    #5 j=0;k=1; e=0;
    #5 j=1;k=0; e=0;
    #5 j=1;k=1; e=0;
  end
endmodule
