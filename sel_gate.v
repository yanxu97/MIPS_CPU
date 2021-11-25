`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/14 19:32:18
// Design Name: 
// Module Name: sel_gate
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
// 
//////////////////////////////////////////////////////////////////////////////////


module sel_gate(
    sel,
    a, //should be the input
    b, //should be the orig reg
    out

    );
    input a;
    input b;
    input sel;
    output out;
    wire intermedia_1,intermedia_2;
    wire not_sel;
and_gate gate_a(sel,a,intermedia_1);
not_gate gate_b(sel,not_sel);
and_gate gate_c(not_sel,b,intermedia_2);
or_gate gate_out(intermedia_1,intermedia_2,out);
endmodule
