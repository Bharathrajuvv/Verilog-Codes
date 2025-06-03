// Design code for sequence deceter for 10110 using Melay Machine in Over-laooing
module seq_over(input s,clk,rst, output reg n);
  parameter a=5'd1;
  parameter b=5'd2;
  parameter c=5'd3;
  parameter d=5'd4;
  parameter e=5'd5;
  reg[4:0] st,nx_st;
  always@(posedge clk or negedge rst)begin
    if(!rst)begin
      st<=a;
    end
  else 
    st<=nx_st;
  end
  always@(*)begin
    case(st)
      a:nx_st = s?b:a;
      b:nx_st = s?b:c;
      c:nx_st = s?d:a;
      d:nx_st = s?e:c;
      e:nx_st = s?b:c;
      default : nx_st=a;
    endcase
  end
  assign n=(st==d)&&(s==0);
endmodule
