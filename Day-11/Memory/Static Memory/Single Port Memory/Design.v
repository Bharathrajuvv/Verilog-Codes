// Desgin code for Single Port Static RAM Memory
module sin_ram(input clk,rst,wr, input [2:0] addr, input [3:0] x, output reg  [3:0] y);
  reg [3:0] ram [0:7];
  always@(posedge clk)begin
    if(rst==0)
      y<=4'b0000;
    else if(wr==1)
      ram[addr]<=x;
    else if(wr==0)
      y<=ram[addr];
  end
endmodule
