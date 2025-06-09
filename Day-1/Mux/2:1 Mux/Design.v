// Design code for 2:1 Mux
module mux2to1 (a,b,s,c);
  input a,b,s;
  output c;
  assign c=~s&a|s&b;
endmodule
