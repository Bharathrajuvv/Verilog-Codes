// Desgin code for 1101 Mealy Non Overlapping
module seq_det(input y,rst,clk, output z);
  parameter a = 4'd1;
  parameter b = 4'd2;
  parameter c = 4'd3;
  parameter d = 4'd4;
  reg [3:0] sta,nx_state;
  always@(posedge clk or negedge rst)begin
    if(rst)begin
      sta<=y;
    end
    else
      sta<= nx_state;
  end
    always@(*)begin
      case(sta)
        a:nx_state = y?b:a;
        b:nx_state = y?c:a;
        c:nx_state = y?c:d;
        d:nx_state = y?a:a;
        default:nx_state=a;
      endcase
    end
  assign z=(sta==a) && (y==1);
endmodule
    
