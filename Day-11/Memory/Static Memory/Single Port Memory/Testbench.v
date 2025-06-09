// Testbench code for Single Port Static RAM Memory
module test;
  reg clk,rst,wr;
  reg [2:0] addr;
  reg [3:0] x;
  wire [3:0] y;
  
  sin_ram duv(clk,rst,wr,addr,x,y);
  initial clk=0;
  always #5 clk=~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t clk=%b rst=%b wr=%b addr=%b x=%b y=%b",$time,clk,rst,addr,x,y);
    rst=1;
    #2 rst=0;
    wr=1;
        addr=3'b000; x=4'b0111; #10;
        addr=3'b001; x=4'b1110; #10;
        addr=3'b010; x=4'b0010; #10;
        addr=3'b011; x=4'b1100; #10;
        addr=3'b100; x=4'b0011; #10;
        addr=3'b101; x=4'b1010; #10;
        addr=3'b110; x=4'b0111; #10;
        addr=3'b111; x=4'b0101; #10;
    wr=0;
        addr=3'b000; #10;
        addr=3'b001; #10;
        addr=3'b010; #10;
        addr=3'b011; #10;
        addr=3'b100; #10;
        addr=3'b101; #10;
        addr=3'b110; #10;
        addr=3'b111; #10;
    #200 $finish;
  end
endmodule

    
    
