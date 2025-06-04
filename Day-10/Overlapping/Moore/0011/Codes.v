// Design code for Sequence detector for 0011 usign Moore Machine in Overlapping
module seq_over(input s,clk,rst, output w);
  parameter a = 5'd1;
  parameter b = 5'd2;
  parameter c = 5'd3;
  parameter d = 5'd4;
  parameter e = 5'd5;
  reg [4:0] st,nx_st;
  always@(posedge clk or negedge rst)begin
    if(rst)begin
      st<=a;
    end
    else
      st<=nx_st;
  end
  always@(*)begin
    case(st)
      a:nx_st = s?a:b;
      b:nx_st = s?a:c;
      c:nx_st = s?d:c;
      d:nx_st = s?e:b;
      e:nx_st = s?a:b;
      default :nx_st = a;
    endcase
  end
  assign w=(st==e)&&(s==1);
endmodule

      
      
  
