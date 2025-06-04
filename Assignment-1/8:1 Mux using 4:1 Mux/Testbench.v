// Testbench code for 8:1 mux usign 4:1 mux
module mux8to1_tb();
  reg a_tb,b_tb,c_tb,d_tb,e_tb,f_tb,g_tb,h_tb,s2_tb,s1_tb,s0_tb;
  wire y_tb;
  mux8to1 duv (.a(a_tb),.b(b_tb),.c(c_tb),.d(d_tb),.e(e_tb),.f(f_tb),.g(g_tb),.h(h_tb),.s2(s2_tb),.s1(s1_tb),.s0(s0_tb),.y(y_tb));
  initial
    
    begin
      $dumpfile("test.vcd");
      $dumpvars(1);
      a_tb = 0;
      b_tb = 0;
      c_tb = 0;
      d_tb = 0;
      e_tb = 0;
      f_tb = 0;
      g_tb = 0;
      h_tb = 0;
      #5 a_tb=~a_tb;
      s2_tb=0;s1_tb=0;s0_tb=0; #10;
      s2_tb=0;s1_tb=0;s0_tb=0; #10;
      #5 b_tb=~b_tb;
      s2_tb=0;s1_tb=0;s0_tb=1; #10;
      s2_tb=0;s1_tb=0;s0_tb=1; #10;
      #5 c_tb=~c_tb;
      s2_tb=0;s1_tb=1;s0_tb=0; #10;
      s2_tb=0;s1_tb=1;s0_tb=0; #10;
      #5 d_tb=~d_tb;
      s2_tb=0;s1_tb=1;s0_tb=1; #10; 
      s2_tb=0;s1_tb=1;s0_tb=1; #10;
      #5 e_tb=~e_tb;
      s2_tb=1;s1_tb=0;s0_tb=0; #10;
      s2_tb=1;s1_tb=0;s0_tb=0; #10;
      #5 f_tb=~f_tb;
      s2_tb=1;s1_tb=0;s0_tb=1; #10;
      s2_tb=1;s1_tb=0;s0_tb=1; #10;
      #5 g_tb=~g_tb;
      s2_tb=1;s1_tb=1;s0_tb=0; #10;
      s2_tb=1;s1_tb=1;s0_tb=0; #10;
      #5 h_tb=~h_tb;
      s2_tb=1;s1_tb=1;s0_tb=1; #10;
      s2_tb=1;s1_tb=1;s0_tb=1; #10;
    end
endmodule

 
          
      
      
