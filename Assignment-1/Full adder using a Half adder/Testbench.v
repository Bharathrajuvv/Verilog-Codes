// Testbench code for Full adder usign Half adder
module toplevel_tb ();
  reg a_tb,b_tb,c_tb;
  wire s_tb,cy_tb;
  toplevel duv (.a(a_tb),.b(b_tb),.c(c_tb),.s(s_tb),.cy(cy_tb));
  initial 
    begin 
      $dumpfile ("test.vcd");
      $dumpvars;
      a_tb=0;b_tb=0;c_tb=0; #10;
      a_tb=0;b_tb=0;c_tb=1; #10;
      a_tb=0;b_tb=1;c_tb=0; #10;
      a_tb=0;b_tb=1;c_tb=1; #10;
      a_tb=1;b_tb=0;c_tb=0; #10;
      a_tb=1;b_tb=0;c_tb=1; #10;
      a_tb=1;b_tb=1;c_tb=0; #10;
      a_tb=1;b_tb=1;c_tb=1; #10;
    end
endmodule
      
      
      
      
            

               

