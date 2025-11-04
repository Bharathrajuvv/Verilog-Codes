//Design code for full adder using half adder
module ha (a,b,s,c);
  input a,b;
  output s,c;
  assign s=a^b;
  assign c=a&b;
endmodule



module toplevel (a,b,c,s,cy);
  input a,b,c;
  output s,cy;
  wire w1,w2,w3;
  ha I1(.a(a),.b(b),.s(w1),.c(w2));
  ha I2(.a(w1),.b(c),.s(s),.c(w3));
  or I3(cy,w3,w2);
endmodule

// Testbench code for full adder using half adder
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
      
      
      
      
            

               

