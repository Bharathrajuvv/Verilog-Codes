// Desgin code for SISO Right Shift
module siso_sfr(input clk,rst,si, output reg so);
  reg [3:0] sf;
  assign so=sf[0];
  always@(posedge clk)begin
    if(rst==1)
      sf<=4'b0000;
    else begin
      sf <= {sf[2:0],si};
    end
  end
endmodule
