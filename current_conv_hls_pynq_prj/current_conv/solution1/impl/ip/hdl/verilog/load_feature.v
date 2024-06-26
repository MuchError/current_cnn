// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module load_feature (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_feature_in_AWVALID,
        m_axi_feature_in_AWREADY,
        m_axi_feature_in_AWADDR,
        m_axi_feature_in_AWID,
        m_axi_feature_in_AWLEN,
        m_axi_feature_in_AWSIZE,
        m_axi_feature_in_AWBURST,
        m_axi_feature_in_AWLOCK,
        m_axi_feature_in_AWCACHE,
        m_axi_feature_in_AWPROT,
        m_axi_feature_in_AWQOS,
        m_axi_feature_in_AWREGION,
        m_axi_feature_in_AWUSER,
        m_axi_feature_in_WVALID,
        m_axi_feature_in_WREADY,
        m_axi_feature_in_WDATA,
        m_axi_feature_in_WSTRB,
        m_axi_feature_in_WLAST,
        m_axi_feature_in_WID,
        m_axi_feature_in_WUSER,
        m_axi_feature_in_ARVALID,
        m_axi_feature_in_ARREADY,
        m_axi_feature_in_ARADDR,
        m_axi_feature_in_ARID,
        m_axi_feature_in_ARLEN,
        m_axi_feature_in_ARSIZE,
        m_axi_feature_in_ARBURST,
        m_axi_feature_in_ARLOCK,
        m_axi_feature_in_ARCACHE,
        m_axi_feature_in_ARPROT,
        m_axi_feature_in_ARQOS,
        m_axi_feature_in_ARREGION,
        m_axi_feature_in_ARUSER,
        m_axi_feature_in_RVALID,
        m_axi_feature_in_RREADY,
        m_axi_feature_in_RDATA,
        m_axi_feature_in_RLAST,
        m_axi_feature_in_RID,
        m_axi_feature_in_RUSER,
        m_axi_feature_in_RRESP,
        m_axi_feature_in_BVALID,
        m_axi_feature_in_BREADY,
        m_axi_feature_in_BRESP,
        m_axi_feature_in_BID,
        m_axi_feature_in_BUSER,
        feature_in_offset,
        feature_buffer_address0,
        feature_buffer_ce0,
        feature_buffer_we0,
        feature_buffer_d0,
        chin,
        kx,
        ky,
        win,
        hin,
        stride,
        padding,
        x,
        y
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state12 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_feature_in_AWVALID;
input   m_axi_feature_in_AWREADY;
output  [31:0] m_axi_feature_in_AWADDR;
output  [0:0] m_axi_feature_in_AWID;
output  [31:0] m_axi_feature_in_AWLEN;
output  [2:0] m_axi_feature_in_AWSIZE;
output  [1:0] m_axi_feature_in_AWBURST;
output  [1:0] m_axi_feature_in_AWLOCK;
output  [3:0] m_axi_feature_in_AWCACHE;
output  [2:0] m_axi_feature_in_AWPROT;
output  [3:0] m_axi_feature_in_AWQOS;
output  [3:0] m_axi_feature_in_AWREGION;
output  [0:0] m_axi_feature_in_AWUSER;
output   m_axi_feature_in_WVALID;
input   m_axi_feature_in_WREADY;
output  [31:0] m_axi_feature_in_WDATA;
output  [3:0] m_axi_feature_in_WSTRB;
output   m_axi_feature_in_WLAST;
output  [0:0] m_axi_feature_in_WID;
output  [0:0] m_axi_feature_in_WUSER;
output   m_axi_feature_in_ARVALID;
input   m_axi_feature_in_ARREADY;
output  [31:0] m_axi_feature_in_ARADDR;
output  [0:0] m_axi_feature_in_ARID;
output  [31:0] m_axi_feature_in_ARLEN;
output  [2:0] m_axi_feature_in_ARSIZE;
output  [1:0] m_axi_feature_in_ARBURST;
output  [1:0] m_axi_feature_in_ARLOCK;
output  [3:0] m_axi_feature_in_ARCACHE;
output  [2:0] m_axi_feature_in_ARPROT;
output  [3:0] m_axi_feature_in_ARQOS;
output  [3:0] m_axi_feature_in_ARREGION;
output  [0:0] m_axi_feature_in_ARUSER;
input   m_axi_feature_in_RVALID;
output   m_axi_feature_in_RREADY;
input  [31:0] m_axi_feature_in_RDATA;
input   m_axi_feature_in_RLAST;
input  [0:0] m_axi_feature_in_RID;
input  [0:0] m_axi_feature_in_RUSER;
input  [1:0] m_axi_feature_in_RRESP;
input   m_axi_feature_in_BVALID;
output   m_axi_feature_in_BREADY;
input  [1:0] m_axi_feature_in_BRESP;
input  [0:0] m_axi_feature_in_BID;
input  [0:0] m_axi_feature_in_BUSER;
input  [29:0] feature_in_offset;
output  [14:0] feature_buffer_address0;
output   feature_buffer_ce0;
output   feature_buffer_we0;
output  [31:0] feature_buffer_d0;
input  [31:0] chin;
input  [31:0] kx;
input  [31:0] ky;
input  [31:0] win;
input  [31:0] hin;
input  [31:0] stride;
input  [31:0] padding;
input  [30:0] x;
input  [30:0] y;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_feature_in_ARVALID;
reg m_axi_feature_in_RREADY;
reg[14:0] feature_buffer_address0;
reg feature_buffer_ce0;
reg feature_buffer_we0;
reg[31:0] feature_buffer_d0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    feature_in_blk_n_AR;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] or_cond4_reg_903;
reg    feature_in_blk_n_R;
reg    ap_enable_reg_pp0_iter8;
reg   [0:0] or_cond4_reg_903_pp0_iter7_reg;
reg   [95:0] indvar_flatten2_reg_178;
reg   [31:0] index_reg_189;
reg   [30:0] c_reg_200;
reg   [63:0] indvar_flatten_reg_211;
reg   [31:0] index_1_reg_222;
reg   [30:0] i_reg_233;
reg   [31:0] index_2_reg_244;
reg   [30:0] j_reg_255;
wire   [0:0] tmp_s_fu_274_p2;
reg   [0:0] tmp_s_reg_821;
wire   [31:0] smax_cast_fu_292_p1;
reg   [31:0] smax_cast_reg_826;
wire   [31:0] tmp_14_fu_318_p2;
reg   [31:0] tmp_14_reg_831;
wire   [31:0] tmp_16_fu_330_p2;
reg   [31:0] tmp_16_reg_836;
wire   [31:0] tmp_18_fu_342_p2;
reg   [31:0] tmp_18_reg_841;
wire   [63:0] bound_fu_356_p2;
reg   [63:0] bound_reg_848;
wire   [95:0] bound4_fu_370_p2;
reg   [95:0] bound4_reg_853;
wire   [0:0] tmp2_mid_fu_396_p2;
reg   [0:0] tmp2_mid_reg_858;
wire   [32:0] sext_cast_fu_402_p1;
reg   [32:0] sext_cast_reg_863;
wire   [0:0] exitcond_flatten2_fu_464_p2;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_sig_ioackin_m_axi_feature_in_ARREADY;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_state9_pp0_stage0_iter7;
reg    ap_block_state10_pp0_stage0_iter8;
wire    ap_block_state11_pp0_stage0_iter9;
reg    ap_block_pp0_stage0_11001;
wire   [95:0] indvar_flatten_next2_fu_469_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [31:0] index_mid2_fu_567_p3;
wire   [30:0] c_mid2_fu_575_p3;
wire  signed [31:0] index_2_mid2_fu_598_p3;
reg  signed [31:0] index_2_mid2_reg_887;
reg  signed [31:0] index_2_mid2_reg_887_pp0_iter1_reg;
reg  signed [31:0] index_2_mid2_reg_887_pp0_iter2_reg;
reg  signed [31:0] index_2_mid2_reg_887_pp0_iter3_reg;
reg  signed [31:0] index_2_mid2_reg_887_pp0_iter4_reg;
reg  signed [31:0] index_2_mid2_reg_887_pp0_iter5_reg;
reg  signed [31:0] index_2_mid2_reg_887_pp0_iter6_reg;
reg  signed [31:0] index_2_mid2_reg_887_pp0_iter7_reg;
reg  signed [31:0] index_2_mid2_reg_887_pp0_iter8_reg;
wire   [31:0] index_1_mid2_fu_675_p3;
wire   [30:0] i_mid2_fu_683_p3;
wire   [0:0] or_cond4_fu_721_p2;
reg   [0:0] or_cond4_reg_903_pp0_iter1_reg;
reg   [0:0] or_cond4_reg_903_pp0_iter2_reg;
reg   [0:0] or_cond4_reg_903_pp0_iter3_reg;
reg   [0:0] or_cond4_reg_903_pp0_iter4_reg;
reg   [0:0] or_cond4_reg_903_pp0_iter5_reg;
reg   [0:0] or_cond4_reg_903_pp0_iter6_reg;
reg   [0:0] or_cond4_reg_903_pp0_iter8_reg;
reg   [31:0] feature_in_addr_reg_907;
wire   [31:0] tmp_30_fu_752_p2;
wire   [30:0] j_2_fu_772_p3;
wire   [63:0] indvar_flatten_next_fu_786_p3;
reg   [31:0] feature_in_addr_read_reg_928;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter9;
wire  signed [63:0] tmp_29_fu_794_p1;
wire  signed [63:0] tmp_28_fu_798_p1;
wire  signed [63:0] sum_cast_fu_742_p1;
reg    ap_reg_ioackin_m_axi_feature_in_ARREADY;
reg    ap_block_pp0_stage0_01001;
wire   [30:0] tmp_20_fu_280_p1;
wire   [30:0] smax_fu_284_p3;
wire   [0:0] tmp_13_fu_296_p2;
wire   [30:0] tmp_24_fu_302_p1;
wire   [30:0] smax1_fu_306_p3;
wire   [30:0] tmp_14_fu_318_p0;
wire   [30:0] tmp_14_fu_318_p1;
wire   [30:0] tmp_15_fu_324_p0;
wire  signed [31:0] tmp_15_fu_324_p1;
wire   [31:0] tmp_15_fu_324_p2;
wire   [30:0] tmp_17_fu_336_p0;
wire  signed [31:0] tmp_17_fu_336_p1;
wire   [31:0] tmp_17_fu_336_p2;
wire   [31:0] bound_fu_356_p0;
wire   [31:0] bound_fu_356_p1;
wire   [31:0] bound4_fu_370_p0;
wire   [63:0] bound4_fu_370_p1;
wire   [0:0] tmp_27_fu_376_p3;
wire  signed [31:0] tmp_26_mid_fu_390_p1;
wire   [0:0] tmp_26_mid_fu_390_p2;
wire   [0:0] rev_fu_384_p2;
wire  signed [31:0] tmp_19_fu_410_p0;
wire   [30:0] tmp_19_fu_410_p1;
wire   [31:0] i_cast_mid1_fu_415_p1;
wire   [31:0] yi_fu_419_p2;
wire   [0:0] tmp_31_fu_424_p3;
wire  signed [31:0] tmp_21_fu_438_p1;
wire   [31:0] tmp_19_fu_410_p2;
wire   [0:0] tmp_21_fu_438_p2;
wire   [0:0] rev1_fu_432_p2;
wire   [31:0] j_cast_fu_455_p1;
wire   [30:0] c_s_fu_475_p2;
wire   [0:0] exitcond_flatten_fu_490_p2;
wire   [31:0] index_s_fu_485_p2;
wire   [30:0] tmp_22_mid1_fu_519_p0;
wire  signed [31:0] tmp_22_mid1_fu_519_p1;
wire   [31:0] tmp_22_mid1_fu_519_p2;
wire   [31:0] tmp_mid_fu_532_p2;
wire   [31:0] tmp_fu_443_p2;
wire   [0:0] tmp2_fu_449_p2;
wire   [0:0] tmp_22_fu_459_p2;
wire   [30:0] i_mid_fu_503_p3;
wire   [31:0] index_1_mid_fu_495_p3;
wire   [30:0] i_2_fu_583_p2;
wire   [0:0] tmp_27_mid_fu_560_p3;
wire   [31:0] index_2_mid_fu_511_p3;
wire   [31:0] tmp_24_dup_fu_589_p2;
wire   [31:0] i_cast_fu_594_p1;
wire   [31:0] yi_mid1_fu_606_p2;
wire   [0:0] tmp_32_fu_611_p3;
wire  signed [31:0] tmp_26_mid1_fu_625_p1;
wire   [31:0] tmp_22_mid2_fu_524_p3;
wire   [31:0] tmp5_mid227_v_fu_537_p3;
wire   [31:0] tmp_mid1_fu_630_p2;
wire  signed [31:0] tmp5_mid2_v_fu_636_p3;
wire  signed [31:0] tmp5_mid2_fu_644_p1;
wire   [0:0] tmp_26_mid1_fu_625_p2;
wire   [0:0] rev2_fu_619_p2;
wire   [0:0] tmp2_mid3_fu_545_p3;
wire   [0:0] tmp2_mid1_fu_649_p2;
wire   [30:0] j_cast_mid_fu_552_p3;
wire   [30:0] j_cast_mid2_fu_663_p3;
wire   [31:0] j_cast_mid2_cast_fu_671_p1;
wire   [31:0] xi_fu_691_p2;
wire   [0:0] tmp_33_fu_696_p3;
wire  signed [31:0] tmp_25_fu_710_p1;
wire   [0:0] tmp_25_fu_710_p2;
wire   [0:0] rev3_fu_704_p2;
wire   [0:0] tmp2_mid2_fu_655_p3;
wire   [0:0] tmp1_fu_715_p2;
wire   [31:0] tmp5_mid2_fu_644_p2;
wire   [31:0] tmp_26_fu_727_p2;
wire  signed [32:0] tmp_27_cast_fu_733_p1;
wire   [32:0] sum_fu_737_p2;
wire   [30:0] j_op_fu_758_p2;
wire   [30:0] j_mid211_op_fu_764_p3;
wire   [63:0] indvar_flatten_op_fu_780_p2;
wire    ap_CS_fsm_state12;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [95:0] bound4_fu_370_p00;
wire   [95:0] bound4_fu_370_p10;
wire   [63:0] bound_fu_356_p00;
wire   [63:0] bound_fu_356_p10;
wire   [31:0] tmp_14_fu_318_p00;
wire   [31:0] tmp_14_fu_318_p10;
wire   [31:0] tmp_15_fu_324_p00;
wire   [31:0] tmp_17_fu_336_p00;
wire   [31:0] tmp_19_fu_410_p10;
wire   [31:0] tmp_22_mid1_fu_519_p00;
reg    ap_condition_733;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_reg_ioackin_m_axi_feature_in_ARREADY = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter9 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_feature_in_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_733)) begin
            if ((1'b0 == ap_block_pp0_stage0_11001)) begin
                ap_reg_ioackin_m_axi_feature_in_ARREADY <= 1'b0;
            end else if (((1'b0 == ap_block_pp0_stage0_01001) & (m_axi_feature_in_ARREADY == 1'b1))) begin
                ap_reg_ioackin_m_axi_feature_in_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c_reg_200 <= c_mid2_fu_575_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        c_reg_200 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_233 <= i_mid2_fu_683_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_233 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        index_1_reg_222 <= index_1_mid2_fu_675_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        index_1_reg_222 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        index_2_reg_244 <= tmp_30_fu_752_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        index_2_reg_244 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        index_reg_189 <= index_mid2_fu_567_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        index_reg_189 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten2_reg_178 <= indvar_flatten_next2_fu_469_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten2_reg_178 <= 96'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_211 <= indvar_flatten_next_fu_786_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_211 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_reg_255 <= j_2_fu_772_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_reg_255 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bound4_reg_853 <= bound4_fu_370_p2;
        bound_reg_848 <= bound_fu_356_p2;
        sext_cast_reg_863[29 : 0] <= sext_cast_fu_402_p1[29 : 0];
        smax_cast_reg_826[30 : 0] <= smax_cast_fu_292_p1[30 : 0];
        tmp2_mid_reg_858 <= tmp2_mid_fu_396_p2;
        tmp_14_reg_831 <= tmp_14_fu_318_p2;
        tmp_16_reg_836 <= tmp_16_fu_330_p2;
        tmp_18_reg_841 <= tmp_18_fu_342_p2;
        tmp_s_reg_821 <= tmp_s_fu_274_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (or_cond4_reg_903_pp0_iter7_reg == 1'd1))) begin
        feature_in_addr_read_reg_928 <= m_axi_feature_in_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (or_cond4_fu_721_p2 == 1'd1))) begin
        feature_in_addr_reg_907 <= sum_cast_fu_742_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_464_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        index_2_mid2_reg_887 <= index_2_mid2_fu_598_p3;
        or_cond4_reg_903 <= or_cond4_fu_721_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        index_2_mid2_reg_887_pp0_iter1_reg <= index_2_mid2_reg_887;
        or_cond4_reg_903_pp0_iter1_reg <= or_cond4_reg_903;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        index_2_mid2_reg_887_pp0_iter2_reg <= index_2_mid2_reg_887_pp0_iter1_reg;
        index_2_mid2_reg_887_pp0_iter3_reg <= index_2_mid2_reg_887_pp0_iter2_reg;
        index_2_mid2_reg_887_pp0_iter4_reg <= index_2_mid2_reg_887_pp0_iter3_reg;
        index_2_mid2_reg_887_pp0_iter5_reg <= index_2_mid2_reg_887_pp0_iter4_reg;
        index_2_mid2_reg_887_pp0_iter6_reg <= index_2_mid2_reg_887_pp0_iter5_reg;
        index_2_mid2_reg_887_pp0_iter7_reg <= index_2_mid2_reg_887_pp0_iter6_reg;
        index_2_mid2_reg_887_pp0_iter8_reg <= index_2_mid2_reg_887_pp0_iter7_reg;
        or_cond4_reg_903_pp0_iter2_reg <= or_cond4_reg_903_pp0_iter1_reg;
        or_cond4_reg_903_pp0_iter3_reg <= or_cond4_reg_903_pp0_iter2_reg;
        or_cond4_reg_903_pp0_iter4_reg <= or_cond4_reg_903_pp0_iter3_reg;
        or_cond4_reg_903_pp0_iter5_reg <= or_cond4_reg_903_pp0_iter4_reg;
        or_cond4_reg_903_pp0_iter6_reg <= or_cond4_reg_903_pp0_iter5_reg;
        or_cond4_reg_903_pp0_iter7_reg <= or_cond4_reg_903_pp0_iter6_reg;
        or_cond4_reg_903_pp0_iter8_reg <= or_cond4_reg_903_pp0_iter7_reg;
    end
end

always @ (*) begin
    if ((exitcond_flatten2_fu_464_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_feature_in_ARREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_feature_in_ARREADY = m_axi_feature_in_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_feature_in_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        if ((or_cond4_reg_903_pp0_iter8_reg == 1'd1)) begin
            feature_buffer_address0 = tmp_28_fu_798_p1;
        end else if ((or_cond4_reg_903_pp0_iter8_reg == 1'd0)) begin
            feature_buffer_address0 = tmp_29_fu_794_p1;
        end else begin
            feature_buffer_address0 = 'bx;
        end
    end else begin
        feature_buffer_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (or_cond4_reg_903_pp0_iter8_reg == 1'd1)) | ((or_cond4_reg_903_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        feature_buffer_ce0 = 1'b1;
    end else begin
        feature_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        if ((or_cond4_reg_903_pp0_iter8_reg == 1'd1)) begin
            feature_buffer_d0 = feature_in_addr_read_reg_928;
        end else if ((or_cond4_reg_903_pp0_iter8_reg == 1'd0)) begin
            feature_buffer_d0 = 32'd0;
        end else begin
            feature_buffer_d0 = 'bx;
        end
    end else begin
        feature_buffer_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (or_cond4_reg_903_pp0_iter8_reg == 1'd1)) | ((or_cond4_reg_903_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        feature_buffer_we0 = 1'b1;
    end else begin
        feature_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_cond4_reg_903 == 1'd1) & (1'b0 == ap_block_pp0_stage0))) begin
        feature_in_blk_n_AR = m_axi_feature_in_ARREADY;
    end else begin
        feature_in_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (or_cond4_reg_903_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0))) begin
        feature_in_blk_n_R = m_axi_feature_in_RVALID;
    end else begin
        feature_in_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_feature_in_ARREADY == 1'b0) & (1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_cond4_reg_903 == 1'd1))) begin
        m_axi_feature_in_ARVALID = 1'b1;
    end else begin
        m_axi_feature_in_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (or_cond4_reg_903_pp0_iter7_reg == 1'd1))) begin
        m_axi_feature_in_RREADY = 1'b1;
    end else begin
        m_axi_feature_in_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_flatten2_fu_464_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_enable_reg_pp0_iter8 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond_flatten2_fu_464_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((m_axi_feature_in_RVALID == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (or_cond4_reg_903_pp0_iter7_reg == 1'd1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((m_axi_feature_in_RVALID == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (or_cond4_reg_903_pp0_iter7_reg == 1'd1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((m_axi_feature_in_RVALID == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (or_cond4_reg_903_pp0_iter7_reg == 1'd1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter8 = ((m_axi_feature_in_RVALID == 1'b0) & (or_cond4_reg_903_pp0_iter7_reg == 1'd1));
end

assign ap_block_state11_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((ap_sig_ioackin_m_axi_feature_in_ARREADY == 1'b0) & (or_cond4_reg_903 == 1'd1));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_733 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_cond4_reg_903 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound4_fu_370_p0 = bound4_fu_370_p00;

assign bound4_fu_370_p00 = chin;

assign bound4_fu_370_p1 = bound4_fu_370_p10;

assign bound4_fu_370_p10 = bound_fu_356_p2;

assign bound4_fu_370_p2 = (bound4_fu_370_p0 * bound4_fu_370_p1);

assign bound_fu_356_p0 = bound_fu_356_p00;

assign bound_fu_356_p00 = ky;

assign bound_fu_356_p1 = bound_fu_356_p10;

assign bound_fu_356_p10 = kx;

assign bound_fu_356_p2 = (bound_fu_356_p0 * bound_fu_356_p1);

assign c_mid2_fu_575_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? c_s_fu_475_p2 : c_reg_200);

assign c_s_fu_475_p2 = (c_reg_200 + 31'd1);

assign exitcond_flatten2_fu_464_p2 = ((indvar_flatten2_reg_178 == bound4_reg_853) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_490_p2 = ((indvar_flatten_reg_211 == bound_reg_848) ? 1'b1 : 1'b0);

assign i_2_fu_583_p2 = (i_mid_fu_503_p3 + 31'd1);

assign i_cast_fu_594_p1 = i_2_fu_583_p2;

assign i_cast_mid1_fu_415_p1 = i_reg_233;

assign i_mid2_fu_683_p3 = ((tmp_27_mid_fu_560_p3[0:0] === 1'b1) ? i_mid_fu_503_p3 : i_2_fu_583_p2);

assign i_mid_fu_503_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? 31'd0 : i_reg_233);

assign index_1_mid2_fu_675_p3 = ((tmp_27_mid_fu_560_p3[0:0] === 1'b1) ? index_1_mid_fu_495_p3 : tmp_24_dup_fu_589_p2);

assign index_1_mid_fu_495_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? index_s_fu_485_p2 : index_1_reg_222);

assign index_2_mid2_fu_598_p3 = ((tmp_27_mid_fu_560_p3[0:0] === 1'b1) ? index_2_mid_fu_511_p3 : tmp_24_dup_fu_589_p2);

assign index_2_mid_fu_511_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? index_s_fu_485_p2 : index_2_reg_244);

assign index_mid2_fu_567_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? index_s_fu_485_p2 : index_reg_189);

assign index_s_fu_485_p2 = (tmp_14_reg_831 + index_reg_189);

assign indvar_flatten_next2_fu_469_p2 = (indvar_flatten2_reg_178 + 96'd1);

assign indvar_flatten_next_fu_786_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? 64'd1 : indvar_flatten_op_fu_780_p2);

assign indvar_flatten_op_fu_780_p2 = (indvar_flatten_reg_211 + 64'd1);

assign j_2_fu_772_p3 = ((tmp_27_mid_fu_560_p3[0:0] === 1'b1) ? j_mid211_op_fu_764_p3 : 31'd1);

assign j_cast_fu_455_p1 = j_reg_255;

assign j_cast_mid2_cast_fu_671_p1 = j_cast_mid2_fu_663_p3;

assign j_cast_mid2_fu_663_p3 = ((tmp_27_mid_fu_560_p3[0:0] === 1'b1) ? j_cast_mid_fu_552_p3 : 31'd0);

assign j_cast_mid_fu_552_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? 31'd0 : j_reg_255);

assign j_mid211_op_fu_764_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? 31'd1 : j_op_fu_758_p2);

assign j_op_fu_758_p2 = (j_reg_255 + 31'd1);

assign m_axi_feature_in_ARADDR = feature_in_addr_reg_907;

assign m_axi_feature_in_ARBURST = 2'd0;

assign m_axi_feature_in_ARCACHE = 4'd0;

assign m_axi_feature_in_ARID = 1'd0;

assign m_axi_feature_in_ARLEN = 32'd1;

assign m_axi_feature_in_ARLOCK = 2'd0;

assign m_axi_feature_in_ARPROT = 3'd0;

assign m_axi_feature_in_ARQOS = 4'd0;

assign m_axi_feature_in_ARREGION = 4'd0;

assign m_axi_feature_in_ARSIZE = 3'd0;

assign m_axi_feature_in_ARUSER = 1'd0;

assign m_axi_feature_in_AWADDR = 32'd0;

assign m_axi_feature_in_AWBURST = 2'd0;

assign m_axi_feature_in_AWCACHE = 4'd0;

assign m_axi_feature_in_AWID = 1'd0;

assign m_axi_feature_in_AWLEN = 32'd0;

assign m_axi_feature_in_AWLOCK = 2'd0;

assign m_axi_feature_in_AWPROT = 3'd0;

assign m_axi_feature_in_AWQOS = 4'd0;

assign m_axi_feature_in_AWREGION = 4'd0;

assign m_axi_feature_in_AWSIZE = 3'd0;

assign m_axi_feature_in_AWUSER = 1'd0;

assign m_axi_feature_in_AWVALID = 1'b0;

assign m_axi_feature_in_BREADY = 1'b0;

assign m_axi_feature_in_WDATA = 32'd0;

assign m_axi_feature_in_WID = 1'd0;

assign m_axi_feature_in_WLAST = 1'b0;

assign m_axi_feature_in_WSTRB = 4'd0;

assign m_axi_feature_in_WUSER = 1'd0;

assign m_axi_feature_in_WVALID = 1'b0;

assign or_cond4_fu_721_p2 = (tmp2_mid2_fu_655_p3 & tmp1_fu_715_p2);

assign rev1_fu_432_p2 = (tmp_31_fu_424_p3 ^ 1'd1);

assign rev2_fu_619_p2 = (tmp_32_fu_611_p3 ^ 1'd1);

assign rev3_fu_704_p2 = (tmp_33_fu_696_p3 ^ 1'd1);

assign rev_fu_384_p2 = (tmp_27_fu_376_p3 ^ 1'd1);

assign sext_cast_fu_402_p1 = feature_in_offset;

assign smax1_fu_306_p3 = ((tmp_13_fu_296_p2[0:0] === 1'b1) ? tmp_24_fu_302_p1 : 31'd0);

assign smax_cast_fu_292_p1 = smax_fu_284_p3;

assign smax_fu_284_p3 = ((tmp_s_fu_274_p2[0:0] === 1'b1) ? tmp_20_fu_280_p1 : 31'd0);

assign sum_cast_fu_742_p1 = $signed(sum_fu_737_p2);

assign sum_fu_737_p2 = ($signed(sext_cast_reg_863) + $signed(tmp_27_cast_fu_733_p1));

assign tmp1_fu_715_p2 = (tmp_25_fu_710_p2 & rev3_fu_704_p2);

assign tmp2_fu_449_p2 = (tmp_21_fu_438_p2 & rev1_fu_432_p2);

assign tmp2_mid1_fu_649_p2 = (tmp_26_mid1_fu_625_p2 & rev2_fu_619_p2);

assign tmp2_mid2_fu_655_p3 = ((tmp_27_mid_fu_560_p3[0:0] === 1'b1) ? tmp2_mid3_fu_545_p3 : tmp2_mid1_fu_649_p2);

assign tmp2_mid3_fu_545_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? tmp2_mid_reg_858 : tmp2_fu_449_p2);

assign tmp2_mid_fu_396_p2 = (tmp_26_mid_fu_390_p2 & rev_fu_384_p2);

assign tmp5_mid227_v_fu_537_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? tmp_mid_fu_532_p2 : tmp_fu_443_p2);

assign tmp5_mid2_fu_644_p1 = win;

assign tmp5_mid2_fu_644_p2 = ($signed(tmp5_mid2_v_fu_636_p3) * $signed(tmp5_mid2_fu_644_p1));

assign tmp5_mid2_v_fu_636_p3 = ((tmp_27_mid_fu_560_p3[0:0] === 1'b1) ? tmp5_mid227_v_fu_537_p3 : tmp_mid1_fu_630_p2);

assign tmp_13_fu_296_p2 = (($signed(ky) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign tmp_14_fu_318_p0 = tmp_14_fu_318_p00;

assign tmp_14_fu_318_p00 = smax_fu_284_p3;

assign tmp_14_fu_318_p1 = tmp_14_fu_318_p10;

assign tmp_14_fu_318_p10 = smax1_fu_306_p3;

assign tmp_14_fu_318_p2 = (tmp_14_fu_318_p0 * tmp_14_fu_318_p1);

assign tmp_15_fu_324_p0 = tmp_15_fu_324_p00;

assign tmp_15_fu_324_p00 = x;

assign tmp_15_fu_324_p1 = stride;

assign tmp_15_fu_324_p2 = ($signed({{1'b0}, {tmp_15_fu_324_p0}}) * $signed(tmp_15_fu_324_p1));

assign tmp_16_fu_330_p2 = (tmp_15_fu_324_p2 - padding);

assign tmp_17_fu_336_p0 = tmp_17_fu_336_p00;

assign tmp_17_fu_336_p00 = y;

assign tmp_17_fu_336_p1 = stride;

assign tmp_17_fu_336_p2 = ($signed({{1'b0}, {tmp_17_fu_336_p0}}) * $signed(tmp_17_fu_336_p1));

assign tmp_18_fu_342_p2 = (tmp_17_fu_336_p2 - padding);

assign tmp_19_fu_410_p0 = hin;

assign tmp_19_fu_410_p1 = tmp_19_fu_410_p10;

assign tmp_19_fu_410_p10 = c_reg_200;

assign tmp_19_fu_410_p2 = ($signed(tmp_19_fu_410_p0) * $signed({{1'b0}, {tmp_19_fu_410_p1}}));

assign tmp_20_fu_280_p1 = kx[30:0];

assign tmp_21_fu_438_p1 = hin;

assign tmp_21_fu_438_p2 = (($signed(yi_fu_419_p2) < $signed(tmp_21_fu_438_p1)) ? 1'b1 : 1'b0);

assign tmp_22_fu_459_p2 = (($signed(j_cast_fu_455_p1) < $signed(kx)) ? 1'b1 : 1'b0);

assign tmp_22_mid1_fu_519_p0 = tmp_22_mid1_fu_519_p00;

assign tmp_22_mid1_fu_519_p00 = c_s_fu_475_p2;

assign tmp_22_mid1_fu_519_p1 = hin;

assign tmp_22_mid1_fu_519_p2 = ($signed({{1'b0}, {tmp_22_mid1_fu_519_p0}}) * $signed(tmp_22_mid1_fu_519_p1));

assign tmp_22_mid2_fu_524_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? tmp_22_mid1_fu_519_p2 : tmp_19_fu_410_p2);

assign tmp_24_dup_fu_589_p2 = (smax_cast_reg_826 + index_1_mid_fu_495_p3);

assign tmp_24_fu_302_p1 = ky[30:0];

assign tmp_25_fu_710_p1 = win;

assign tmp_25_fu_710_p2 = (($signed(xi_fu_691_p2) < $signed(tmp_25_fu_710_p1)) ? 1'b1 : 1'b0);

assign tmp_26_fu_727_p2 = (tmp5_mid2_fu_644_p2 + xi_fu_691_p2);

assign tmp_26_mid1_fu_625_p1 = hin;

assign tmp_26_mid1_fu_625_p2 = (($signed(yi_mid1_fu_606_p2) < $signed(tmp_26_mid1_fu_625_p1)) ? 1'b1 : 1'b0);

assign tmp_26_mid_fu_390_p1 = hin;

assign tmp_26_mid_fu_390_p2 = (($signed(tmp_18_fu_342_p2) < $signed(tmp_26_mid_fu_390_p1)) ? 1'b1 : 1'b0);

assign tmp_27_cast_fu_733_p1 = $signed(tmp_26_fu_727_p2);

assign tmp_27_fu_376_p3 = tmp_18_fu_342_p2[32'd31];

assign tmp_27_mid_fu_560_p3 = ((exitcond_flatten_fu_490_p2[0:0] === 1'b1) ? tmp_s_reg_821 : tmp_22_fu_459_p2);

assign tmp_28_fu_798_p1 = index_2_mid2_reg_887_pp0_iter8_reg;

assign tmp_29_fu_794_p1 = index_2_mid2_reg_887_pp0_iter8_reg;

assign tmp_30_fu_752_p2 = ($signed(index_2_mid2_fu_598_p3) + $signed(32'd1));

assign tmp_31_fu_424_p3 = yi_fu_419_p2[32'd31];

assign tmp_32_fu_611_p3 = yi_mid1_fu_606_p2[32'd31];

assign tmp_33_fu_696_p3 = xi_fu_691_p2[32'd31];

assign tmp_fu_443_p2 = (tmp_19_fu_410_p2 + yi_fu_419_p2);

assign tmp_mid1_fu_630_p2 = (yi_mid1_fu_606_p2 + tmp_22_mid2_fu_524_p3);

assign tmp_mid_fu_532_p2 = (tmp_18_reg_841 + tmp_22_mid1_fu_519_p2);

assign tmp_s_fu_274_p2 = (($signed(kx) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign xi_fu_691_p2 = (j_cast_mid2_cast_fu_671_p1 + tmp_16_reg_836);

assign yi_fu_419_p2 = (tmp_18_reg_841 + i_cast_mid1_fu_415_p1);

assign yi_mid1_fu_606_p2 = (i_cast_fu_594_p1 + tmp_18_reg_841);

always @ (posedge ap_clk) begin
    smax_cast_reg_826[31] <= 1'b0;
    sext_cast_reg_863[32:30] <= 3'b000;
end

endmodule //load_feature
