// Testbench code for 4 to 2 Encoder
 module encoder4to2_tb();
 reg i4_tb,i3_tb,i2_tb,i1_tb;
 wire o2_tb,o1_tb;
 encoder4to2 
duv(.i1(i1_tb),.i2(i2_tb),.i3(i3_tb),.i4(i4_tb),.o1(o1_tb),.o2(o2_tb));
 initial
 begin
 $dumpfile("test.vcd");
 $dumpvars;
 i1_tb=0;i2_tb=0;i3_tb=0;i4_tb=1;#10;
 i1_tb=0;i2_tb=0;i3_tb=1;i4_tb=0;#10;
 i1_tb=0;i2_tb=1;i3_tb=0;i4_tb=0;#10;
 i1_tb=1;i2_tb=0;i3_tb=0;i4_tb=0;#10;
 end;
 endmodule
