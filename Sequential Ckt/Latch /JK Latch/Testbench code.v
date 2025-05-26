// Test Bench code for JK Latch 
module test;
  reg j,k;
  wire q,qn;
  jk_latch duv(j,k,q,qn);
  initial begin 
    $monitor("time=%0t j=%b k=%b q=%b qn=%b",$time,j,k,q,qn);
    j=0;k=0;
    #5 j=0;k=1;
    #5 j=1;k=0;
    #5 j=1;k=1;
  end
endmodule
