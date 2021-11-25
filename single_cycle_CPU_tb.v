`timescale 1ns/1ps

module single_cycle_CPU_tb();

reg tb_clk;
reg tb_reset;

single_cycle_CPU #(.mem_file("./data/bills_branch.dat")) dut (
                     .clk(tb_clk),
                     .reset(tb_reset)
                 );

initial
begin
    tb_clk= 0;
    tb_reset = 1;
    forever
        #10 tb_clk = ~tb_clk;
end

initial
begin
    #20
     tb_reset = 0;

    #5
     tb_reset = 0;

    // #10
    //  tb_reset = 1;

    // #9
    //  tb_reset = 0;


//    #5000
//     $finish;
end


endmodule
