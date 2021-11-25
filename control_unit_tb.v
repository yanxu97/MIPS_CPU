module control_unit_tb;

reg [5:0] tb_opcode;
wire rb_RegWrite, rb_alu_b_sel, rb_data_in_sel, rb_branch_en, rb_MemWrite, rb_RegDst, rb_ExtOp;
wire [2:0] tb_alu_op;

control_unit DUT (
                 .opcode(tb_opcode),
                 .RegWrite(rb_RegWrite),
                 .alu_b_sel(rb_alu_b_sel), // from : mux_alu_b_sel
                 .data_in_sel(rb_data_in_sel), // from : mux_data_in_sel
                 .alu_op(tb_alu_op),
                 .branch_en(rb_branch_en),
                 .MemWrite(rb_MemWrite),
                 .RegDst(rb_RegDst),
                 .ExtOp(rb_ExtOp)
             );



initial
begin
    tb_opcode = 6'b000000;
    
    #50
    tb_opcode = 6'b001000;
    
    #50
    tb_opcode = 6'b100011;
    
    #50
    tb_opcode = 6'b101011;
    
    #50
    tb_opcode = 6'b000100;
    
    #50
    tb_opcode = 6'b000101;
    
    #50
    tb_opcode = 6'b000111;
    
    #50
    $stop;
end

endmodule
