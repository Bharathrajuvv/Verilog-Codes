// Design code for Dual Port Static RAM Memory
module dual_mem(input clk,rst,wr_a,wr_b, input[2:0] addr_a,addr_b, input [3:0] a,b, output reg [3:0] c,d);
  reg [3:0] ram [0:7];
  always@(posedge clk)begin
    if(rst)
      c<=4'b0000;
    else if(wr_a)
      ram[addr_a]<=a;
    else if(~wr_a)
      c<=ram[addr_a];
  end
  always@(posedge clk)begin
    if(rst)
      d<=4'b0000;
    else if(wr_b)
      ram[addr_b]<=b;
    else if(~wr_b)
      d<=ram[addr_b];
  end
endmodule
