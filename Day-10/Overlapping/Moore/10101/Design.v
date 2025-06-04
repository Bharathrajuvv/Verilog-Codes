// Design code for sequence detector for 10101 in Moore Machine usign over-lapping
module seq_over(input i,clk,rst, output o);
  parameter a = 6'd1;
  parameter b = 6'd2;
  parameter c = 6'd3;
  parameter d = 6'd4;
  parameter e = 6'd5;
  parameter f = 6'd6;
  reg[5:0] st,nx_st;
  always@(posedge clk or negedge rst)begin
    if(rst==1)begin
      st<=a;
    end
    else
      st<=nx_st;
  end
  always@(*)begin
    case(st)
      a:nx_st = i?b:a;
      b:nx_st = i?b:c;
      c:nx_st = i?d:a;
      d:nx_st = i?b:e;
      e:nx_st = i?f:a;
      e:nx_st = i?b:c;
      default :nx_st = a;
    endcase
  end
  assign o =(st==e)&&(i==1);
endmodule

            

            

            

      
    
  
