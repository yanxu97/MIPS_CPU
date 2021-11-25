module test_IF ();
    
reg clk;
reg control;
reg [15:0]branch_offset;
wire [31:0]instruction;

IF IF0(
    .clk                        (clk),
    .control                    (control),
    .instruction                (instruction)
);

defparam IF0.mem_file = "./data/bills_branch.dat";

initial begin
    $monitor ("clk = %g control = %b branch_offset = %b instruction = %b", clk, control, branch_offset, instruction);
    clk = 0;
    control = 0;
    branch_offset = 16'b0000100;

    #10 control = 1;
    #10 $finish;

end

always 
    #1 clk = ~clk;

endmodule