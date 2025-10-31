// Code your design here
module nor_gate(input a,b, output y);
  wire w;
  supply1 vdd;
  supply0 gnd;
  pmos p1(w,vdd,a);
  pmos p2(y,w,b);
  nmos n1(y,gnd,a);
  nmos n2(y,gnd,b);
endmodule

module nor_gate1(input a,b, output y);
  nor g1 (y,a,b);
endmodule


// Code your testbench here
// or browse Examples
module nor_gate_tb;
  reg a,b;
  wire y;
  nor_gate duv(.*);
  initial
    begin
      a=0;b=0; #5;
      a=0;b=1; #5;
      a=1;b=0; #5;
      a=1;b=1; #5;
    end
  initial
    begin
      $monitor("time=%0t a=%b b=%b y=%b",$time,a,b,y);
    end
endmodule

      
  
