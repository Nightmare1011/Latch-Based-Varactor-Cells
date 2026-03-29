// Delay Line (Latch-Based Varactor Cell)
module top (
    input wire clk_ref,
    input wire [23:0] control,
    output wire clk_out
);
    // Internal signals
    wire vc_net_0;
    wire vc_net_1;
    // Instantiate the varactor cell
    CLKBUFX20 dri_1 (.Y(vc_net_0), .A(clk_ref));

    TBUFX2 beta_0  (.Y(vc_net_0), .A(vc_net_0), .OE(control[0]));
    TBUFX2 beta_3  (.Y(vc_net_0), .A(vc_net_0), .OE(control[3]));
    TBUFX1 beta_6  (.Y(vc_net_0), .A(vc_net_0), .OE(control[6]));
    TBUFX1 beta_9  (.Y(vc_net_0), .A(vc_net_0), .OE(control[9]));
    TBUFX1 beta_12  (.Y(vc_net_0), .A(vc_net_0), .OE(control[12]));
    TBUFXL beta_15 (.Y(vc_net_0), .A(vc_net_0), .OE(control[15]));
    TBUFXL beta_18 (.Y(vc_net_0), .A(vc_net_0), .OE(control[18]));
    TBUFXL beta_21 (.Y(vc_net_0), .A(vc_net_0), .OE(control[21]));

    CLKBUFX20 dri_2 (.Y(vc_net_1), .A(vc_net_0));

    TBUFX2 beta_1  (.Y(vc_net_1), .A(vc_net_1), .OE(control[1]));
    TBUFX2 beta_4  (.Y(vc_net_1), .A(vc_net_1), .OE(control[4]));
    TBUFX1 beta_7  (.Y(vc_net_1), .A(vc_net_1), .OE(control[7]));
    TBUFX1 beta_10  (.Y(vc_net_1), .A(vc_net_1), .OE(control[10]));
    TBUFX1 beta_13  (.Y(vc_net_1), .A(vc_net_1), .OE(control[13]));
    TBUFXL beta_16 (.Y(vc_net_1), .A(vc_net_1), .OE(control[16]));
    TBUFXL beta_19 (.Y(vc_net_1), .A(vc_net_1), .OE(control[19]));
    TBUFXL beta_22 (.Y(vc_net_1), .A(vc_net_1), .OE(control[22]));

    CLKBUFX20 dri_3 (.Y(clk_out), .A(vc_net_1));

    TBUFX2 beta_2  (.Y(clk_out), .A(clk_out), .OE(control[2]));
    TBUFX2 beta_5  (.Y(clk_out), .A(clk_out), .OE(control[5]));
    TBUFX1 beta_8  (.Y(clk_out), .A(clk_out), .OE(control[8]));
    TBUFX1 beta_11  (.Y(clk_out), .A(clk_out), .OE(control[11]));
    TBUFX1 beta_14  (.Y(clk_out), .A(clk_out), .OE(control[14]));
    TBUFXL beta_17 (.Y(clk_out), .A(clk_out), .OE(control[17]));
    TBUFXL beta_20 (.Y(clk_out), .A(clk_out), .OE(control[20]));
    TBUFXL beta_23 (.Y(clk_out), .A(clk_out), .OE(control[23]));


endmodule