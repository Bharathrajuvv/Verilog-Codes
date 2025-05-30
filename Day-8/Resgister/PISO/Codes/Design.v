// Design Code for PISO Shift Register 
module piso_shr(input [3:0] pi, input d,clk,rst, output  so);
  reg [3:0] sh;
  assign so=sh[0];
  always@(posedge clk or posedge rst)begin
    if(rst)begin
      sh <=4'b0;
    end
    else if(d) begin
      sh <= {3'b0,d};
    end
    else begin
      sh<={pi,sh[3:1]};
  end
 end
endmodule
