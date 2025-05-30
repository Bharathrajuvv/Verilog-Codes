// Testbench code for Bi-Directly Shift Redister 
module test;
  reg si,clk,rst,d;
  wire so;
  bi_dire_shr duv(si,clk,rst,d,so);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t si=%b clk=%b rst=%b d=%b so=%b",$time,si,clk,rst,d,so);
    clk=1;
    forever #5 clk =!clk;
  end
    initial  begin
    rst=1;
    #4 si=0;
    rst=0;
    si=1;
    d=1;
    #10 si=1;
    #10 si=0;
    #10 si=1;
    #10 si=1;
    #10 si=0;
    rst=1;
    #4 si=0;
    rst=0;
    si=1;
    d=0;
    #5 si=1;
    #5 si=0;
    #5 si=1;
    #5 si=1;
    #5 si=0;
    #100 $finish;
  end
endmodule

    
