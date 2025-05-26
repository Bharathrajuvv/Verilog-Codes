//Design code foe D Latch usign behaviral Level
module d_latch(input d, output reg q,qn);
  assign qn=~q;
  always @(*) begin
    case ({d})
      1'b0:q=1'b0;
      1'b1:q=1'b1;
    endcase
  end
endmodule

// Desgin code for D Latch usign Data flow 
module d_latch(input d, output qn,q);
  assign q= ~(qn|d);
  assign qn= ~(q|(~d));
endmodule

      
      
     
