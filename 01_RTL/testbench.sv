`timescale 1ns/1ps

`include "/usr/cadtool/ee5216/CBDK_TSMC90GUTM_Arm_f1.0/CIC/Verilog/tsmc090.v"

`define CYCLE 5.0
`define END_CYCLE 100000000
`define RTL

module testbench();

        reg clk_ref, clk_out;
        reg [23:0] control;

        top vc (
            .clk_ref(clk_ref),
            .control(control),
            .clk_out(clk_out)
        );

        initial begin
                $fsdbDumpfile("./test.fsdb");
                $fsdbDumpvars("+all");
                // $sdf_annotate("../02_DC/netlist/TOP_syn.sdf", top);
        end

        always  #(`CYCLE/2.00) clk_ref = ~clk_ref;

        integer i;

        initial begin
                clk_ref = 0;
                control =24'h0;
                for (i = 0; i <= 24; i = i + 1) begin
                        if (i == 0) begin
                                control[i] = 1'b0;
                        end else begin
                                control[i] = 1'b1;
                        end
                        #(`CYCLE*2);
                end
                $finish;
        end

        initial begin
                repeat (`END_CYCLE) @ (posedge clk_ref);
                $display("\n========================================================");
                $display("You have exceeded the cycle count limit.");
                $display("Simulation abort");
                $display("========================================================");
                $display("Simulation finish");
                $finish;
        end

endmodule
