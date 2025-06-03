// Design code for Sequence Detector for 11011 usign Melay Machine in Overlapping
module seq_over(input y,clk,rst, output z);
  parameter a= 5'd1;
  parameter b= 5'd2;
  parameter c= 5'd3;
  parameter d= 5'd4;
  parameter e= 5'd5;
  reg [4:0] st,nx_st;
  always@(posedge clk or negedge rst)begin
    if(!rst)begin
      st<=a;
    end
    else
      st<=nx_st;
  end
  always@(*)begin
    case(st)
      a:nx_st = y?b:a;
      b:nx_st = y?c:a;
      c:nx_st = y?b:d;
      d:nx_st = y?e:a;
      e:nx_st = y?c:a;
      default :nx_st = a;
    endcase
  end
  assign z=(st==e)&&(y==1);
endmodule
