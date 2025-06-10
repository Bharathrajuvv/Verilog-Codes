 //GATELEVEL MODELLING DEMUX1TO8
 module demux1to8_tb();
  reg a_tb,s2_tb,s1_tb,s0_tb;
  wire y0_tb,y1_tb,y2_tb,y3_tb,y4_tb,y5_tb,y6_tb,y7_tb;
  demux1to8 
duv(.a(a_tb),.s2(s2_tb),.s1(s1_tb),.s0(s0_tb),.y0(y0_tb),.y1(y1_tb),.y2(y2_tb),.y3(
 y3_tb),.y4(y4_tb),.y5(y5_tb),.y6(y6_tb),.y7(y7_tb));
  initial 
    begin
      $dumpfile("test.vcd");
      $dumpvars;
       s2_tb=0;s1_tb=0;s0_tb=0;a_tb=0;#10;
       s2_tb=0;s1_tb=0;s0_tb=0;a_tb=1;#10;
       s2_tb=0;s1_tb=0;s0_tb=1;a_tb=0;#10;
       s2_tb=0;s1_tb=0;s0_tb=1;a_tb=1;#10;
       s2_tb=0;s1_tb=1;s0_tb=0;a_tb=0;#10;
       s2_tb=0;s1_tb=1;s0_tb=0;a_tb=1;#10;
       s2_tb=0;s1_tb=1;s0_tb=1;a_tb=0;#10;
       s2_tb=0;s1_tb=1;s0_tb=1;a_tb=1;#10;
       s2_tb=1;s1_tb=0;s0_tb=0;a_tb=0;#10;
       s2_tb=1;s1_tb=0;s0_tb=0;a_tb=1;#10;
       s2_tb=1;s1_tb=0;s0_tb=1;a_tb=0;#10;
       s2_tb=1;s1_tb=0;s0_tb=1;a_tb=1;#10;
       s2_tb=1;s1_tb=1;s0_tb=0;a_tb=0;#10;
       s2_tb=1;s1_tb=1;s0_tb=0;a_tb=1;#10;
       s2_tb=1;s1_tb=1;s0_tb=1;a_tb=0;#10;
       s2_tb=1;s1_tb=1;s0_tb=1;a_tb=1;#10;
    end 
endmodule
