// Test Bench Code for D Latch 
module test;
  reg d;
  wire q,qn;
  d_latch duv(d,q,qn);
  initial begin
    $monitor("time=%0t d=%b q=%b qn=%b",$time,d,q,qn);
    d=0;
    #5 d=1;
  end
endmodule
