// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _load_feature_HH_
#define _load_feature_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct load_feature : public sc_module {
    // Port declarations 65
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_feature_in_AWVALID;
    sc_in< sc_logic > m_axi_feature_in_AWREADY;
    sc_out< sc_lv<32> > m_axi_feature_in_AWADDR;
    sc_out< sc_lv<1> > m_axi_feature_in_AWID;
    sc_out< sc_lv<32> > m_axi_feature_in_AWLEN;
    sc_out< sc_lv<3> > m_axi_feature_in_AWSIZE;
    sc_out< sc_lv<2> > m_axi_feature_in_AWBURST;
    sc_out< sc_lv<2> > m_axi_feature_in_AWLOCK;
    sc_out< sc_lv<4> > m_axi_feature_in_AWCACHE;
    sc_out< sc_lv<3> > m_axi_feature_in_AWPROT;
    sc_out< sc_lv<4> > m_axi_feature_in_AWQOS;
    sc_out< sc_lv<4> > m_axi_feature_in_AWREGION;
    sc_out< sc_lv<1> > m_axi_feature_in_AWUSER;
    sc_out< sc_logic > m_axi_feature_in_WVALID;
    sc_in< sc_logic > m_axi_feature_in_WREADY;
    sc_out< sc_lv<32> > m_axi_feature_in_WDATA;
    sc_out< sc_lv<4> > m_axi_feature_in_WSTRB;
    sc_out< sc_logic > m_axi_feature_in_WLAST;
    sc_out< sc_lv<1> > m_axi_feature_in_WID;
    sc_out< sc_lv<1> > m_axi_feature_in_WUSER;
    sc_out< sc_logic > m_axi_feature_in_ARVALID;
    sc_in< sc_logic > m_axi_feature_in_ARREADY;
    sc_out< sc_lv<32> > m_axi_feature_in_ARADDR;
    sc_out< sc_lv<1> > m_axi_feature_in_ARID;
    sc_out< sc_lv<32> > m_axi_feature_in_ARLEN;
    sc_out< sc_lv<3> > m_axi_feature_in_ARSIZE;
    sc_out< sc_lv<2> > m_axi_feature_in_ARBURST;
    sc_out< sc_lv<2> > m_axi_feature_in_ARLOCK;
    sc_out< sc_lv<4> > m_axi_feature_in_ARCACHE;
    sc_out< sc_lv<3> > m_axi_feature_in_ARPROT;
    sc_out< sc_lv<4> > m_axi_feature_in_ARQOS;
    sc_out< sc_lv<4> > m_axi_feature_in_ARREGION;
    sc_out< sc_lv<1> > m_axi_feature_in_ARUSER;
    sc_in< sc_logic > m_axi_feature_in_RVALID;
    sc_out< sc_logic > m_axi_feature_in_RREADY;
    sc_in< sc_lv<32> > m_axi_feature_in_RDATA;
    sc_in< sc_logic > m_axi_feature_in_RLAST;
    sc_in< sc_lv<1> > m_axi_feature_in_RID;
    sc_in< sc_lv<1> > m_axi_feature_in_RUSER;
    sc_in< sc_lv<2> > m_axi_feature_in_RRESP;
    sc_in< sc_logic > m_axi_feature_in_BVALID;
    sc_out< sc_logic > m_axi_feature_in_BREADY;
    sc_in< sc_lv<2> > m_axi_feature_in_BRESP;
    sc_in< sc_lv<1> > m_axi_feature_in_BID;
    sc_in< sc_lv<1> > m_axi_feature_in_BUSER;
    sc_in< sc_lv<30> > feature_in_offset;
    sc_out< sc_lv<15> > feature_buffer_address0;
    sc_out< sc_logic > feature_buffer_ce0;
    sc_out< sc_logic > feature_buffer_we0;
    sc_out< sc_lv<32> > feature_buffer_d0;
    sc_in< sc_lv<32> > chin;
    sc_in< sc_lv<32> > kx;
    sc_in< sc_lv<32> > ky;
    sc_in< sc_lv<32> > win;
    sc_in< sc_lv<32> > hin;
    sc_in< sc_lv<32> > stride;
    sc_in< sc_lv<32> > padding;
    sc_in< sc_lv<31> > x;
    sc_in< sc_lv<31> > y;


    // Module declarations
    load_feature(sc_module_name name);
    SC_HAS_PROCESS(load_feature);

    ~load_feature();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > feature_in_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > or_cond4_reg_903;
    sc_signal< sc_logic > feature_in_blk_n_R;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_lv<1> > or_cond4_reg_903_pp0_iter7_reg;
    sc_signal< sc_lv<96> > indvar_flatten2_reg_178;
    sc_signal< sc_lv<32> > index_reg_189;
    sc_signal< sc_lv<31> > c_reg_200;
    sc_signal< sc_lv<64> > indvar_flatten_reg_211;
    sc_signal< sc_lv<32> > index_1_reg_222;
    sc_signal< sc_lv<31> > i_reg_233;
    sc_signal< sc_lv<32> > index_2_reg_244;
    sc_signal< sc_lv<31> > j_reg_255;
    sc_signal< sc_lv<1> > tmp_s_fu_274_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_821;
    sc_signal< sc_lv<32> > smax_cast_fu_292_p1;
    sc_signal< sc_lv<32> > smax_cast_reg_826;
    sc_signal< sc_lv<32> > tmp_14_fu_318_p2;
    sc_signal< sc_lv<32> > tmp_14_reg_831;
    sc_signal< sc_lv<32> > tmp_16_fu_330_p2;
    sc_signal< sc_lv<32> > tmp_16_reg_836;
    sc_signal< sc_lv<32> > tmp_18_fu_342_p2;
    sc_signal< sc_lv<32> > tmp_18_reg_841;
    sc_signal< sc_lv<64> > bound_fu_356_p2;
    sc_signal< sc_lv<64> > bound_reg_848;
    sc_signal< sc_lv<96> > bound4_fu_370_p2;
    sc_signal< sc_lv<96> > bound4_reg_853;
    sc_signal< sc_lv<1> > tmp2_mid_fu_396_p2;
    sc_signal< sc_lv<1> > tmp2_mid_reg_858;
    sc_signal< sc_lv<33> > sext_cast_fu_402_p1;
    sc_signal< sc_lv<33> > sext_cast_reg_863;
    sc_signal< sc_lv<1> > exitcond_flatten2_fu_464_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_feature_in_ARREADY;
    sc_signal< bool > ap_block_state3_io;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<96> > indvar_flatten_next2_fu_469_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > index_mid2_fu_567_p3;
    sc_signal< sc_lv<31> > c_mid2_fu_575_p3;
    sc_signal< sc_lv<32> > index_2_mid2_fu_598_p3;
    sc_signal< sc_lv<32> > index_2_mid2_reg_887;
    sc_signal< sc_lv<32> > index_2_mid2_reg_887_pp0_iter1_reg;
    sc_signal< sc_lv<32> > index_2_mid2_reg_887_pp0_iter2_reg;
    sc_signal< sc_lv<32> > index_2_mid2_reg_887_pp0_iter3_reg;
    sc_signal< sc_lv<32> > index_2_mid2_reg_887_pp0_iter4_reg;
    sc_signal< sc_lv<32> > index_2_mid2_reg_887_pp0_iter5_reg;
    sc_signal< sc_lv<32> > index_2_mid2_reg_887_pp0_iter6_reg;
    sc_signal< sc_lv<32> > index_2_mid2_reg_887_pp0_iter7_reg;
    sc_signal< sc_lv<32> > index_2_mid2_reg_887_pp0_iter8_reg;
    sc_signal< sc_lv<32> > index_1_mid2_fu_675_p3;
    sc_signal< sc_lv<31> > i_mid2_fu_683_p3;
    sc_signal< sc_lv<1> > or_cond4_fu_721_p2;
    sc_signal< sc_lv<1> > or_cond4_reg_903_pp0_iter1_reg;
    sc_signal< sc_lv<1> > or_cond4_reg_903_pp0_iter2_reg;
    sc_signal< sc_lv<1> > or_cond4_reg_903_pp0_iter3_reg;
    sc_signal< sc_lv<1> > or_cond4_reg_903_pp0_iter4_reg;
    sc_signal< sc_lv<1> > or_cond4_reg_903_pp0_iter5_reg;
    sc_signal< sc_lv<1> > or_cond4_reg_903_pp0_iter6_reg;
    sc_signal< sc_lv<1> > or_cond4_reg_903_pp0_iter8_reg;
    sc_signal< sc_lv<32> > feature_in_addr_reg_907;
    sc_signal< sc_lv<32> > tmp_30_fu_752_p2;
    sc_signal< sc_lv<31> > j_2_fu_772_p3;
    sc_signal< sc_lv<64> > indvar_flatten_next_fu_786_p3;
    sc_signal< sc_lv<32> > feature_in_addr_read_reg_928;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_lv<64> > tmp_29_fu_794_p1;
    sc_signal< sc_lv<64> > tmp_28_fu_798_p1;
    sc_signal< sc_lv<64> > sum_cast_fu_742_p1;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_feature_in_ARREADY;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<31> > tmp_20_fu_280_p1;
    sc_signal< sc_lv<31> > smax_fu_284_p3;
    sc_signal< sc_lv<1> > tmp_13_fu_296_p2;
    sc_signal< sc_lv<31> > tmp_24_fu_302_p1;
    sc_signal< sc_lv<31> > smax1_fu_306_p3;
    sc_signal< sc_lv<31> > tmp_14_fu_318_p0;
    sc_signal< sc_lv<31> > tmp_14_fu_318_p1;
    sc_signal< sc_lv<31> > tmp_15_fu_324_p0;
    sc_signal< sc_lv<32> > tmp_15_fu_324_p1;
    sc_signal< sc_lv<32> > tmp_15_fu_324_p2;
    sc_signal< sc_lv<31> > tmp_17_fu_336_p0;
    sc_signal< sc_lv<32> > tmp_17_fu_336_p1;
    sc_signal< sc_lv<32> > tmp_17_fu_336_p2;
    sc_signal< sc_lv<32> > bound_fu_356_p0;
    sc_signal< sc_lv<32> > bound_fu_356_p1;
    sc_signal< sc_lv<32> > bound4_fu_370_p0;
    sc_signal< sc_lv<64> > bound4_fu_370_p1;
    sc_signal< sc_lv<1> > tmp_27_fu_376_p3;
    sc_signal< sc_lv<32> > tmp_26_mid_fu_390_p1;
    sc_signal< sc_lv<1> > tmp_26_mid_fu_390_p2;
    sc_signal< sc_lv<1> > rev_fu_384_p2;
    sc_signal< sc_lv<32> > tmp_19_fu_410_p0;
    sc_signal< sc_lv<31> > tmp_19_fu_410_p1;
    sc_signal< sc_lv<32> > i_cast_mid1_fu_415_p1;
    sc_signal< sc_lv<32> > yi_fu_419_p2;
    sc_signal< sc_lv<1> > tmp_31_fu_424_p3;
    sc_signal< sc_lv<32> > tmp_21_fu_438_p1;
    sc_signal< sc_lv<32> > tmp_19_fu_410_p2;
    sc_signal< sc_lv<1> > tmp_21_fu_438_p2;
    sc_signal< sc_lv<1> > rev1_fu_432_p2;
    sc_signal< sc_lv<32> > j_cast_fu_455_p1;
    sc_signal< sc_lv<31> > c_s_fu_475_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_490_p2;
    sc_signal< sc_lv<32> > index_s_fu_485_p2;
    sc_signal< sc_lv<31> > tmp_22_mid1_fu_519_p0;
    sc_signal< sc_lv<32> > tmp_22_mid1_fu_519_p1;
    sc_signal< sc_lv<32> > tmp_22_mid1_fu_519_p2;
    sc_signal< sc_lv<32> > tmp_mid_fu_532_p2;
    sc_signal< sc_lv<32> > tmp_fu_443_p2;
    sc_signal< sc_lv<1> > tmp2_fu_449_p2;
    sc_signal< sc_lv<1> > tmp_22_fu_459_p2;
    sc_signal< sc_lv<31> > i_mid_fu_503_p3;
    sc_signal< sc_lv<32> > index_1_mid_fu_495_p3;
    sc_signal< sc_lv<31> > i_2_fu_583_p2;
    sc_signal< sc_lv<1> > tmp_27_mid_fu_560_p3;
    sc_signal< sc_lv<32> > index_2_mid_fu_511_p3;
    sc_signal< sc_lv<32> > tmp_24_dup_fu_589_p2;
    sc_signal< sc_lv<32> > i_cast_fu_594_p1;
    sc_signal< sc_lv<32> > yi_mid1_fu_606_p2;
    sc_signal< sc_lv<1> > tmp_32_fu_611_p3;
    sc_signal< sc_lv<32> > tmp_26_mid1_fu_625_p1;
    sc_signal< sc_lv<32> > tmp_22_mid2_fu_524_p3;
    sc_signal< sc_lv<32> > tmp5_mid227_v_fu_537_p3;
    sc_signal< sc_lv<32> > tmp_mid1_fu_630_p2;
    sc_signal< sc_lv<32> > tmp5_mid2_v_fu_636_p3;
    sc_signal< sc_lv<32> > tmp5_mid2_fu_644_p1;
    sc_signal< sc_lv<1> > tmp_26_mid1_fu_625_p2;
    sc_signal< sc_lv<1> > rev2_fu_619_p2;
    sc_signal< sc_lv<1> > tmp2_mid3_fu_545_p3;
    sc_signal< sc_lv<1> > tmp2_mid1_fu_649_p2;
    sc_signal< sc_lv<31> > j_cast_mid_fu_552_p3;
    sc_signal< sc_lv<31> > j_cast_mid2_fu_663_p3;
    sc_signal< sc_lv<32> > j_cast_mid2_cast_fu_671_p1;
    sc_signal< sc_lv<32> > xi_fu_691_p2;
    sc_signal< sc_lv<1> > tmp_33_fu_696_p3;
    sc_signal< sc_lv<32> > tmp_25_fu_710_p1;
    sc_signal< sc_lv<1> > tmp_25_fu_710_p2;
    sc_signal< sc_lv<1> > rev3_fu_704_p2;
    sc_signal< sc_lv<1> > tmp2_mid2_fu_655_p3;
    sc_signal< sc_lv<1> > tmp1_fu_715_p2;
    sc_signal< sc_lv<32> > tmp5_mid2_fu_644_p2;
    sc_signal< sc_lv<32> > tmp_26_fu_727_p2;
    sc_signal< sc_lv<33> > tmp_27_cast_fu_733_p1;
    sc_signal< sc_lv<33> > sum_fu_737_p2;
    sc_signal< sc_lv<31> > j_op_fu_758_p2;
    sc_signal< sc_lv<31> > j_mid211_op_fu_764_p3;
    sc_signal< sc_lv<64> > indvar_flatten_op_fu_780_p2;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<96> > bound4_fu_370_p00;
    sc_signal< sc_lv<96> > bound4_fu_370_p10;
    sc_signal< sc_lv<64> > bound_fu_356_p00;
    sc_signal< sc_lv<64> > bound_fu_356_p10;
    sc_signal< sc_lv<32> > tmp_14_fu_318_p00;
    sc_signal< sc_lv<32> > tmp_14_fu_318_p10;
    sc_signal< sc_lv<32> > tmp_15_fu_324_p00;
    sc_signal< sc_lv<32> > tmp_17_fu_336_p00;
    sc_signal< sc_lv<32> > tmp_19_fu_410_p10;
    sc_signal< sc_lv<32> > tmp_22_mid1_fu_519_p00;
    sc_signal< bool > ap_condition_733;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state12;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<96> ap_const_lv96_0;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<96> ap_const_lv96_1;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state11_pp0_stage0_iter9();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_io();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_condition_733();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_m_axi_feature_in_ARREADY();
    void thread_bound4_fu_370_p0();
    void thread_bound4_fu_370_p00();
    void thread_bound4_fu_370_p1();
    void thread_bound4_fu_370_p10();
    void thread_bound4_fu_370_p2();
    void thread_bound_fu_356_p0();
    void thread_bound_fu_356_p00();
    void thread_bound_fu_356_p1();
    void thread_bound_fu_356_p10();
    void thread_bound_fu_356_p2();
    void thread_c_mid2_fu_575_p3();
    void thread_c_s_fu_475_p2();
    void thread_exitcond_flatten2_fu_464_p2();
    void thread_exitcond_flatten_fu_490_p2();
    void thread_feature_buffer_address0();
    void thread_feature_buffer_ce0();
    void thread_feature_buffer_d0();
    void thread_feature_buffer_we0();
    void thread_feature_in_blk_n_AR();
    void thread_feature_in_blk_n_R();
    void thread_i_2_fu_583_p2();
    void thread_i_cast_fu_594_p1();
    void thread_i_cast_mid1_fu_415_p1();
    void thread_i_mid2_fu_683_p3();
    void thread_i_mid_fu_503_p3();
    void thread_index_1_mid2_fu_675_p3();
    void thread_index_1_mid_fu_495_p3();
    void thread_index_2_mid2_fu_598_p3();
    void thread_index_2_mid_fu_511_p3();
    void thread_index_mid2_fu_567_p3();
    void thread_index_s_fu_485_p2();
    void thread_indvar_flatten_next2_fu_469_p2();
    void thread_indvar_flatten_next_fu_786_p3();
    void thread_indvar_flatten_op_fu_780_p2();
    void thread_j_2_fu_772_p3();
    void thread_j_cast_fu_455_p1();
    void thread_j_cast_mid2_cast_fu_671_p1();
    void thread_j_cast_mid2_fu_663_p3();
    void thread_j_cast_mid_fu_552_p3();
    void thread_j_mid211_op_fu_764_p3();
    void thread_j_op_fu_758_p2();
    void thread_m_axi_feature_in_ARADDR();
    void thread_m_axi_feature_in_ARBURST();
    void thread_m_axi_feature_in_ARCACHE();
    void thread_m_axi_feature_in_ARID();
    void thread_m_axi_feature_in_ARLEN();
    void thread_m_axi_feature_in_ARLOCK();
    void thread_m_axi_feature_in_ARPROT();
    void thread_m_axi_feature_in_ARQOS();
    void thread_m_axi_feature_in_ARREGION();
    void thread_m_axi_feature_in_ARSIZE();
    void thread_m_axi_feature_in_ARUSER();
    void thread_m_axi_feature_in_ARVALID();
    void thread_m_axi_feature_in_AWADDR();
    void thread_m_axi_feature_in_AWBURST();
    void thread_m_axi_feature_in_AWCACHE();
    void thread_m_axi_feature_in_AWID();
    void thread_m_axi_feature_in_AWLEN();
    void thread_m_axi_feature_in_AWLOCK();
    void thread_m_axi_feature_in_AWPROT();
    void thread_m_axi_feature_in_AWQOS();
    void thread_m_axi_feature_in_AWREGION();
    void thread_m_axi_feature_in_AWSIZE();
    void thread_m_axi_feature_in_AWUSER();
    void thread_m_axi_feature_in_AWVALID();
    void thread_m_axi_feature_in_BREADY();
    void thread_m_axi_feature_in_RREADY();
    void thread_m_axi_feature_in_WDATA();
    void thread_m_axi_feature_in_WID();
    void thread_m_axi_feature_in_WLAST();
    void thread_m_axi_feature_in_WSTRB();
    void thread_m_axi_feature_in_WUSER();
    void thread_m_axi_feature_in_WVALID();
    void thread_or_cond4_fu_721_p2();
    void thread_rev1_fu_432_p2();
    void thread_rev2_fu_619_p2();
    void thread_rev3_fu_704_p2();
    void thread_rev_fu_384_p2();
    void thread_sext_cast_fu_402_p1();
    void thread_smax1_fu_306_p3();
    void thread_smax_cast_fu_292_p1();
    void thread_smax_fu_284_p3();
    void thread_sum_cast_fu_742_p1();
    void thread_sum_fu_737_p2();
    void thread_tmp1_fu_715_p2();
    void thread_tmp2_fu_449_p2();
    void thread_tmp2_mid1_fu_649_p2();
    void thread_tmp2_mid2_fu_655_p3();
    void thread_tmp2_mid3_fu_545_p3();
    void thread_tmp2_mid_fu_396_p2();
    void thread_tmp5_mid227_v_fu_537_p3();
    void thread_tmp5_mid2_fu_644_p1();
    void thread_tmp5_mid2_fu_644_p2();
    void thread_tmp5_mid2_v_fu_636_p3();
    void thread_tmp_13_fu_296_p2();
    void thread_tmp_14_fu_318_p0();
    void thread_tmp_14_fu_318_p00();
    void thread_tmp_14_fu_318_p1();
    void thread_tmp_14_fu_318_p10();
    void thread_tmp_14_fu_318_p2();
    void thread_tmp_15_fu_324_p0();
    void thread_tmp_15_fu_324_p00();
    void thread_tmp_15_fu_324_p1();
    void thread_tmp_15_fu_324_p2();
    void thread_tmp_16_fu_330_p2();
    void thread_tmp_17_fu_336_p0();
    void thread_tmp_17_fu_336_p00();
    void thread_tmp_17_fu_336_p1();
    void thread_tmp_17_fu_336_p2();
    void thread_tmp_18_fu_342_p2();
    void thread_tmp_19_fu_410_p0();
    void thread_tmp_19_fu_410_p1();
    void thread_tmp_19_fu_410_p10();
    void thread_tmp_19_fu_410_p2();
    void thread_tmp_20_fu_280_p1();
    void thread_tmp_21_fu_438_p1();
    void thread_tmp_21_fu_438_p2();
    void thread_tmp_22_fu_459_p2();
    void thread_tmp_22_mid1_fu_519_p0();
    void thread_tmp_22_mid1_fu_519_p00();
    void thread_tmp_22_mid1_fu_519_p1();
    void thread_tmp_22_mid1_fu_519_p2();
    void thread_tmp_22_mid2_fu_524_p3();
    void thread_tmp_24_dup_fu_589_p2();
    void thread_tmp_24_fu_302_p1();
    void thread_tmp_25_fu_710_p1();
    void thread_tmp_25_fu_710_p2();
    void thread_tmp_26_fu_727_p2();
    void thread_tmp_26_mid1_fu_625_p1();
    void thread_tmp_26_mid1_fu_625_p2();
    void thread_tmp_26_mid_fu_390_p1();
    void thread_tmp_26_mid_fu_390_p2();
    void thread_tmp_27_cast_fu_733_p1();
    void thread_tmp_27_fu_376_p3();
    void thread_tmp_27_mid_fu_560_p3();
    void thread_tmp_28_fu_798_p1();
    void thread_tmp_29_fu_794_p1();
    void thread_tmp_30_fu_752_p2();
    void thread_tmp_31_fu_424_p3();
    void thread_tmp_32_fu_611_p3();
    void thread_tmp_33_fu_696_p3();
    void thread_tmp_fu_443_p2();
    void thread_tmp_mid1_fu_630_p2();
    void thread_tmp_mid_fu_532_p2();
    void thread_tmp_s_fu_274_p2();
    void thread_xi_fu_691_p2();
    void thread_yi_fu_419_p2();
    void thread_yi_mid1_fu_606_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
