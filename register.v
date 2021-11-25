module register(
    clk,
    rst,
    Ra, //address for register a
    Rb,//address for register b
    Rd,//address for register dest
    RegWrite,
    Data,
    out_a,
    out_b
);
    input clk;
    input rst;
    input [4:0]Ra,Rb,Rd;
    input [31:0]Data;
    input RegWrite;
    output [31:0]out_a,out_b;
    wire [31:0] rd_mux_wire;
    wire [31:0] out_wire;
    wire [31:0] reg_wire;

    wire [31:0] arst;
    wire [31:0] aload;
    wire [1023:0] adata;
    wire [1023:0] d;
    wire [31:0] enable;
    wire [31:0] enable_32;
    wire [1023:0] q;
    wire [1023:0] d_1024;

    wire [31:0] q_array_0;
    wire [31:0] q_array_1;
    wire [31:0] q_array_2;
    wire [31:0] q_array_3;
    wire [31:0] q_array_4;
    wire [31:0] q_array_5;
    wire [31:0] q_array_6;
    wire [31:0] q_array_7;
    wire [31:0] q_array_8;
    wire [31:0] q_array_9;
    wire [31:0] q_array_10;
    wire [31:0] q_array_11;
    wire [31:0] q_array_12;
    wire [31:0] q_array_13;
    wire [31:0] q_array_14;
    wire [31:0] q_array_15;
    wire [31:0] q_array_16;
    wire [31:0] q_array_17;
    wire [31:0] q_array_18;
    wire [31:0] q_array_19;
    wire [31:0] q_array_20;
    wire [31:0] q_array_21;
    wire [31:0] q_array_22;
    wire [31:0] q_array_23;
    wire [31:0] q_array_24;
    wire [31:0] q_array_25;
    wire [31:0] q_array_26;
    wire [31:0] q_array_27;
    wire [31:0] q_array_28;
    wire [31:0] q_array_29;
    wire [31:0] q_array_30;
    wire [31:0] q_array_31;
    assign q_array_0[31:0]=q[31:0];
    assign q_array_1[31:0]=q[63:32];
    assign q_array_2[31:0]=q[95:64];
    assign q_array_3[31:0]=q[127:96];
    assign q_array_4[31:0]=q[159:128];
    assign q_array_5[31:0]=q[191:160];
    assign q_array_6[31:0]=q[223:192];
    assign q_array_7[31:0]=q[255:224];
    assign q_array_8[31:0]=q[287:256];
    assign q_array_9[31:0]=q[319:288];
    assign q_array_10[31:0]=q[351:320];
    assign q_array_11[31:0]=q[383:352];
    assign q_array_12[31:0]=q[415:384];
    assign q_array_13[31:0]=q[447:416];
    assign q_array_14[31:0]=q[479:448];
    assign q_array_15[31:0]=q[511:480];
    assign q_array_16[31:0]=q[543:512];
    assign q_array_17[31:0]=q[575:544];
    assign q_array_18[31:0]=q[607:576];
    assign q_array_19[31:0]=q[639:608];
    assign q_array_20[31:0]=q[671:640];
    assign q_array_21[31:0]=q[703:672];
    assign q_array_22[31:0]=q[735:704];
    assign q_array_23[31:0]=q[767:736];
    assign q_array_24[31:0]=q[799:768];
    assign q_array_25[31:0]=q[831:800];
    assign q_array_26[31:0]=q[863:832];
    assign q_array_27[31:0]=q[895:864];
    assign q_array_28[31:0]=q[927:896];
    assign q_array_29[31:0]=q[959:928];
    assign q_array_30[31:0]=q[991:960];
    assign q_array_31[31:0]=q[1023:992];
    integer i;
    // integer j;
    genvar j;
    genvar k;
    // assign arst = 32'b0;
    assign arst = {32{rst}};
    assign aload = 32'b0;
    assign adata = 1024'b0;
    generate
        for(k=0;k<1;k=k+1)begin: reg_gen
            dffr_a reg_array_0(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+0]),.d(d[k*32+0]),.enable(1'b0),.q(q[k*32+0]));
            dffr_a reg_array_1(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+1]),.d(d[k*32+1]),.enable(1'b0),.q(q[k*32+1]));
            dffr_a reg_array_2(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+2]),.d(d[k*32+2]),.enable(1'b0),.q(q[k*32+2]));
            dffr_a reg_array_3(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+3]),.d(d[k*32+3]),.enable(1'b0),.q(q[k*32+3]));
            dffr_a reg_array_4(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+4]),.d(d[k*32+4]),.enable(1'b0),.q(q[k*32+4]));
            dffr_a reg_array_5(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+5]),.d(d[k*32+5]),.enable(1'b0),.q(q[k*32+5]));
            dffr_a reg_array_6(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+6]),.d(d[k*32+6]),.enable(1'b0),.q(q[k*32+6]));
            dffr_a reg_array_7(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+7]),.d(d[k*32+7]),.enable(1'b0),.q(q[k*32+7]));
            dffr_a reg_array_8(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+8]),.d(d[k*32+8]),.enable(1'b0),.q(q[k*32+8]));
            dffr_a reg_array_9(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+9]),.d(d[k*32+9]),.enable(1'b0),.q(q[k*32+9]));
            dffr_a reg_array_10(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+10]),.d(d[k*32+10]),.enable(1'b0),.q(q[k*32+10]));
            dffr_a reg_array_11(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+11]),.d(d[k*32+11]),.enable(1'b0),.q(q[k*32+11]));
            dffr_a reg_array_12(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+12]),.d(d[k*32+12]),.enable(1'b0),.q(q[k*32+12]));
            dffr_a reg_array_13(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+13]),.d(d[k*32+13]),.enable(1'b0),.q(q[k*32+13]));
            dffr_a reg_array_14(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+14]),.d(d[k*32+14]),.enable(1'b0),.q(q[k*32+14]));
            dffr_a reg_array_15(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+15]),.d(d[k*32+15]),.enable(1'b0),.q(q[k*32+15]));
            dffr_a reg_array_16(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+16]),.d(d[k*32+16]),.enable(1'b0),.q(q[k*32+16]));
            dffr_a reg_array_17(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+17]),.d(d[k*32+17]),.enable(1'b0),.q(q[k*32+17]));
            dffr_a reg_array_18(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+18]),.d(d[k*32+18]),.enable(1'b0),.q(q[k*32+18]));
            dffr_a reg_array_19(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+19]),.d(d[k*32+19]),.enable(1'b0),.q(q[k*32+19]));
            dffr_a reg_array_20(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+20]),.d(d[k*32+20]),.enable(1'b0),.q(q[k*32+20]));
            dffr_a reg_array_21(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+21]),.d(d[k*32+21]),.enable(1'b0),.q(q[k*32+21]));
            dffr_a reg_array_22(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+22]),.d(d[k*32+22]),.enable(1'b0),.q(q[k*32+22]));
            dffr_a reg_array_23(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+23]),.d(d[k*32+23]),.enable(1'b0),.q(q[k*32+23]));
            dffr_a reg_array_24(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+24]),.d(d[k*32+24]),.enable(1'b0),.q(q[k*32+24]));
            dffr_a reg_array_25(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+25]),.d(d[k*32+25]),.enable(1'b0),.q(q[k*32+25]));
            dffr_a reg_array_26(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+26]),.d(d[k*32+26]),.enable(1'b0),.q(q[k*32+26]));
            dffr_a reg_array_27(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+27]),.d(d[k*32+27]),.enable(1'b0),.q(q[k*32+27]));
            dffr_a reg_array_28(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+28]),.d(d[k*32+28]),.enable(1'b0),.q(q[k*32+28]));
            dffr_a reg_array_29(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+29]),.d(d[k*32+29]),.enable(1'b0),.q(q[k*32+29]));
            dffr_a reg_array_30(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+30]),.d(d[k*32+30]),.enable(1'b0),.q(q[k*32+30]));
            dffr_a reg_array_31(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+31]),.d(d[k*32+31]),.enable(1'b0),.q(q[k*32+31]));
        end
        for(k=1;k<32;k=k+1)begin: reg_gen1
            dffr_a reg_array_0(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+0]),.d(d[k*32+0]),.enable(enable[k]),.q(q[k*32+0]));
            dffr_a reg_array_1(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+1]),.d(d[k*32+1]),.enable(enable[k]),.q(q[k*32+1]));
            dffr_a reg_array_2(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+2]),.d(d[k*32+2]),.enable(enable[k]),.q(q[k*32+2]));
            dffr_a reg_array_3(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+3]),.d(d[k*32+3]),.enable(enable[k]),.q(q[k*32+3]));
            dffr_a reg_array_4(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+4]),.d(d[k*32+4]),.enable(enable[k]),.q(q[k*32+4]));
            dffr_a reg_array_5(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+5]),.d(d[k*32+5]),.enable(enable[k]),.q(q[k*32+5]));
            dffr_a reg_array_6(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+6]),.d(d[k*32+6]),.enable(enable[k]),.q(q[k*32+6]));
            dffr_a reg_array_7(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+7]),.d(d[k*32+7]),.enable(enable[k]),.q(q[k*32+7]));
            dffr_a reg_array_8(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+8]),.d(d[k*32+8]),.enable(enable[k]),.q(q[k*32+8]));
            dffr_a reg_array_9(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+9]),.d(d[k*32+9]),.enable(enable[k]),.q(q[k*32+9]));
            dffr_a reg_array_10(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+10]),.d(d[k*32+10]),.enable(enable[k]),.q(q[k*32+10]));
            dffr_a reg_array_11(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+11]),.d(d[k*32+11]),.enable(enable[k]),.q(q[k*32+11]));
            dffr_a reg_array_12(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+12]),.d(d[k*32+12]),.enable(enable[k]),.q(q[k*32+12]));
            dffr_a reg_array_13(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+13]),.d(d[k*32+13]),.enable(enable[k]),.q(q[k*32+13]));
            dffr_a reg_array_14(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+14]),.d(d[k*32+14]),.enable(enable[k]),.q(q[k*32+14]));
            dffr_a reg_array_15(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+15]),.d(d[k*32+15]),.enable(enable[k]),.q(q[k*32+15]));
            dffr_a reg_array_16(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+16]),.d(d[k*32+16]),.enable(enable[k]),.q(q[k*32+16]));
            dffr_a reg_array_17(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+17]),.d(d[k*32+17]),.enable(enable[k]),.q(q[k*32+17]));
            dffr_a reg_array_18(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+18]),.d(d[k*32+18]),.enable(enable[k]),.q(q[k*32+18]));
            dffr_a reg_array_19(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+19]),.d(d[k*32+19]),.enable(enable[k]),.q(q[k*32+19]));
            dffr_a reg_array_20(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+20]),.d(d[k*32+20]),.enable(enable[k]),.q(q[k*32+20]));
            dffr_a reg_array_21(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+21]),.d(d[k*32+21]),.enable(enable[k]),.q(q[k*32+21]));
            dffr_a reg_array_22(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+22]),.d(d[k*32+22]),.enable(enable[k]),.q(q[k*32+22]));
            dffr_a reg_array_23(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+23]),.d(d[k*32+23]),.enable(enable[k]),.q(q[k*32+23]));
            dffr_a reg_array_24(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+24]),.d(d[k*32+24]),.enable(enable[k]),.q(q[k*32+24]));
            dffr_a reg_array_25(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+25]),.d(d[k*32+25]),.enable(enable[k]),.q(q[k*32+25]));
            dffr_a reg_array_26(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+26]),.d(d[k*32+26]),.enable(enable[k]),.q(q[k*32+26]));
            dffr_a reg_array_27(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+27]),.d(d[k*32+27]),.enable(enable[k]),.q(q[k*32+27]));
            dffr_a reg_array_28(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+28]),.d(d[k*32+28]),.enable(enable[k]),.q(q[k*32+28]));
            dffr_a reg_array_29(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+29]),.d(d[k*32+29]),.enable(enable[k]),.q(q[k*32+29]));
            dffr_a reg_array_30(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+30]),.d(d[k*32+30]),.enable(enable[k]),.q(q[k*32+30]));
            dffr_a reg_array_31(.clk(clk),.arst(arst[k]),.aload(aload[k]),.adata(adata[k*32+31]),.d(d[k*32+31]),.enable(enable[k]),.q(q[k*32+31]));
        end
    endgenerate
    generate
        for(j=0;j<32;j=j+1)begin: gate_gen
            sel_gate gate_u1(RegWrite,Data[j],rd_mux_wire[j],reg_wire[j]);
            end
    endgenerate
    // sel_gate gate_u1(Data[0],reg_array[Rd][0],RegWrite,reg_wire[]);
    // assign out_a=reg_array[Ra];
    // assign out_b=reg_array[Rb];


    // always @(negedge clk) begin
    // // always @(clk) begin
    //     // if(RegWrite==1'b1) begin
    //     // reg_array[Rd]=Data;
            
    //     // end

    //     // reg_array[Rd]=out_wire;
    //     // for(j=0;j<32;j=j+1)begin
    //     //     reg_array[Rd][j]=RegWrite*Data[j] + (~RegWrite)*reg_array[Rd][j];
    //     // end
    //     $display("clk: " , clk);
    //     // reg_array[Rd]<=reg_wire;
    //     reg_array[Rd]<=q[(Rd*32+31)-:32];
    //     $display("reg_wire: %h" , enable);
    //     // $display("reg_array[",Rd,"]: %h" , reg_array[Rd]);
    //     $display("reg_array[",Rd,"]: %h" , q[(Rd*32+31)-:32]);

    // end

    register_mux mux_ra(
        .in_0(q[(1*32-1)-:32]),
        .in_1(q[(2*32-1)-:32]),
        .in_2(q[(3*32-1)-:32]),
        .in_3(q[(4*32-1)-:32]),
        .in_4(q[(5*32-1)-:32]),
        .in_5(q[(6*32-1)-:32]),
        .in_6(q[(7*32-1)-:32]),
        .in_7(q[(8*32-1)-:32]),
        .in_8(q[(9*32-1)-:32]),
        .in_9(q[(10*32-1)-:32]),
        .in_10(q[(11*32-1)-:32]),
        .in_11(q[(12*32-1)-:32]),
        .in_12(q[(13*32-1)-:32]),
        .in_13(q[(14*32-1)-:32]),
        .in_14(q[(15*32-1)-:32]),
        .in_15(q[(16*32-1)-:32]),
        .in_16(q[(17*32-1)-:32]),
        .in_17(q[(18*32-1)-:32]),
        .in_18(q[(19*32-1)-:32]),
        .in_19(q[(20*32-1)-:32]),
        .in_20(q[(21*32-1)-:32]),
        .in_21(q[(22*32-1)-:32]),
        .in_22(q[(23*32-1)-:32]),
        .in_23(q[(24*32-1)-:32]),
        .in_24(q[(25*32-1)-:32]),
        .in_25(q[(26*32-1)-:32]),
        .in_26(q[(27*32-1)-:32]),
        .in_27(q[(28*32-1)-:32]),
        .in_28(q[(29*32-1)-:32]),
        .in_29(q[(30*32-1)-:32]),
        .in_30(q[(31*32-1)-:32]),
        .in_31(q[(32*32-1)-:32]),
        .out(out_a),
        .sel(Ra)
    );
    register_mux mux_rb(
        .in_0(q[(1*32-1)-:32]),
        .in_1(q[(2*32-1)-:32]),
        .in_2(q[(3*32-1)-:32]),
        .in_3(q[(4*32-1)-:32]),
        .in_4(q[(5*32-1)-:32]),
        .in_5(q[(6*32-1)-:32]),
        .in_6(q[(7*32-1)-:32]),
        .in_7(q[(8*32-1)-:32]),
        .in_8(q[(9*32-1)-:32]),
        .in_9(q[(10*32-1)-:32]),
        .in_10(q[(11*32-1)-:32]),
        .in_11(q[(12*32-1)-:32]),
        .in_12(q[(13*32-1)-:32]),
        .in_13(q[(14*32-1)-:32]),
        .in_14(q[(15*32-1)-:32]),
        .in_15(q[(16*32-1)-:32]),
        .in_16(q[(17*32-1)-:32]),
        .in_17(q[(18*32-1)-:32]),
        .in_18(q[(19*32-1)-:32]),
        .in_19(q[(20*32-1)-:32]),
        .in_20(q[(21*32-1)-:32]),
        .in_21(q[(22*32-1)-:32]),
        .in_22(q[(23*32-1)-:32]),
        .in_23(q[(24*32-1)-:32]),
        .in_24(q[(25*32-1)-:32]),
        .in_25(q[(26*32-1)-:32]),
        .in_26(q[(27*32-1)-:32]),
        .in_27(q[(28*32-1)-:32]),
        .in_28(q[(29*32-1)-:32]),
        .in_29(q[(30*32-1)-:32]),
        .in_30(q[(31*32-1)-:32]),
        .in_31(q[(32*32-1)-:32]),
        .out(out_b),
        .sel(Rb)
    );
demux demux_1(Rd,enable_32);
and_gate_32 and_32(enable_32,{32{RegWrite}},enable);
genvar l;
generate
    for(l=0;l<32;l=l+1)begin: gen_result
        demux demux_1(Rd,{d_1024[992+l],d_1024[960+l],d_1024[928+l],d_1024[896+l],d_1024[864+l],d_1024[832+l],d_1024[800+l],d_1024[768+l],d_1024[736+l],d_1024[704+l],d_1024[672+l],d_1024[640+l],d_1024[608+l],d_1024[576+l],d_1024[544+l],d_1024[512+l],d_1024[480+l],d_1024[448+l],d_1024[416+l],d_1024[384+l],d_1024[352+l],d_1024[320+l],d_1024[288+l],d_1024[256+l],d_1024[224+l],d_1024[192+l],d_1024[160+l],d_1024[128+l],d_1024[96+l],d_1024[64+l],d_1024[32+l],d_1024[0+l]});
    end
endgenerate
// and_gate_n and_1024(d_1024,{32{Data}},q)
and_gate_1024 and_1024(d_1024,{32{Data}},d);

// defparam and_1024.n=1024;
endmodule