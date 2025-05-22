// Code your design here
module nand_gate(input a,b, output y);
  wire w;
  supply1 vdd;
  supply0 gnd;
  pmos p1(y,vdd,a);
  pmos p2(y,vdd,b);
  nmos n1(y,w,a);
  nmos n2(w,gnd,b);
endmodule

module nand_gate1(input a,b, output y);
  nand g1 (y,a,b);
endmodule


// Code your testbench here
// or browse Examples
module nand_gate_tb;
  reg a,b;
  wire y;
  nand_gate duv(.*);
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



      
