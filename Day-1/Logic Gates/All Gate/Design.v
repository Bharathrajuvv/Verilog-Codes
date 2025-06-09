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
