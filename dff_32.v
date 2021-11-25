module dff_32 (
    clk,
    d,
    q
);

input clk;
input [31:0] d;
output [31:0] q;

genvar i;
generate
    for (i=0; i<32; i=i+1) begin : dff_bits
    dff dff_reg(
        .clk    (clk),
        .d      (d[i]),
        .q      (q[i])
    );      
    end
endgenerate

endmodule