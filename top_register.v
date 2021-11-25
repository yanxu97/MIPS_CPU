module top_register(
           clk,
            beq_en,
            bne_en,
            bgtz_en,
           rst,
           // Ra,
           // Rb,
           // Rd,
           instruction,
           // immediate_oprand,
           data_mem_write_back, //the output of data mem, as the input of register
           alu_ctrl,
           // shamt,
           RegWrite,
           mux_alu_b_sel,
           mux_data_in_sel,
           ExtOp,
           RegDst,
           alu_out,//check!!!!!!
           alu_zero_out,
           Rb_out //check!!!!!!
       );
input clk;
input rst;
// input [4:0] Ra;
// input [4:0] Rb;
// input [4:0] Rd;
input beq_en;
input bne_en;
input bgtz_en;
input [31:0] instruction;
// input [15:0] immediate_oprand;
input [31:0] data_mem_write_back;
input [2:0] alu_ctrl;
// input [4:0] shamt;
input RegWrite;
input mux_alu_b_sel;
input mux_data_in_sel;
input ExtOp;
input RegDst;
output [31:0]alu_out;
output alu_zero_out;
output [31:0]Rb_out;

wire alu_zero_out_tmp;
wire alu_zero_out_tmp_2;

wire not_alu_zero_out_tmp;
wire [31:0] alu_a_in,alu_b_in;
wire [31:0] reg_b_out;
wire [31:0] alu_out_wire;
wire [31:0] register_data_in;
wire [31:0] extend_immediate;
wire [4:0]Rw;
wire cout;
wire ovf;
wire [26:0] empty;
wire not_31;

assign alu_out = alu_out_wire;
assign Rb_out = reg_b_out;
register register_1(
             .clk(clk),
             .rst(rst),
             .Ra(instruction[25:21]),
             .Rb(instruction[20:16]),
             .Rd(Rw),
             .RegWrite(RegWrite),
             .Data(register_data_in),
             .out_a(alu_a_in),
             .out_b(reg_b_out));
//add ovf cout output wire
//
ALU alu(.ctrl(alu_ctrl), .A(alu_a_in),.B(alu_b_in),.shamt(instruction[10:6]),.cout(cout),.ovf(ovf),.ze(alu_zero_out_tmp),.R(alu_out_wire));
not_gate not_1(.x(alu_zero_out_tmp),.z(not_alu_zero_out_tmp));
not_gate not_2(.x(alu_out[31]),.z(not_31));
mux mux_2_in_1(bne_en,alu_zero_out_tmp,not_alu_zero_out_tmp,alu_zero_out_tmp_2);
mux mux_2_in_1_2(bgtz_en,alu_zero_out_tmp_2,not_31,alu_zero_out);
mux_32 mux_alu_b(mux_alu_b_sel,reg_b_out,extend_immediate,alu_b_in);
mux_32 mux_data_in(mux_data_in_sel,alu_out_wire,data_mem_write_back,register_data_in);
mux_32 mux_rd_rt(RegDst, {27'b0, instruction[20:16]}, {27'b0, instruction[15:11]}, {empty, Rw});
extender imm_extend(instruction[15:0],ExtOp,extend_immediate);

endmodule
