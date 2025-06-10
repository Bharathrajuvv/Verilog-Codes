// Design code for 4 to 2 Encoder
 module encoder4to2(i4,i3,i2,i1,o1,o2);
 input i4,i3,i2,i1;
 output o2,o1;
 or g1(o1,i2,i4);
 or g2(o2,i3,i4);
 assign o1=i2||i4;
 assign o2=i3||i4;
 endmodule 
