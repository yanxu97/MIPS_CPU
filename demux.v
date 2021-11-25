module demux(
    src,
    out
);
input [4:0]src;
output [31:0]out;
// defparam demux_1.n=5;
dec_n #(.n(5)) demux_1(src,out);
endmodule