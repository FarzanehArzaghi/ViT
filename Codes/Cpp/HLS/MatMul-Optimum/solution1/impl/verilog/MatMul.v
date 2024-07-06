// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="MatMul_MatMul,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.502000,HLS_SYN_LAT=6,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=139,HLS_SYN_LUT=235,HLS_VERSION=2023_2}" *)

module MatMul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_0_address0,
        A_0_ce0,
        A_0_q0,
        A_1_address0,
        A_1_ce0,
        A_1_q0,
        B_0_address0,
        B_0_ce0,
        B_0_q0,
        B_0_address1,
        B_0_ce1,
        B_0_q1,
        B_1_address0,
        B_1_ce0,
        B_1_q0,
        B_1_address1,
        B_1_ce1,
        B_1_q1,
        y_0_address0,
        y_0_ce0,
        y_0_we0,
        y_0_d0,
        y_1_address0,
        y_1_ce0,
        y_1_we0,
        y_1_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [0:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [0:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [0:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [0:0] B_0_address1;
output   B_0_ce1;
input  [31:0] B_0_q1;
output  [0:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [0:0] B_1_address1;
output   B_1_ce1;
input  [31:0] B_1_q1;
output  [0:0] y_0_address0;
output   y_0_ce0;
output   y_0_we0;
output  [31:0] y_0_d0;
output  [0:0] y_1_address0;
output   y_1_ce0;
output   y_1_we0;
output  [31:0] y_1_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg B_0_ce0;
reg B_0_ce1;
reg B_1_ce0;
reg B_1_ce1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] B_0_load_reg_128;
wire    ap_CS_fsm_state2;
reg   [31:0] B_1_load_reg_133;
reg   [31:0] B_0_load_1_reg_138;
reg   [31:0] B_1_load_1_reg_143;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_start;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_done;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_idle;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_ready;
wire   [0:0] grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_address0;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_ce0;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_we0;
wire   [31:0] grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_d0;
wire   [0:0] grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_address0;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_ce0;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_we0;
wire   [31:0] grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_d0;
wire   [0:0] grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_0_address0;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_0_ce0;
wire   [0:0] grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_1_address0;
wire    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_1_ce0;
reg    grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_start_reg;
wire    ap_CS_fsm_state3;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_start_reg = 1'b0;
end

MatMul_MatMul_Pipeline_VITIS_LOOP_10_1 grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_start),
    .ap_done(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_done),
    .ap_idle(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_idle),
    .ap_ready(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_ready),
    .y_1_address0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_address0),
    .y_1_ce0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_ce0),
    .y_1_we0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_we0),
    .y_1_d0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_d0),
    .y_0_address0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_address0),
    .y_0_ce0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_ce0),
    .y_0_we0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_we0),
    .y_0_d0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_d0),
    .A_0_address0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_0_address0),
    .A_0_ce0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_0_ce0),
    .A_0_q0(A_0_q0),
    .A_1_address0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_1_address0),
    .A_1_ce0(grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_1_ce0),
    .A_1_q0(A_1_q0),
    .B_0_load(B_0_load_reg_128),
    .B_0_load_1(B_0_load_1_reg_138),
    .B_1_load(B_1_load_reg_133),
    .B_1_load_1(B_1_load_1_reg_143)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_ready == 1'b1)) begin
            grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        B_0_load_1_reg_138 <= B_0_q0;
        B_0_load_reg_128 <= B_0_q1;
        B_1_load_1_reg_143 <= B_1_q0;
        B_1_load_reg_133 <= B_1_q1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        B_0_ce0 = 1'b1;
    end else begin
        B_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        B_0_ce1 = 1'b1;
    end else begin
        B_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        B_1_ce0 = 1'b1;
    end else begin
        B_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        B_1_ce1 = 1'b1;
    end else begin
        B_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_0_address0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_0_address0;

assign A_0_ce0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_0_ce0;

assign A_1_address0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_1_address0;

assign A_1_ce0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_A_1_ce0;

assign B_0_address0 = 64'd1;

assign B_0_address1 = 64'd0;

assign B_1_address0 = 64'd1;

assign B_1_address1 = 64'd0;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_start = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_ap_start_reg;

assign y_0_address0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_address0;

assign y_0_ce0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_ce0;

assign y_0_d0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_d0;

assign y_0_we0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_0_we0;

assign y_1_address0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_address0;

assign y_1_ce0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_ce0;

assign y_1_d0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_d0;

assign y_1_we0 = grp_MatMul_Pipeline_VITIS_LOOP_10_1_fu_88_y_1_we0;

endmodule //MatMul
