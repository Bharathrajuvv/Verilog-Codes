// Test Bench code for T Latch
module test;
  reg t;
  wire q,qn;
  t_latch duv(t,q,qn);
  initial begin
    $monitor("$time=%0t t=%b q=%b qn=%b",$time,t,q,qn);
    t=0;
    #5 t=1;
  end
endmodule

             
