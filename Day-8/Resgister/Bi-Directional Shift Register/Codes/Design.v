// Desgin code for Bi-Directly Shift Register
module bi_dire_shr(input si,clk,rst,d, output reg so);
  reg [3:0] shr;
  always@(posedge clk)begin
    if(rst)
      shr<=4'b0000;
    else begin
      if(d)
        shr<={si,shr[3:1]};
      else
        shr<={shr[2:0],si};
    end
  end
  always @*begin
     so = d ? shr[0] : shr[3];
  end
endmodule

    
   
              
