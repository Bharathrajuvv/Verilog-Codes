// Desgin code for JK Latch using Data Flow 
module jk_latch (input j,k, output q,qn);
  assign q=~(qn|j|qn);
  assign qn=~(q|k|q);
endmodule


// Desgin code for JK Latch using Behaviral Level
module jk_latch(input j,k, output reg q,qn);
  assign qn=~q;
  always@(*)begin
    case({j,k})
      2'b00:q=q;
      2'b01:q=1'b0;
      2'b10:q=1'b1;
      2'b11:q=1'bx;
    endcase
  end
endmodule

