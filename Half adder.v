// Design code for half adder
module halfadd(a,b,su,ca);
  input a,b;
  output su,ca;
  assign su=a^b;
  assign ca=a&b;
endmodule

// Testbench code for half adder
module halfadd_tb();
  reg a,b;
  wire su,ca;
  halfadd duv (.a(a),.b(b),.su(su),.ca(ca));
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
      $monitor("time=%0t a=%b b=%b su=%b ca=%b",$time,a,b,su,ca);
    end
endmodule
