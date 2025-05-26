// Desgin code for T Latch usign Data Flow level
module t_latch(input t, output q,qn);
  wire d;
  assign d=~t&qn;
  assign d=t&q;
  assign q = ~(d|t);
  assign qn = ~(d|t);
endmodule


// Desgin code for T Latch using Behaviral Level
module t_latch(input t, output reg q,qn);
  assign qn=~q;
  always @(*) begin
    case ({t})
      1'b0:q=1'b1;
      1'b1:q=1'b0;
    endcase
  end
endmodule

      
      
     
