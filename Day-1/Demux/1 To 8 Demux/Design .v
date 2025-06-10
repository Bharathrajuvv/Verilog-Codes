 //GATELEVEL MODELLING DEMUX1TO8
 module demux1to8(a,s2,s1,s0,y0,y1,y2,y3,y4,y5,y6,y7);
  input a,s0,s1,s2;
  output y0,y1,y2,y3,y4,y5,y6,y7;
  wire w1,w2,w3;
  not g1(w1,s2);
  not g2(w2,s1);
  not g3(w3,s0);
  and g4(y0,w1,w2,w3);
  and g5(y1,w1,w2,s0);
  and g6(y2,w1,s1,w3);
  and g7(y3,w1,s1,s0);
  and g8(y4,s2,w2,w3);
  and g9(y5,s2,w2,s0);
  and g10(y6,s2,s1,w3);
  and g11(y7,s2,s1,s0);
 endmodule
