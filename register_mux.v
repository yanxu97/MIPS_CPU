module register_mux(
           in_0,
           in_1,
           in_2,
           in_3,
           in_4,
           in_5,
           in_6,
           in_7,
           in_8,
           in_9,
           in_10,
           in_11,
           in_12,
           in_13,
           in_14,
           in_15,
           in_16,
           in_17,
           in_18,
           in_19,
           in_20,
           in_21,
           in_22,
           in_23,
           in_24,
           in_25,
           in_26,
           in_27,
           in_28,
           in_29,
           in_30,
           in_31,
           out,
           sel
       );
input [31:0]in_0;
input [31:0]in_1;
input [31:0]in_2;
input [31:0]in_3;
input [31:0]in_4;
input [31:0]in_5;
input [31:0]in_6;
input [31:0]in_7;
input [31:0]in_8;
input [31:0]in_9;
input [31:0]in_10;
input [31:0]in_11;
input [31:0]in_12;
input [31:0]in_13;
input [31:0]in_14;
input [31:0]in_15;
input [31:0]in_16;
input [31:0]in_17;
input [31:0]in_18;
input [31:0]in_19;
input [31:0]in_20;
input [31:0]in_21;
input [31:0]in_22;
input [31:0]in_23;
input [31:0]in_24;
input [31:0]in_25;
input [31:0]in_26;
input [31:0]in_27;
input [31:0]in_28;
input [31:0]in_29;
input [31:0]in_30;
input [31:0]in_31;
input [4:0]sel;
output [31:0] out;
wire [31:0] wire_1_0;
wire [31:0] wire_1_1;
wire [31:0] wire_1_2;
wire [31:0] wire_1_3;
wire [31:0] wire_1_4;
wire [31:0] wire_1_5;
wire [31:0] wire_1_6;
wire [31:0] wire_1_7;
wire [31:0] wire_1_8;
wire [31:0] wire_1_9;
wire [31:0] wire_1_10;
wire [31:0] wire_1_11;
wire [31:0] wire_1_12;
wire [31:0] wire_1_13;
wire [31:0] wire_1_14;
wire [31:0] wire_1_15;
wire [31:0] wire_2_0;
wire [31:0] wire_2_1;
wire [31:0] wire_2_2;
wire [31:0] wire_2_3;
wire [31:0] wire_2_4;
wire [31:0] wire_2_5;
wire [31:0] wire_2_6;
wire [31:0] wire_2_7;
wire [31:0] wire_3_0;
wire [31:0] wire_3_1;
wire [31:0] wire_3_2;
wire [31:0] wire_3_3;
wire [31:0] wire_4_0;
wire [31:0] wire_4_1;
// mux_32 mux_1_0({31'h0,sel[0]},in_0,in_1,wire_1_0);
// mux_32 mux_1_1({31'h0,sel[0]},in_2,in_3,wire_1_1);
// mux_32 mux_1_2({31'h0,sel[0]},in_4,in_5,wire_1_2);
// mux_32 mux_1_3({31'h0,sel[0]},in_6,in_7,wire_1_3);
// mux_32 mux_1_4({31'h0,sel[0]},in_8,in_9,wire_1_4);
// mux_32 mux_1_5({31'h0,sel[0]},in_10,in_11,wire_1_5);
// mux_32 mux_1_6({31'h0,sel[0]},in_12,in_13,wire_1_6);
// mux_32 mux_1_7({31'h0,sel[0]},in_14,in_15,wire_1_7);
// mux_32 mux_1_8({31'h0,sel[0]},in_16,in_17,wire_1_8);
// mux_32 mux_1_9({31'h0,sel[0]},in_18,in_19,wire_1_9);
// mux_32 mux_1_10({31'h0,sel[0]},in_20,in_21,wire_1_10);
// mux_32 mux_1_11({31'h0,sel[0]},in_22,in_23,wire_1_11);
// mux_32 mux_1_12({31'h0,sel[0]},in_24,in_25,wire_1_12);
// mux_32 mux_1_13({31'h0,sel[0]},in_26,in_27,wire_1_13);
// mux_32 mux_1_14({31'h0,sel[0]},in_28,in_29,wire_1_14);
// mux_32 mux_1_15({31'h0,sel[0]},in_30,in_31,wire_1_15);
// mux_32 mux_2_0({31'h0,sel[1]},wire_1_0,wire_1_1,wire_2_0);
// mux_32 mux_2_1({31'h0,sel[1]},wire_1_2,wire_1_3,wire_2_1);
// mux_32 mux_2_2({31'h0,sel[1]},wire_1_4,wire_1_5,wire_2_2);
// mux_32 mux_2_3({31'h0,sel[1]},wire_1_6,wire_1_7,wire_2_3);
// mux_32 mux_2_4({31'h0,sel[1]},wire_1_8,wire_1_9,wire_2_4);
// mux_32 mux_2_5({31'h0,sel[1]},wire_1_10,wire_1_11,wire_2_5);
// mux_32 mux_2_6({31'h0,sel[1]},wire_1_12,wire_1_13,wire_2_6);
// mux_32 mux_2_7({31'h0,sel[1]},wire_1_14,wire_1_15,wire_2_7);
// mux_32 mux_3_0({31'h0,sel[2]},wire_2_0,wire_2_1,wire_3_0);
// mux_32 mux_3_1({31'h0,sel[2]},wire_2_2,wire_2_3,wire_3_1);
// mux_32 mux_3_2({31'h0,sel[2]},wire_2_4,wire_2_5,wire_3_2);
// mux_32 mux_3_3({31'h0,sel[2]},wire_2_6,wire_2_7,wire_3_3);
// mux_32 mux_4_0({31'h0,sel[3]},wire_3_0,wire_3_1,wire_4_0);
// mux_32 mux_4_1({31'h0,sel[3]},wire_3_2,wire_3_3,wire_4_1);
// mux_32 mux_5_0({31'h0,sel[4]},wire_4_0,wire_4_1,out);

