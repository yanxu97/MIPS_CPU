module control_unit (
           input [5:0] opcode,
           output beq_en,
           output bne_en,
           output bgtz_en,
           output RegWrite,
           output alu_b_sel, // from : mux_alu_b_sel
           output data_in_sel, // from : mux_data_in_sel
           output [2:0] alu_op,
           output branch_en,
           output MemWrite,
           output RegDst,
           output ExtOp
       );

wire [5:0] flipped_opcode;
wire R_type, addi, lw, sw, beq, bne, bgtz;
wire lw_sw;

// flip the opcode
not_gate_n #(.n(6)) FLIP_OPCODE (
               .x(opcode),
               .z(flipped_opcode)
           );

// R_type
my_and6 determine_R_type (
         .a(flipped_opcode[5]),
         .b(flipped_opcode[4]),
         .c(flipped_opcode[3]),
         .d(flipped_opcode[2]),
         .e(flipped_opcode[1]),
         .f(flipped_opcode[0]),
         .z(R_type)
     );

// addi
my_and6 determine_addi (
         .a(flipped_opcode[5]),
         .b(flipped_opcode[4]),
         .c(opcode[3]),
         .d(flipped_opcode[2]),
         .e(flipped_opcode[1]),
         .f(flipped_opcode[0]),
         .z(addi)
     );

// lw
my_and6 determine_lw (
         .a(opcode[5]),
         .b(flipped_opcode[4]),
         .c(flipped_opcode[3]),
         .d(flipped_opcode[2]),
         .e(opcode[1]),
         .f(opcode[0]),
         .z(lw)
     );

// sw
my_and6 determine_sw (
         .a(opcode[5]),
         .b(flipped_opcode[4]),
         .c(opcode[3]),
         .d(flipped_opcode[2]),
         .e(opcode[1]),
         .f(opcode[0]),
         .z(sw)
     );

// beq
my_and6 determine_beq (
         .a(flipped_opcode[5]),
         .b(flipped_opcode[4]),
         .c(flipped_opcode[3]),
         .d(opcode[2]),
         .e(flipped_opcode[1]),
         .f(flipped_opcode[0]),
         .z(beq)
     );

// bne
my_and6 determine_bne (
         .a(flipped_opcode[5]),
         .b(flipped_opcode[4]),
         .c(flipped_opcode[3]),
         .d(opcode[2]),
         .e(flipped_opcode[1]),
         .f(opcode[0]),
         .z(bne)
     );

// bgtz
my_and6 determine_bgtz (
         .a(flipped_opcode[5]),
         .b(flipped_opcode[4]),
         .c(flipped_opcode[3]),
         .d(opcode[2]),
         .e(opcode[1]),
         .f(opcode[0]),
         .z(bgtz)
     );

// RegWrite,
my_or3 determine_RegWrite (
        .a(R_type),
        .b(addi),
        .c(lw),
        .z(RegWrite)
    );

// alu_b_sel, // from : mux_alu_b_sel
my_or3 determine_alu_b_sel (
        .a(addi),
        .b(lw),
        .c(sw),
        .z(alu_b_sel)
    );

// data_in_sel, // from : mux_data_in_sel
assign data_in_sel = lw;

or_gate or_gate_1 (
    .x(lw),
    .y(sw),
    .z(lw_sw)
);

or_gate or_gate_2 (
    .x(lw_sw),
    .y(addi),
    .z(alu_op[1])
);

// [2:0] alu_op,
assign alu_op[2] = branch_en;
//assign alu_op[1] = lw_sw;
assign alu_op[0] = R_type;

// branch_en,
my_or3 determine_branch_en (
        .a(beq),
        .b(bne),
        .c(bgtz),
        .z(branch_en)
    );

// MemWrite,
assign MemWrite = sw;

// RegDst,
assign RegDst = R_type;

// outputs
assign ExtOp = 1'b1;
assign beq_en = beq;
assign bne_en = bne;
assign bgtz_en = bgtz;

endmodule
