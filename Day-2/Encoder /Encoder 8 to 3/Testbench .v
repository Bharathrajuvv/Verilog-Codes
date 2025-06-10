//DATAFLOW MODEL 8:3ENCODER
 module encoder8to3_tb();
  reg d0_tb,d1_tb,d2_tb,d3_tb,d4_tb,d5_tb,d6_tb,d7_tb;
  wire y2_tb,y1_tb,y0_tb;
  encoder8to3 
   duv(.d0(d0_tb),.d1(d1_tb),.d2(d2_tb),.d3(d3_tb),.d4(d4_tb),.d5(d5_tb),.d6(d6_tb),.d7(d7_tb),.y2(y2_tb),.y1(y1_tb),.y0(y0_tb));
 initial 
  begin
    $dumpfile("test.vcd");
    $dumpvars;
    d0_tb=0;d1_tb=0;d2_tb=0;d3_tb=0;d4_tb=0;d5_tb=0;d6_tb=0;d7_tb=1;#10;
    d0_tb=0;d1_tb=0;d2_tb=0;d3_tb=0;d4_tb=0;d5_tb=0;d6_tb=1;d7_tb=0;#10;
    d0_tb=0;d1_tb=0;d2_tb=0;d3_tb=0;d4_tb=0;d5_tb=1;d6_tb=0;d7_tb=0;#10;
    d0_tb=0;d1_tb=0;d2_tb=0;d3_tb=0;d4_tb=1;d5_tb=0;d6_tb=0;d7_tb=0;#10;
    d0_tb=0;d1_tb=0;d2_tb=0;d3_tb=1;d4_tb=0;d5_tb=0;d6_tb=0;d7_tb=0;#10;
    d0_tb=0;d1_tb=0;d2_tb=1;d3_tb=0;d4_tb=0;d5_tb=0;d6_tb=0;d7_tb=0;#10;
    d0_tb=0;d1_tb=1;d2_tb=0;d3_tb=0;d4_tb=0;d5_tb=0;d6_tb=0;d7_tb=0;#10;
    d0_tb=1;d1_tb=0;d2_tb=0;d3_tb=0;d4_tb=0;d5_tb=0;d6_tb=0;d7_tb=0;#10;
  end
 endmodule 
