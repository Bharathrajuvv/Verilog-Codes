// Design code for SIPO Left Shift Register 
module sipo_sfrl(input clk,rst,si, output reg [3:0] po);
  reg [3:0] sfl;
  assign po=sfl;
  always@(posedge clk)begin
    if(rst==1)
      sfl<=4'b0000;
    else begin
      sfl<={si,sfl[3:1]};
    end
  end
endmodule

      
