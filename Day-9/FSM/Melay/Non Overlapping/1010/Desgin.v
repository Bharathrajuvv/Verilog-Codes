// Design code for Sequence dector in 1010 using Melay Non-overlapping
module seq_det(input in,clk,rst, output ou);
  parameter a=4'd1;
  parameter b=4'd2;
  parameter c=4'd3;
  parameter d=4'd4;
  
  reg[3:0] sta,nx_sta;
  always@(posedge clk or negedge rst)begin
    if(rst)begin
      sta<=a;
    end
    else
      sta<=nx_sta;
  end
  always@(*)begin
    case(sta)
        a:nx_sta = in?b:a;
        b:nx_sta = in?b:c;
        c:nx_sta = in?d:a;
        d:nx_sta = in?a:a;
        default:nx_sta=a;
     endcase
  end
  assign ou=(sta==d)&&(in==0);
endmodule
