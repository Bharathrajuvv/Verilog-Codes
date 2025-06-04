// Design code for Full adder usign Half adder
module ha (a,b,s,c);
  input a,b;
  output s,c;
  assign s=a^b;
  assign c=a&b;
endmodule



module toplevel (a,b,c,s,cy);
  input a,b,c;
  output s,cy;
  wire w1,w2,w3;
  ha I1(.a(a),.b(b),.s(w1),.c(w2));
  ha I2(.a(w1),.b(c),.s(s),.c(w3));
  or I3(cy,w3,w2);
endmodule
