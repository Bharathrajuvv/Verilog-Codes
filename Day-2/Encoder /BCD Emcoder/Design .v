//GATELEVEL MODELLING BCD ENCODER 
module bcdencoder(d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,y3,y2,y1,y0);
 input d0,d1,d2,d3,d4,d5,d6,d7,d8,d9;
 output y0,y1,y2,y3;
 or g1(y0,d1,d3,d5,d7,d9);
 or g2(y1,d2,d3,d6,d7);
 or g3(y2,d4,d5,d6,d7);
 or g4(y3,d8,d9);
 endmodule 