mux_32 mux_1_0(sel[0],in_0,in_1,wire_1_0);
mux_32 mux_1_1(sel[0],in_2,in_3,wire_1_1);
mux_32 mux_1_2(sel[0],in_4,in_5,wire_1_2);
mux_32 mux_1_3(sel[0],in_6,in_7,wire_1_3);
mux_32 mux_1_4(sel[0],in_8,in_9,wire_1_4);
mux_32 mux_1_5(sel[0],in_10,in_11,wire_1_5);
mux_32 mux_1_6(sel[0],in_12,in_13,wire_1_6);
mux_32 mux_1_7(sel[0],in_14,in_15,wire_1_7);
mux_32 mux_1_8(sel[0],in_16,in_17,wire_1_8);
mux_32 mux_1_9(sel[0],in_18,in_19,wire_1_9);
mux_32 mux_1_10(sel[0],in_20,in_21,wire_1_10);
mux_32 mux_1_11(sel[0],in_22,in_23,wire_1_11);
mux_32 mux_1_12(sel[0],in_24,in_25,wire_1_12);
mux_32 mux_1_13(sel[0],in_26,in_27,wire_1_13);
mux_32 mux_1_14(sel[0],in_28,in_29,wire_1_14);
mux_32 mux_1_15(sel[0],in_30,in_31,wire_1_15);
mux_32 mux_2_0(sel[1],wire_1_0,wire_1_1,wire_2_0);
mux_32 mux_2_1(sel[1],wire_1_2,wire_1_3,wire_2_1);
mux_32 mux_2_2(sel[1],wire_1_4,wire_1_5,wire_2_2);
mux_32 mux_2_3(sel[1],wire_1_6,wire_1_7,wire_2_3);
mux_32 mux_2_4(sel[1],wire_1_8,wire_1_9,wire_2_4);
mux_32 mux_2_5(sel[1],wire_1_10,wire_1_11,wire_2_5);
mux_32 mux_2_6(sel[1],wire_1_12,wire_1_13,wire_2_6);
mux_32 mux_2_7(sel[1],wire_1_14,wire_1_15,wire_2_7);
mux_32 mux_3_0(sel[2],wire_2_0,wire_2_1,wire_3_0);
mux_32 mux_3_1(sel[2],wire_2_2,wire_2_3,wire_3_1);
mux_32 mux_3_2(sel[2],wire_2_4,wire_2_5,wire_3_2);
mux_32 mux_3_3(sel[2],wire_2_6,wire_2_7,wire_3_3);
mux_32 mux_4_0(sel[3],wire_3_0,wire_3_1,wire_4_0);
mux_32 mux_4_1(sel[3],wire_3_2,wire_3_3,wire_4_1);
mux_32 mux_5_0(sel[4],wire_4_0,wire_4_1,out);
endmodule
