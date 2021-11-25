module ALUCU(ALUOp, func, ALUCtr);
    
    input [2:0] ALUOp;
    input [5:0] func;
    output wire [2:0] ALUCtr;
    
    // wire [2:0] ALUCtr_temp;
    // wire [2:0] ALUCtr_sll;
    // wire [2:0] ALUCtr_adu;
    // wire [2:0] ALUCtemp;
    // wire [2:0] ALUCtremp;
    // wire Ffunc;
    // wire self;
    
    // assign Ffunc = (func[5] || func[4] || func[3] || func[2] || func[1] || func[0] || (~ALUOp[2]));
    
    // assign ALUCtr_sll = 3'b101;
    
    // assign self = (func[5] && (~func[4]) && (~func[3]) && (~func[2]) && (~func[1]) && func[0] && ALUOp[2]);
    
    // assign ALUCtr_adu = 3'b010;
    
    
    // assign ALUCtr_temp[2] = (((~ALUOp[2]) && ALUOp[0]) || (ALUOp[2] && (~func[2]) && func[1] && (~func[0])));
    // assign ALUCtr_temp[1] = (((~ALUOp[2]) && (~(ALUOp[1] && ALUOp[0]))) | (ALUOp[2] && (~func[2]) & (~func[0]))); 
    // assign ALUCtr_temp[0] = ((ALUOp[2] && (~func[3]) && func[2] && (~func[1]) && func[0]) || (ALUOp[2] && func[3] && (~func[2]) && func[1] && (~func[0])));
    
    // mux_n #(.n(3)) mux_map_0(.sel(Ffunc), .src0(ALUCtr_sll), .src1(ALUCtr_temp), .z(ALUCtremp));
    // mux_n #(.n(3)) mux_map_1(.sel(self), .src0(ALUCtremp), .src1(ALUCtr_adu), .z(ALUCtr));


    wire [5:0] flipped_func;
    wire and_z_1, and_z;
    wire or_z_1, or_z;
    wire add_z_1, add_z, fa_z;
    wire slt_signed_1, slt_signed;
    wire fa_uz_1, fa_uz;
    wire sll_r_1, sll_r;
    wire sub_z_2, sub_z_1, sub_z;
    wire subu_z_1, subu_z;
    wire determine_sub_z_or_2_z;
    wire slt_r_1, slt_r;

    wire determine_ALUCtr2_1_z, determine_ALUCtr2_2_z;
    wire determine_ALUCtr1_1_z, determine_ALUCtr1_2_z;
    wire determine_ALUCtr0_1_z, determine_ALUCtr0_2_z;

    not_gate_n #(.n(6)) FLIP_OPCODE_ALUCU (
               .x(func),
               .z(flipped_func)
           );

    // determine and_z
    my_and6 determine_and_z (
         .a(func[5]),
         .b(flipped_func[4]),
         .c(flipped_func[3]),
         .d(func[2]),
         .e(flipped_func[1]),
         .f(flipped_func[0]),
         .z(and_z_1)
     );
    
    and_gate determine_and_z_and_1 (
        .x(and_z_1),
        .y(ALUOp[0]), // R_Type
        .z(and_z)
    );

    // determine or_z
    my_and6 determine_or_z (
         .a(func[5]),
         .b(flipped_func[4]),
         .c(flipped_func[3]),
         .d(func[2]),
         .e(flipped_func[1]),
         .f(func[0]),
         .z(or_z_1)
     );
    
    and_gate determine_or_z_and_1 (
        .x(or_z_1),
        .y(ALUOp[0]), // R_Type
        .z(or_z)
    );

    // determine fa_z
    // determine add
    my_and6 determine_add_z (
         .a(func[5]),
         .b(flipped_func[4]),
         .c(flipped_func[3]),
         .d(flipped_func[2]),
         .e(flipped_func[1]),
         .f(flipped_func[0]),
         .z(add_z_1)
     );

    and_gate determine_add_z_and_1 (
        .x(add_z_1),
        .y(ALUOp[0]), // R_Type
        .z(add_z)
    );

    or_gate determine_add_z_or_2 (
        .x(add_z),
        .y(ALUOp[1]), // lw, sw, addi
        .z(fa_z)
    );

    // determine slt_signed
    my_and6 determine_slt_signed (
         .a(func[5]),
         .b(flipped_func[4]),
         .c(func[3]),
         .d(flipped_func[2]),
         .e(func[1]),
         .f(flipped_func[0]),
         .z(slt_signed_1)
     );

    and_gate determine_slt_signed_and_1 (
        .x(slt_signed_1),
        .y(ALUOp[0]), // R_Type
        .z(slt_signed)
    );

    // determine fa_uz
    my_and6 determine_fa_uz (
         .a(func[5]),
         .b(flipped_func[4]),
         .c(flipped_func[3]),
         .d(flipped_func[2]),
         .e(flipped_func[1]),
         .f(func[0]),
         .z(fa_uz_1)
     );

    and_gate determine_fa_uz_and_1 (
        .x(fa_uz_1),
        .y(ALUOp[0]), // R_Type
        .z(fa_uz)
    );

    // determine sll_r
    my_and6 determine_sll_r (
         .a(flipped_func[5]),
         .b(flipped_func[4]),
         .c(flipped_func[3]),
         .d(flipped_func[2]),
         .e(flipped_func[1]),
         .f(flipped_func[0]),
         .z(sll_r_1)
     );

    and_gate determine_sll_r_and_1 (
        .x(sll_r_1),
        .y(ALUOp[0]), // R_Type
        .z(sll_r)
    );

    // determine sub_z
    // determine sub
    my_and6 determine_sub_z (
         .a(func[5]),
         .b(flipped_func[4]),
         .c(flipped_func[3]),
         .d(flipped_func[2]),
         .e(func[1]),
         .f(flipped_func[0]),
         .z(sub_z_2)
     );

    and_gate determine_sub_z_and_1 (
        .x(sub_z_2),
        .y(ALUOp[0]), // R_Type
        .z(sub_z_1)
    );

    // determine subu
    my_and6 determine_subu_z (
         .a(func[5]),
         .b(flipped_func[4]),
         .c(flipped_func[3]),
         .d(flipped_func[2]),
         .e(func[1]),
         .f(func[0]),
         .z(subu_z_1)
     );

    and_gate determine_subu_z_and_1 (
        .x(subu_z_1),
        .y(ALUOp[0]), // R_Type
        .z(subu_z)
    );

    // determine partial sub_z
    or_gate determine_sub_z_or_2 (
        .x(sub_z_1),
        .y(subu_z),
        .z(determine_sub_z_or_2_z)
    );

    or_gate determine_sub_z_or_3 (
        .x(determine_sub_z_or_2_z),
        .y(ALUOp[2]),
        .z(sub_z)
    );

    // determine slt_r
    my_and6 determine_slt_r (
         .a(func[5]),
         .b(flipped_func[4]),
         .c(func[3]),
         .d(flipped_func[2]),
         .e(func[1]),
         .f(func[0]),
         .z(slt_r_1)
     );

    and_gate determine_slt_r_and_1 (
        .x(slt_r_1),
        .y(ALUOp[0]),
        .z(slt_r)
    );

    // determine the final ALUCtr
    // ALUCtr[2]
    or_gate determine_ALUCtr2_1 (
        .x(fa_uz),
        .y(sll_r),
        .z(determine_ALUCtr2_1_z)
    );

    or_gate determine_ALUCtr2_2 (
        .x(determine_ALUCtr2_1_z),
        .y(sub_z),
        .z(determine_ALUCtr2_2_z)
    );

    or_gate determine_ALUCtr2_3 (
        .x(determine_ALUCtr2_2_z),
        .y(slt_r),
        .z(ALUCtr[2])
    );

    // ALUCtr[1]
    or_gate determine_ALUCtr1_1 (
        .x(fa_z),
        .y(slt_signed),
        .z(determine_ALUCtr1_1_z)
    );

    or_gate determine_ALUCtr1_2 (
        .x(determine_ALUCtr1_1_z),
        .y(sub_z),
        .z(determine_ALUCtr1_2_z)
    );

    or_gate determine_ALUCtr1_3 (
        .x(determine_ALUCtr1_2_z),
        .y(slt_r),
        .z(ALUCtr[1])
    );

    // ALUCtr[0]
    or_gate determine_ALUCtr0_1 (
        .x(or_z),
        .y(slt_signed),
        .z(determine_ALUCtr0_1_z)
    );

    or_gate determine_ALUCtr0_2 (
        .x(determine_ALUCtr0_1_z),
        .y(sll_r),
        .z(determine_ALUCtr0_2_z)
    );

    or_gate determine_ALUCtr0_3 (
        .x(determine_ALUCtr0_2_z),
        .y(slt_r),
        .z(ALUCtr[0])
    );

endmodule
    