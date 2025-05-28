// Code your design here
module up_down_cou(input clk,rst,d, output reg [3:0]count);
  always@(posedge clk)begin
    if(rst)
      count=4'd0;
    else begin
      if(d)
        count<=count+1;
      else
        count<=count-1;
    end
  end
endmodule
