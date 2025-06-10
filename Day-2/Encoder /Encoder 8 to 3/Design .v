//DATAFLOW MODEL 8:3ENCODER
 module encoder8to3(d0,d1,d2,d3,d4,d5,d6,d7,y2,y1,y0);
  input d0,d1,d2,d3,d4,d5,d6,d7;
  output y2,y1,y0;
  assign y0=d1|d3|d5|d7;
  assign y1=d2|d3|d6|d7;
  assign y2=d4|d5|d6|d7;
 endmodule 
