module my_and6 (
           input a,
           input b,
           input c,
           input d,
           input e,
           input f,
           output z
       );
wire and_1_z, and_2_z, and_3_z, and_4_z;

and_gate and_1(
             .x(a),
             .y(b),
             .z(and_1_z)
         );

and_gate and_2(
             .x(c),
             .y(d),
             .z(and_2_z)
         );

and_gate and_3(
             .x(e),
             .y(f),
             .z(and_3_z)
         );

and_gate and_4(
             .x(and_1_z),
             .y(and_2_z),
             .z(and_4_z)
         );

and_gate and_5(
             .x(and_4_z),
             .y(and_3_z),
             .z(z)
         );

endmodule
