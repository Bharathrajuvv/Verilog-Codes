// Testbench code for 8:1 Mux
module mux8to1_tb();
    reg [7:0] d;
    reg [2:0] s;
    wire out;
    
    mux8to1 duv(.data_in(d), .sel(s), .out(out));
    
    initial begin
        $dumpfile("mux8to1.vcd");
        $dumpvars;
        d = 8'b10101010;
        s = 0; #10;
        s = 1; #10;
        s = 2; #10;
        s = 3; #10;
        s = 4; #10;
        s = 5; #10;
        s = 6; #10;
        s = 7; #10;
        d = 8'b10000001;
        s = 0; #10;
        s = 7; #10;
       $finish;
    end
    
    initial begin
        $monitor("time=%0t d=%b s=%b out=%b", $time, d, s, out);
    end
endmodule
