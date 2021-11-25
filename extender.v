`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/14 21:56:27
// Design Name: 
// Module Name: extender
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// when teh extop is 1, using the sign to padding 
//////////////////////////////////////////////////////////////////////////////////


// module extender(
//     immediate_oprand,
//     ExtOp,
//     extend_output
//     );
//     input [15:0]immediate_oprand;
//     input ExtOp;
//     wire [31:0]extend_immediate;
//     output [31:0] extend_output;
//     wire padding;
//     assign extend_immediate[15:0]=immediate_oprand;
//     assign extend_immediate[31:16]={16{padding}};
// and_gate and1(immediate_oprand[15],ExtOp,padding);
// alu_sll add_four(.a(extend_immediate),.b(32'h4),.out(extend_output));
// endmodule

module extender(
    immediate_oprand,
    ExtOp,
    extend_output
    );
    input [15:0]immediate_oprand;
    input ExtOp;
    // wire [31:0]extend_immediate;
    output [31:0] extend_output;
    wire padding;
    assign extend_output[15:0]=immediate_oprand;
    assign extend_output[31:16]={16{immediate_oprand[15]}};
endmodule
