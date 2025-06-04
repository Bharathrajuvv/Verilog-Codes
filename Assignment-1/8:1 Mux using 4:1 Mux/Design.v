// Design code for 8:1 mux usign 4:1 mux
module mux2to1(a,b,s,y);
  input a,b,s;
  output y;
  assign y=~s&a|s&b;
endmodule

module mux4to1 (a,b,c,d,s0,s1,y);
  input a,b,c,d,s0,s1;
  output y;
  assign y=~s0&~s1&a|~s0&s1&b|s0&~s1&c|s0&s1&d;
endmodule

module mux8to1 (a,b,c,d,e,f,g,h,s2,s1,s0,y);
  input a,b,c,d,e,f,g,h,s2,s1,s0;
  output y;
  wire w1,w2;
  mux4to1 m1(.a(a),.b(b),.c(c),.d(d),.s0(s1),.s1(s2),.y(w1));
  mux4to1 m2(.a(e),.b(f),.c(g),.d(h),.s0(s1),.s1(s2),.y(w2));
  mux2to1 m3(.a(w1),.b(w2),.s(s0),.y(y));
endmodule
  
  
  
