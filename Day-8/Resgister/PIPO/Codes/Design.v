// Design Code for PIPO Shift Register
module pipo_shr(input [3:0] pi, input clk,rst, output reg [3:0] po);
  always@(posedge clk)begin
    if(rst==1)
      po<=4'b0000;
    else
      po<=pi;
  end
endmodule
