module my_or3 (
           input a,
           input b,
           input c,
           output z
       );

wire or_1_z;

or_gate or_1 (
            .x(a),
            .y(b),
            .z(or_1_z)
        );

or_gate or_2 (
            .x(or_1_z),
            .y(c),
            .z(z)
        );

endmodule
