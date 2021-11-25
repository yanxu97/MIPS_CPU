module IF (
           clk,
           control,
           reset,
           instruction
       );

input clk;
input control;
input reset;
output [31:0] instruction;

parameter mem_file = "data";
reg t_cs = 1'b1;
reg t_oe = 1'b1;
reg t_we = 1'b0;
reg [31:0] t_din = 32'hFFFFFFFF;

wire [31:0] pc_out;

PC pc0(
       .clk                        (clk),
       .control                    (control),
       .reset                      (reset),
       .branch_offset              (instruction[15:0]),
       .pc_in                     (pc_out)
   );

syncram sram_ut(.clk(clk),.cs(t_cs) , .oe(t_oe) , .we(t_we) , .addr(pc_out) , .din(t_din) , .dout(instruction));
// sram sram_ut(.cs(t_cs) , .oe(t_oe) , .we(t_we) , .addr(pc_out) , .din(t_din) , .dout(instruction));
defparam sram_ut.mem_file = mem_file;

endmodule
