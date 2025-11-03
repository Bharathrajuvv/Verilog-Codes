// Design code for all gates
module basicgates(a,b,andc,orc,nandc,norc,xorc,xnorc);
  input a,b;
  output andc,orc,nandc,norc,xorc,xnorc;
  and(andc,a,b);
  or(orc,a,b);
  nand(nandc,a,b);
  nor(norc,a,b);
  xor(xorc,a,b);
  xnor(xnorc,a,b);
endmodule

// Testbench code for all gates
module basicgates_tb ();
  reg a,b;
  wire andc,orc,nandc,norc,xorc,xnorc;
  basicgates duv (.a(a),.b(b),.andc(andc),.orc(orc),.nandc(nandc),.norc(norc),.xorc(xorc),.xnorc(xnorc));
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
      $monitor("time=%0t a=%b b=%b andc=%b orc=%b nandc=%b norc=%b xorc=%b xnorc=%b",$time,a,b,andc,orc,nandc,norc,xorc,xnorc);
    end
endmodule
