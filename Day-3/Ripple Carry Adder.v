// Code your design here
module fa(input a,b,ci, output s,c);
  assign s=a^b^ci;
  assign c=a&b|b&ci|ci&a;
endmodule

module ripple_carryadder(input[3:0] a,b, input ci, output[3:0] s, output c );
  wire w1,w2,w3;
  fa fa1(a[0],b[0],ci,s[0],w1);
  fa fa2(a[1],b[1],w1,s[1],w2);
  fa fa3(a[2],b[2],w2,s[2],w3);
  fa fa4(a[3],b[3],w3,s[3],c);
endmodule


// Code your testbench here
// or browse Examples
module ripple_carryadder_tb;
  reg [3:0] a,b;
  reg ci;
  wire [3:0] s;
  wire c;
  ripple_carryadder duv(.*);
  initial
    begin
     #5; a=4'b1111; b=4'b1000; ci=0; 
     #5; a=4'b1010; b=4'b1001; ci=0; 
    end
  initial
    begin
      $monitor("time=%0t, a=%b b=%b ci=%b s=%b c=%b",$time,a,b,ci,s,c);
    end
endmodule

  
