module tb_register ();
    reg [4:0]Ra,Rb,Rd;
    reg [31:0] data;
    reg clk;
    reg RegWrite;
    wire [31:0] out_a;
    wire [31:0] out_b;
    initial begin
        clk=1;
        forever #10 clk = ~clk;
    end
    initial begin
        // RegWrite=0;
        // Ra=0;
        // Rb=0;
        // Rd=1;
        // #10;
        // #20;
        data=32'h1234;
        Ra=0;
        Rb=0;
        Rd=1;
        RegWrite=1;
        #20;
        data=32'h2345;
        Ra=0;
        Rb=0;
        Rd=2;
        RegWrite=1;
        #20;
        data=32'h3456;
        Ra=0;
        Rb=0;
        Rd=3;
        RegWrite=1;
        #20;
        data=32'h4567;
        Ra=0;
        Rb=1;
        Rd=3;
        RegWrite=1;
        #20;
        data=32'h5678;
        Ra=0;
        Rb=2;
        Rd=4;
        RegWrite=0;        
        #20;
        data=32'h6789;
        Ra=1;
        Rb=2;
        Rd=5;
        RegWrite=0;      
        #20;
        data=32'h7890;
        Ra=1;
        Rb=2;
        Rd=6;
        RegWrite=0;     
    
    
    end
register test(
    .clk(clk),
    .Ra(Ra), 
    .Rb(Rb),
    .Rd(Rd),
    .RegWrite(RegWrite),
    .Data(data),
    .out_a(out_a),
    .out_b(out_b)
);
endmodule