module and_gate_1024(
    a,
    b,
    c
);
input [1023:0] a;
input [1023:0] b;
output [1023:0] c;
// defparam demux_1.n=1024;
and_gate_32 demux_0(a[31:0],b[31:0],c[31:0]);
and_gate_32 demux_1(a[63:32],b[63:32],c[63:32]);
and_gate_32 demux_2(a[95:64],b[95:64],c[95:64]);
and_gate_32 demux_3(a[127:96],b[127:96],c[127:96]);
and_gate_32 demux_4(a[159:128],b[159:128],c[159:128]);
and_gate_32 demux_5(a[191:160],b[191:160],c[191:160]);
and_gate_32 demux_6(a[223:192],b[223:192],c[223:192]);
and_gate_32 demux_7(a[255:224],b[255:224],c[255:224]);
and_gate_32 demux_8(a[287:256],b[287:256],c[287:256]);
and_gate_32 demux_9(a[319:288],b[319:288],c[319:288]);
and_gate_32 demux_10(a[351:320],b[351:320],c[351:320]);
and_gate_32 demux_11(a[383:352],b[383:352],c[383:352]);
and_gate_32 demux_12(a[415:384],b[415:384],c[415:384]);
and_gate_32 demux_13(a[447:416],b[447:416],c[447:416]);
and_gate_32 demux_14(a[479:448],b[479:448],c[479:448]);
and_gate_32 demux_15(a[511:480],b[511:480],c[511:480]);
and_gate_32 demux_16(a[543:512],b[543:512],c[543:512]);
and_gate_32 demux_17(a[575:544],b[575:544],c[575:544]);
and_gate_32 demux_18(a[607:576],b[607:576],c[607:576]);
and_gate_32 demux_19(a[639:608],b[639:608],c[639:608]);
and_gate_32 demux_20(a[671:640],b[671:640],c[671:640]);
and_gate_32 demux_21(a[703:672],b[703:672],c[703:672]);
and_gate_32 demux_22(a[735:704],b[735:704],c[735:704]);
and_gate_32 demux_23(a[767:736],b[767:736],c[767:736]);
and_gate_32 demux_24(a[799:768],b[799:768],c[799:768]);
and_gate_32 demux_25(a[831:800],b[831:800],c[831:800]);
and_gate_32 demux_26(a[863:832],b[863:832],c[863:832]);
and_gate_32 demux_27(a[895:864],b[895:864],c[895:864]);
and_gate_32 demux_28(a[927:896],b[927:896],c[927:896]);
and_gate_32 demux_29(a[959:928],b[959:928],c[959:928]);
and_gate_32 demux_30(a[991:960],b[991:960],c[991:960]);
and_gate_32 demux_31(a[1023:992],b[1023:992],c[1023:992]);
endmodule