// Desgin code for SISO Left shift
module siso_sfr(input clk,rst,si, output reg so);
  reg [3:0] sf;
  assign so=sf[0];
  always@(posedge clk)begin
    if(rst==1)
      sf<=4'b0000;
    else begin
      sf <= {si,sf[3:1]};
    end
  end
endmodule
