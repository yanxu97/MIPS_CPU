// the pc change at the same posedge after control becomes.
module PC (
           clk,
           control,
           reset,
           branch_offset,
        //    pc_out
        pc_in
       );

input clk;
input control;
input reset;
input [15:0]branch_offset;
// output [31:0] pc_out;
output [31:0]pc_in;

wire [31:0] pc_out;
wire [31:0] add1;
wire [31:0] add2;
wire [31:0] mux1;
wire [31:0] mux_pc;
wire [31:0] extender;
// wire [31:0] pc_in;

wire [1:0] not_used;

// assign extender[31:16] = 0;
// assign extender[15:0] = branch_offset;

// assign extender[31:16] = {16{branch_offset[15]}};
// assign extender[15:0] = {branch_offset[15:2],2'b0};

// assign extender = {{14{branch_offset[15]}},branch_offset,2'b0};
// assign extender[17:2] = branch_offset;
// assign extender[17:2] = 0;
// assign extender[1:0] = 2'b0;

// always @(posedge clk)
//     begin
//         pc_in <= pc_out;
//     end

dff_32 pc(
           .clk    (clk),
           .d      (pc_out),
           .q      (pc_in)
       );

full_adder_32bit adder1(
                     .x              (pc_in),
                     .y              (32'b100),
                     .cin            (1'b0),
                     .z              (add1),
                     .cout           (not_used[0]),
                     .ovf            (not_used[1])
                 );

full_adder_32bit adder2(
                     .x              (add1),
                    //  .y              (extender),
                    .y              ({{14{branch_offset[15]}},branch_offset,2'b00}),
                     .cin            (1'b0),
                     .z              (add2),
                     .cout           (not_used[0]),
                     .ovf            (not_used[1])
                 );

mux_32 mux0(
           .sel        (control),
           .src0       (add1),
           .src1       (add2),
           .z          (mux_pc)
       );

mux_32 mux_pc0 (
           .sel      (reset),
           .src0     (mux_pc),
           .src1     (32'h00400020),
           .z        (pc_out)
       );

endmodule
