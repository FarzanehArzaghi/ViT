-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matmul_1_matmul_1_Pipeline_loop1_loop2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_reload99 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload98 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload97 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload96 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload95 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload94 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload93 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload92 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload : IN STD_LOGIC_VECTOR (31 downto 0);
    output_C_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    output_C_ce0 : OUT STD_LOGIC;
    output_C_we0 : OUT STD_LOGIC;
    output_C_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    p_reload118 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload117 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload116 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload115 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload114 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload113 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload112 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload111 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload110 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of matmul_1_matmul_1_Pipeline_loop1_loop2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter8 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter9 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter10 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter11 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter12 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln49_fu_254_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln14_fu_284_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter1_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter2_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter3_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter4_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter5_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter6_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter7_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter8_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter9_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter10_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln14_reg_520_pp0_iter11_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_fu_292_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter1_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter2_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter3_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter4_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter5_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter6_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter7_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter8_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter9_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter10_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln49_reg_528_pp0_iter11_reg : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_fu_321_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_330_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_224_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_reg_547 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_339_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_348_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_211_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_reg_562 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_228_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_1_reg_567 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_357_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_366_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_216_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_1_reg_582 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_232_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_2_reg_587 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_220_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_2_reg_592 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln56_2_fu_400_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal col_fu_78 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal add_ln50_fu_300_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_col_load : STD_LOGIC_VECTOR (1 downto 0);
    signal row_fu_82 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sig_allocacmp_row_load : STD_LOGIC_VECTOR (1 downto 0);
    signal indvar_flatten48_fu_86 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal add_ln49_1_fu_260_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_indvar_flatten48_load : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln50_fu_278_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln49_fu_272_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_6_fu_378_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln56_fu_375_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal sub_ln56_fu_385_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln56_1_fu_391_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln56_fu_394_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter7_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter8_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter9_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter10_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter11_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component matmul_1_fadd_32ns_32ns_32_3_full_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component matmul_1_fmul_32ns_32ns_32_2_max_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component matmul_1_mux_3_2_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component matmul_1_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    fadd_32ns_32ns_32_3_full_dsp_1_U29 : component matmul_1_fadd_32ns_32ns_32_3_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => mul_reg_547,
        din1 => ap_const_lv32_0,
        ce => ap_const_logic_1,
        dout => grp_fu_211_p2);

    fadd_32ns_32ns_32_3_full_dsp_1_U30 : component matmul_1_fadd_32ns_32ns_32_3_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => res_reg_562,
        din1 => mul_1_reg_567,
        ce => ap_const_logic_1,
        dout => grp_fu_216_p2);

    fadd_32ns_32ns_32_3_full_dsp_1_U31 : component matmul_1_fadd_32ns_32ns_32_3_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => res_1_reg_582,
        din1 => mul_2_reg_587,
        ce => ap_const_logic_1,
        dout => grp_fu_220_p2);

    fmul_32ns_32ns_32_2_max_dsp_1_U32 : component matmul_1_fmul_32ns_32ns_32_2_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_fu_321_p5,
        din1 => tmp_3_fu_330_p5,
        ce => ap_const_logic_1,
        dout => grp_fu_224_p2);

    fmul_32ns_32ns_32_2_max_dsp_1_U33 : component matmul_1_fmul_32ns_32ns_32_2_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_1_fu_339_p5,
        din1 => tmp_4_fu_348_p5,
        ce => ap_const_logic_1,
        dout => grp_fu_228_p2);

    fmul_32ns_32ns_32_2_max_dsp_1_U34 : component matmul_1_fmul_32ns_32ns_32_2_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_2_fu_357_p5,
        din1 => tmp_5_fu_366_p5,
        ce => ap_const_logic_1,
        dout => grp_fu_232_p2);

    mux_3_2_32_1_1_U35 : component matmul_1_mux_3_2_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => p_reload99,
        din1 => p_reload98,
        din2 => p_reload97,
        din3 => select_ln49_reg_528,
        dout => tmp_fu_321_p5);

    mux_3_2_32_1_1_U36 : component matmul_1_mux_3_2_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => p_reload118,
        din1 => p_reload117,
        din2 => p_reload116,
        din3 => select_ln14_reg_520,
        dout => tmp_3_fu_330_p5);

    mux_3_2_32_1_1_U37 : component matmul_1_mux_3_2_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => p_reload96,
        din1 => p_reload95,
        din2 => p_reload94,
        din3 => select_ln49_reg_528_pp0_iter3_reg,
        dout => tmp_1_fu_339_p5);

    mux_3_2_32_1_1_U38 : component matmul_1_mux_3_2_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => p_reload115,
        din1 => p_reload114,
        din2 => p_reload113,
        din3 => select_ln14_reg_520_pp0_iter3_reg,
        dout => tmp_4_fu_348_p5);

    mux_3_2_32_1_1_U39 : component matmul_1_mux_3_2_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => p_reload93,
        din1 => p_reload92,
        din2 => p_reload,
        din3 => select_ln49_reg_528_pp0_iter6_reg,
        dout => tmp_2_fu_357_p5);

    mux_3_2_32_1_1_U40 : component matmul_1_mux_3_2_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => p_reload112,
        din1 => p_reload111,
        din2 => p_reload110,
        din3 => select_ln14_reg_520_pp0_iter6_reg,
        dout => tmp_5_fu_366_p5);

    flow_control_loop_pipe_sequential_init_U : component matmul_1_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter11_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter10_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter10 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter11_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter11 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter12_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter12 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter8_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter8 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter9_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter9 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
                end if; 
            end if;
        end if;
    end process;


    col_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln49_fu_254_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    col_fu_78 <= add_ln50_fu_300_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    col_fu_78 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten48_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln49_fu_254_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten48_fu_86 <= add_ln49_1_fu_260_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten48_fu_86 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    row_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln49_fu_254_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    row_fu_82 <= select_ln49_fu_292_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    row_fu_82 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
                ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
                ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
                ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
                mul_1_reg_567 <= grp_fu_228_p2;
                mul_2_reg_587 <= grp_fu_232_p2;
                mul_reg_547 <= grp_fu_224_p2;
                res_1_reg_582 <= grp_fu_216_p2;
                res_2_reg_592 <= grp_fu_220_p2;
                res_reg_562 <= grp_fu_211_p2;
                select_ln14_reg_520_pp0_iter10_reg <= select_ln14_reg_520_pp0_iter9_reg;
                select_ln14_reg_520_pp0_iter11_reg <= select_ln14_reg_520_pp0_iter10_reg;
                select_ln14_reg_520_pp0_iter2_reg <= select_ln14_reg_520_pp0_iter1_reg;
                select_ln14_reg_520_pp0_iter3_reg <= select_ln14_reg_520_pp0_iter2_reg;
                select_ln14_reg_520_pp0_iter4_reg <= select_ln14_reg_520_pp0_iter3_reg;
                select_ln14_reg_520_pp0_iter5_reg <= select_ln14_reg_520_pp0_iter4_reg;
                select_ln14_reg_520_pp0_iter6_reg <= select_ln14_reg_520_pp0_iter5_reg;
                select_ln14_reg_520_pp0_iter7_reg <= select_ln14_reg_520_pp0_iter6_reg;
                select_ln14_reg_520_pp0_iter8_reg <= select_ln14_reg_520_pp0_iter7_reg;
                select_ln14_reg_520_pp0_iter9_reg <= select_ln14_reg_520_pp0_iter8_reg;
                select_ln49_reg_528_pp0_iter10_reg <= select_ln49_reg_528_pp0_iter9_reg;
                select_ln49_reg_528_pp0_iter11_reg <= select_ln49_reg_528_pp0_iter10_reg;
                select_ln49_reg_528_pp0_iter2_reg <= select_ln49_reg_528_pp0_iter1_reg;
                select_ln49_reg_528_pp0_iter3_reg <= select_ln49_reg_528_pp0_iter2_reg;
                select_ln49_reg_528_pp0_iter4_reg <= select_ln49_reg_528_pp0_iter3_reg;
                select_ln49_reg_528_pp0_iter5_reg <= select_ln49_reg_528_pp0_iter4_reg;
                select_ln49_reg_528_pp0_iter6_reg <= select_ln49_reg_528_pp0_iter5_reg;
                select_ln49_reg_528_pp0_iter7_reg <= select_ln49_reg_528_pp0_iter6_reg;
                select_ln49_reg_528_pp0_iter8_reg <= select_ln49_reg_528_pp0_iter7_reg;
                select_ln49_reg_528_pp0_iter9_reg <= select_ln49_reg_528_pp0_iter8_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                select_ln14_reg_520 <= select_ln14_fu_284_p3;
                select_ln14_reg_520_pp0_iter1_reg <= select_ln14_reg_520;
                select_ln49_reg_528 <= select_ln49_fu_292_p3;
                select_ln49_reg_528_pp0_iter1_reg <= select_ln49_reg_528;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln49_1_fu_260_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten48_load) + unsigned(ap_const_lv4_1));
    add_ln49_fu_272_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_row_load) + unsigned(ap_const_lv2_1));
    add_ln50_fu_300_p2 <= std_logic_vector(unsigned(select_ln14_fu_284_p3) + unsigned(ap_const_lv2_1));
    add_ln56_fu_394_p2 <= std_logic_vector(unsigned(sub_ln56_fu_385_p2) + unsigned(zext_ln56_1_fu_391_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln49_fu_254_p2)
    begin
        if (((icmp_ln49_fu_254_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter11_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter11_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8, ap_enable_reg_pp0_iter9, ap_enable_reg_pp0_iter10, ap_enable_reg_pp0_iter11, ap_enable_reg_pp0_iter12)
    begin
        if (((ap_enable_reg_pp0_iter12 = ap_const_logic_0) and (ap_enable_reg_pp0_iter11 = ap_const_logic_0) and (ap_enable_reg_pp0_iter10 = ap_const_logic_0) and (ap_enable_reg_pp0_iter9 = ap_const_logic_0) and (ap_enable_reg_pp0_iter8 = ap_const_logic_0) and (ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_col_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, col_fu_78, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_col_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_col_load <= col_fu_78;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten48_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten48_fu_86)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten48_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_indvar_flatten48_load <= indvar_flatten48_fu_86;
        end if; 
    end process;


    ap_sig_allocacmp_row_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, row_fu_82)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_row_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_row_load <= row_fu_82;
        end if; 
    end process;

    icmp_ln49_fu_254_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten48_load = ap_const_lv4_9) else "0";
    icmp_ln50_fu_278_p2 <= "1" when (ap_sig_allocacmp_col_load = ap_const_lv2_3) else "0";
    output_C_address0 <= zext_ln56_2_fu_400_p1(4 - 1 downto 0);

    output_C_ce0_assign_proc : process(ap_enable_reg_pp0_iter12, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter12 = ap_const_logic_1))) then 
            output_C_ce0 <= ap_const_logic_1;
        else 
            output_C_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_C_d0 <= res_2_reg_592;

    output_C_we0_assign_proc : process(ap_enable_reg_pp0_iter12, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter12 = ap_const_logic_1))) then 
            output_C_we0 <= ap_const_logic_1;
        else 
            output_C_we0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln14_fu_284_p3 <= 
        ap_const_lv2_0 when (icmp_ln50_fu_278_p2(0) = '1') else 
        ap_sig_allocacmp_col_load;
    select_ln49_fu_292_p3 <= 
        add_ln49_fu_272_p2 when (icmp_ln50_fu_278_p2(0) = '1') else 
        ap_sig_allocacmp_row_load;
    sub_ln56_fu_385_p2 <= std_logic_vector(unsigned(tmp_6_fu_378_p3) - unsigned(zext_ln56_fu_375_p1));
    tmp_6_fu_378_p3 <= (select_ln49_reg_528_pp0_iter11_reg & ap_const_lv2_0);
    zext_ln56_1_fu_391_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln14_reg_520_pp0_iter11_reg),4));
    zext_ln56_2_fu_400_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln56_fu_394_p2),64));
    zext_ln56_fu_375_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln49_reg_528_pp0_iter11_reg),4));
end behav;