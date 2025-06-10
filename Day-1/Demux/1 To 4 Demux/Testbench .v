 // DATAFLOW MODEL 1:4 DEMUX
 module demux1to4_tb();
  reg  D_tb,S0_tb,S1_tb;
  wire Y0_tb,Y1_tb,Y2_tb,Y3_tb;
  demux1to4 
duv(.D(D_tb),.S0(S0_tb),.S1(S1_tb),.Y0(Y0_tb),.Y1(Y1_tb),.Y2(Y2_tb),.Y3(Y3_tb));
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars;
       D_tb=0;S0_tb=0;S1_tb=0;#10;
       D_tb=0;S0_tb=0;S1_tb=1;#10;
       D_tb=0;S0_tb=1;S1_tb=0;#10;
       D_tb=0;S0_tb=1;S1_tb=1;#10;     
       D_tb=1;S0_tb=0;S1_tb=0;#10;
       D_tb=1;S0_tb=0;S1_tb=1;#10;
       D_tb=1;S0_tb=1;S1_tb=0;#10;
       D_tb=1;S0_tb=1;S1_tb=1;#10;
       
    end
 endmodule
