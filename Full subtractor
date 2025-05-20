// Design code Full subtractor
module fullsub(a,b,c,di,bo);
  input a,b,c;
  output di,bo;
  assign di=a^b^c;
  assign bo=~a&b|~a&c|b&c;
endmodule

// Test bench code Full subtractor
module fullsub_tb();
  reg a,b,c;
  wire di,bo;
  fullsub duv (.a(a),.b(b),.c(c),.di(di),.bo(bo));
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      a=0; b=0; c=0; #10;
      a=0; b=0; c=1; #10;
      a=0; b=1; c=0; #10;
      a=0; b=1; c=1; #10;
      a=1; b=0; c=0; #10;
      a=1; b=0; c=1; #10;
      a=1; b=1; c=0; #10;
      a=1; b=1; c=1; #10;
    end
  initial
    begin
      $monitor("time=%0t a=%b b=%b c=%b di=%b bo=%b",$time,a,b,c,di,bo);
    end
endmodule

      
  
