// Desgin code for Ring Counter 
module ring_cou(input clk,rst, output reg [3:0] count);
  always@(posedge clk)begin
    if(rst)
      count<=4'b1000;
    else begin
      count[3]<=count[0];
      count[2]<=count[3];
      count[1]<=count[2];
      count[0]<=count[1];
    end
  end
endmodule

      
  
