// Desgin code sequence Decetor for 1011 usign Moore Machine in Non-overlapping
module seq(input x,clk,rst, output y);
  reg[4:0] st,nx_st;
  parameter a=4'd1;
  parameter b=4'd2;
  parameter c=4'd3;
  parameter d=4'd4;
  parameter e=4'd5;
  always@(posedge clk)begin
    if(rst==0)begin
      st<=a;
    end
    else
      st<=nx_st;
  end
  always@(*)begin
    case(st)
      a:nx_st = x?b:a;
      b:nx_st = x?b:c;
      c:nx_st = x?d:a;
      d:nx_st = x?e:a;
      e:nx_st = x?a:a;
      default:nx_st=a;
    endcase
  end
  assign y=(st==e)&&(x==1);
endmodule

