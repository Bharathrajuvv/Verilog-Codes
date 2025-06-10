 // DATAFLOW MODEL 1:4 DEMUX
 module demux1to4(D,S1,S0,Y0,Y1,Y2,Y3);
  input D,S0,S1;
  output Y0,Y1,Y2,Y3;
  assign Y0=~S1&~S0&D;
  assign Y1=~S1&S0&D;
  assign Y2=S1&~S0&D;
  assign Y3=S1&S0&D;
 endmodule 
