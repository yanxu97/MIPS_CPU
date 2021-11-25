module single_cycle_CPU #(parameter mem_file = "./data/bills_branch.dat") (
           input clk,
           input reset
       );

wire [31:0] instruction;
wire control;
wire [31:0] data_out;
wire [2:0] ALUCtr;
wire RegWrite;
wire [31:0] data_memory_addr, data_memory_data;
wire alu_b_sel, data_in_sel;
wire [2:0] alu_op;
wire branch_en;
wire alu_zero_out;
wire ExtOp;
wire RegDst;
wire MemWrite;
wire beq_en;
wire bne_en;
wire bgtz_en;

//LCX
IF IF0(
       .clk                        (clk),
       .control                    (control),
       .reset               (reset),
       .instruction                (instruction)
   );

defparam IF0.mem_file = mem_file;

and_gate and_0 (
             .x(branch_en),
             .y(alu_zero_out),
             .z(control)
         );

//LJX
top_register top_register0(
                 .clk(clk),
                .beq_en(beq_en),
                .bne_en(bne_en),
                .bgtz_en(bgtz_en),
                 .rst(reset),
                 .instruction(instruction),
                 .data_mem_write_back(data_out), //the output of data mem, as the input of register
                 .alu_ctrl(ALUCtr),
                 .RegWrite(RegWrite),
                 .mux_alu_b_sel(alu_b_sel),
                 .mux_data_in_sel(data_in_sel),
                 .ExtOp(ExtOp),
                 .RegDst(RegDst),
                 .alu_out(data_memory_addr),
                 .alu_zero_out(alu_zero_out),
                 .Rb_out(data_memory_data)
             );

//XY
control_unit control_unit0(
                 .opcode(instruction[31:26]),
                .beq_en(beq_en),
                .bne_en(bne_en),
                .bgtz_en(bgtz_en),
                 .RegWrite(RegWrite),
                 .alu_b_sel(alu_b_sel),
                 .data_in_sel(data_in_sel),
                 .alu_op(alu_op),
                 .branch_en(branch_en),
                 .MemWrite(MemWrite),
                 .RegDst(RegDst),
                 .ExtOp(ExtOp)
             );

//alucu
ALUCU ALUCU0(
          .ALUOp(alu_op),
          .func(instruction[5:0]),
          .ALUCtr(ALUCtr)
      );


//mem
sram #(.mem_file(mem_file)) data_mem (
// syncram #(.mem_file(mem_file)) data_mem (  
        // .clk(clk),
         .cs(1'b1),
         .oe(1'b1),
         .we(MemWrite),
         .addr(data_memory_addr),
         .din(data_memory_data),
         .dout(data_out)
     );

endmodule
