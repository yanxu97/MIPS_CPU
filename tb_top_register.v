module tb_top_register ();
    reg clk;
    reg [4:0]Ra,Rb,Rd;
    reg [31:0] data;
    reg RegWrite;
    reg [15:0] immediate_oprand;
    reg [2:0]alu_ctrl;
    reg [4:0]shamt;
    reg mux_alu_b_sel;
    reg mux_data_in_sel;
    reg [31:0] data_mem_write_back;
    wire [31:0] alu_out;
    wire alu_zero_out;
    wire Rb_out;
    initial begin
        clk=0;
        forever #10 clk = ~clk;
    end
    initial begin
        #10;
        mux_alu_b_sel=0;
        mux_data_in_sel=1;
        Ra=0;
        Rb=0;
        Rd=0;
        data_mem_write_back=32'h00001234;
        shamt=0;
        alu_ctrl=0;
        immediate_oprand=0;
        RegWrite=1;
        #20;
        Ra=0;
        Rb=0;
        Rd=1;
        data_mem_write_back=32'h00002345;
        shamt=0;
        alu_ctrl=0;
        immediate_oprand=0;
        RegWrite=1;
        #20;
        Ra=0;
        Rb=0;
        Rd=2;
        data_mem_write_back=32'h00003456;
        shamt=0;
        alu_ctrl=0;
        immediate_oprand=0;
        RegWrite=1;
        #20;
        Ra=0;
        Rb=0;
        Rd=3;
        data_mem_write_back=32'h00004567;
        shamt=0;
        alu_ctrl=0;
        immediate_oprand=0;
        RegWrite=1;
        #20;
        Ra=0;
        Rb=0;
        Rd=4;
        data_mem_write_back=32'h00005678;
        shamt=0;
        alu_ctrl=0;
        immediate_oprand=0;
        RegWrite=1;     
    
    
    end
top_register test(
    clk,
    Ra,
    Rb,
    Rd,
    immediate_oprand,
    data_mem_write_back, //the output of data mem, as the input of register
    alu_ctrl,
    shamt,
    RegWrite,
    data_memory_addr,
    data_memory_data, //the input of the data memory,as the output of register
    mux_alu_b_sel,
    mux_data_in_sel,
    alu_out,
    alu_zero_out,
    Rb_out
);
endmodule