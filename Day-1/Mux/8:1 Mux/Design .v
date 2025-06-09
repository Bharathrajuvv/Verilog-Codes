// Design code for 8:1 Mux
module mux8to1(
    input [7:0] data_in,
    input [2:0] sel,
    output out);
    assign out = (sel == 3'b000) ? data_in[0] :
                 (sel == 3'b001) ? data_in[1] :
                 (sel == 3'b010) ? data_in[2] :
                 (sel == 3'b011) ? data_in[3] :
                 (sel == 3'b100) ? data_in[4] :
                 (sel == 3'b101) ? data_in[5] :
                 (sel == 3'b110) ? data_in[6] :
                 data_in[7]; 
endmodule
