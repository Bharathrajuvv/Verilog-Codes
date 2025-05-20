// Design code for Half subtractor
module halfsub (a,b,di,bo);
  input a,b;
  output di,bo;
  assign di=a^b;
  assign bo=~a&b;
endmodule

// Test bench code for Half subtractor
module halfsub_tb();
  reg a,b;
  wire di,bo;
  halfsub duv (.a(a),.b(b),.di(di),.bo(bo));
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      a=0; b=0; #10; 
      a=0; b=1; #10;
      a=1; b=0; #10;
      a=1; b=1; #10;
    end
  initial
    begin
      $monitor("time=%0t a=%b b=%b di=%b bo=%b",$time,a,b,di,bo);
    end
endmodule
