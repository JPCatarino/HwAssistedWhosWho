// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jul  8 18:13:07 2020
// Host        : DESKTOP-DS21IC9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mb_design_JenkinsMainLoopCop_0_0_sim_netlist.v
// Design      : mb_design_JenkinsMainLoopCop_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JenkinsMainLoop
   (i__carry__2_i_6_0,
    D,
    S,
    s00_axis_tdata);
  output [5:0]i__carry__2_i_6_0;
  output [31:0]D;
  input [2:0]S;
  input [31:0]s00_axis_tdata;

  wire [31:0]D;
  wire [29:9]L;
  wire [18:0]L00_in;
  wire [30:0]L02_in;
  wire [28:0]L05_in;
  wire [31:9]L3_out;
  wire [25:9]L6_out__0;
  wire \L_inferred__2/i__carry__0_n_0 ;
  wire \L_inferred__2/i__carry__0_n_1 ;
  wire \L_inferred__2/i__carry__0_n_2 ;
  wire \L_inferred__2/i__carry__0_n_3 ;
  wire \L_inferred__2/i__carry__1_n_0 ;
  wire \L_inferred__2/i__carry__1_n_1 ;
  wire \L_inferred__2/i__carry__1_n_2 ;
  wire \L_inferred__2/i__carry__1_n_3 ;
  wire \L_inferred__2/i__carry__2_n_0 ;
  wire \L_inferred__2/i__carry__2_n_1 ;
  wire \L_inferred__2/i__carry__2_n_2 ;
  wire \L_inferred__2/i__carry__2_n_3 ;
  wire \L_inferred__2/i__carry__3_n_0 ;
  wire \L_inferred__2/i__carry__3_n_1 ;
  wire \L_inferred__2/i__carry__3_n_2 ;
  wire \L_inferred__2/i__carry__3_n_3 ;
  wire \L_inferred__2/i__carry__4_n_2 ;
  wire \L_inferred__2/i__carry__4_n_3 ;
  wire \L_inferred__2/i__carry_n_0 ;
  wire \L_inferred__2/i__carry_n_1 ;
  wire \L_inferred__2/i__carry_n_2 ;
  wire \L_inferred__2/i__carry_n_3 ;
  wire [2:0]S;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_1_n_1;
  wire i__carry__0_i_1_n_2;
  wire i__carry__0_i_1_n_3;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_1_n_1;
  wire i__carry__1_i_1_n_2;
  wire i__carry__1_i_1_n_3;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__2_i_10_n_0;
  wire i__carry__2_i_10_n_1;
  wire i__carry__2_i_10_n_2;
  wire i__carry__2_i_10_n_3;
  wire i__carry__2_i_11_n_0;
  wire i__carry__2_i_12_n_0;
  wire i__carry__2_i_13_n_0;
  wire i__carry__2_i_14_n_0;
  wire i__carry__2_i_16_n_0;
  wire i__carry__2_i_16_n_1;
  wire i__carry__2_i_16_n_2;
  wire i__carry__2_i_16_n_3;
  wire i__carry__2_i_17_n_0;
  wire i__carry__2_i_17_n_1;
  wire i__carry__2_i_17_n_2;
  wire i__carry__2_i_17_n_3;
  wire i__carry__2_i_18_n_3;
  wire i__carry__2_i_19_n_0;
  wire i__carry__2_i_19_n_1;
  wire i__carry__2_i_19_n_2;
  wire i__carry__2_i_19_n_3;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_1_n_1;
  wire i__carry__2_i_1_n_2;
  wire i__carry__2_i_1_n_3;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire [5:0]i__carry__2_i_6_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_6_n_1;
  wire i__carry__2_i_6_n_2;
  wire i__carry__2_i_6_n_3;
  wire i__carry__2_i_9_n_3;
  wire i__carry__3_i_1_n_1;
  wire i__carry__3_i_1_n_2;
  wire i__carry__3_i_1_n_3;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__3_i_5_n_0;
  wire i__carry__3_i_6_n_2;
  wire i__carry__3_i_6_n_3;
  wire i__carry__3_i_7_n_0;
  wire i__carry__3_i_7_n_1;
  wire i__carry__3_i_7_n_2;
  wire i__carry__3_i_7_n_3;
  wire i__carry__3_i_8_n_0;
  wire i__carry__3_i_9_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_14_n_1;
  wire i__carry_i_14_n_2;
  wire i__carry_i_14_n_3;
  wire i__carry_i_15_n_0;
  wire i__carry_i_15_n_1;
  wire i__carry_i_15_n_2;
  wire i__carry_i_15_n_3;
  wire i__carry_i_16_n_0;
  wire i__carry_i_16_n_1;
  wire i__carry_i_16_n_2;
  wire i__carry_i_16_n_3;
  wire i__carry_i_17_n_0;
  wire i__carry_i_17_n_1;
  wire i__carry_i_17_n_2;
  wire i__carry_i_17_n_3;
  wire i__carry_i_18_n_0;
  wire i__carry_i_18_n_1;
  wire i__carry_i_18_n_2;
  wire i__carry_i_18_n_3;
  wire i__carry_i_19_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_1_n_1;
  wire i__carry_i_1_n_2;
  wire i__carry_i_1_n_3;
  wire i__carry_i_20_n_0;
  wire i__carry_i_21_n_0;
  wire i__carry_i_22_n_0;
  wire i__carry_i_23_n_0;
  wire i__carry_i_23_n_1;
  wire i__carry_i_23_n_2;
  wire i__carry_i_23_n_3;
  wire i__carry_i_24_n_0;
  wire i__carry_i_24_n_1;
  wire i__carry_i_24_n_2;
  wire i__carry_i_24_n_3;
  wire i__carry_i_25_n_0;
  wire i__carry_i_26_n_0;
  wire i__carry_i_27_n_0;
  wire i__carry_i_28_n_0;
  wire i__carry_i_29_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_2_n_1;
  wire i__carry_i_2_n_2;
  wire i__carry_i_2_n_3;
  wire i__carry_i_30_n_0;
  wire i__carry_i_31_n_0;
  wire i__carry_i_32_n_0;
  wire i__carry_i_33_n_0;
  wire i__carry_i_34_n_0;
  wire i__carry_i_35_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_48_n_0;
  wire i__carry_i_48_n_1;
  wire i__carry_i_48_n_2;
  wire i__carry_i_48_n_3;
  wire i__carry_i_49_n_0;
  wire i__carry_i_49_n_1;
  wire i__carry_i_49_n_2;
  wire i__carry_i_49_n_3;
  wire i__carry_i_4_n_0;
  wire i__carry_i_50_n_0;
  wire i__carry_i_50_n_1;
  wire i__carry_i_50_n_2;
  wire i__carry_i_50_n_3;
  wire i__carry_i_51_n_0;
  wire i__carry_i_51_n_1;
  wire i__carry_i_51_n_2;
  wire i__carry_i_51_n_3;
  wire i__carry_i_52_n_0;
  wire i__carry_i_53_n_0;
  wire i__carry_i_54_n_0;
  wire i__carry_i_55_n_0;
  wire i__carry_i_56_n_0;
  wire i__carry_i_57_n_0;
  wire i__carry_i_58_n_0;
  wire i__carry_i_59_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_60_n_0;
  wire [31:0]s00_axis_tdata;
  wire \s_countData[3]_i_10_n_0 ;
  wire \s_countData[3]_i_11_n_0 ;
  wire \s_countData[3]_i_13_n_0 ;
  wire \s_countData[3]_i_14_n_0 ;
  wire \s_countData[3]_i_15_n_0 ;
  wire \s_countData[3]_i_16_n_0 ;
  wire \s_countData[3]_i_3_n_0 ;
  wire \s_countData[3]_i_4_n_0 ;
  wire \s_countData[3]_i_5_n_0 ;
  wire \s_countData[3]_i_6_n_0 ;
  wire \s_countData[3]_i_8_n_0 ;
  wire \s_countData[3]_i_9_n_0 ;
  wire \s_countData[7]_i_10_n_0 ;
  wire \s_countData[7]_i_11_n_0 ;
  wire \s_countData[7]_i_13_n_0 ;
  wire \s_countData[7]_i_14_n_0 ;
  wire \s_countData[7]_i_15_n_0 ;
  wire \s_countData[7]_i_16_n_0 ;
  wire \s_countData[7]_i_3_n_0 ;
  wire \s_countData[7]_i_4_n_0 ;
  wire \s_countData[7]_i_5_n_0 ;
  wire \s_countData[7]_i_6_n_0 ;
  wire \s_countData[7]_i_8_n_0 ;
  wire \s_countData[7]_i_9_n_0 ;
  wire \s_countData_reg[3]_i_12_n_0 ;
  wire \s_countData_reg[3]_i_12_n_1 ;
  wire \s_countData_reg[3]_i_12_n_2 ;
  wire \s_countData_reg[3]_i_12_n_3 ;
  wire \s_countData_reg[3]_i_2_n_0 ;
  wire \s_countData_reg[3]_i_2_n_1 ;
  wire \s_countData_reg[3]_i_2_n_2 ;
  wire \s_countData_reg[3]_i_2_n_3 ;
  wire \s_countData_reg[3]_i_7_n_0 ;
  wire \s_countData_reg[3]_i_7_n_1 ;
  wire \s_countData_reg[3]_i_7_n_2 ;
  wire \s_countData_reg[3]_i_7_n_3 ;
  wire \s_countData_reg[7]_i_12_n_0 ;
  wire \s_countData_reg[7]_i_12_n_1 ;
  wire \s_countData_reg[7]_i_12_n_2 ;
  wire \s_countData_reg[7]_i_12_n_3 ;
  wire \s_countData_reg[7]_i_2_n_0 ;
  wire \s_countData_reg[7]_i_2_n_1 ;
  wire \s_countData_reg[7]_i_2_n_2 ;
  wire \s_countData_reg[7]_i_2_n_3 ;
  wire \s_countData_reg[7]_i_7_n_0 ;
  wire \s_countData_reg[7]_i_7_n_1 ;
  wire \s_countData_reg[7]_i_7_n_2 ;
  wire \s_countData_reg[7]_i_7_n_3 ;
  wire [25:8]xor2_out;
  wire [23:8]xor5_out;
  wire [1:0]xor8_out;
  wire [3:2]\NLW_L_inferred__2/i__carry__4_CO_UNCONNECTED ;
  wire [3:3]\NLW_L_inferred__2/i__carry__4_O_UNCONNECTED ;
  wire [3:1]NLW_i__carry__2_i_15_CO_UNCONNECTED;
  wire [3:0]NLW_i__carry__2_i_15_O_UNCONNECTED;
  wire [3:1]NLW_i__carry__2_i_18_CO_UNCONNECTED;
  wire [3:2]NLW_i__carry__2_i_18_O_UNCONNECTED;
  wire [3:1]NLW_i__carry__2_i_9_CO_UNCONNECTED;
  wire [3:2]NLW_i__carry__2_i_9_O_UNCONNECTED;
  wire [3:3]NLW_i__carry__3_i_1_CO_UNCONNECTED;
  wire [3:2]NLW_i__carry__3_i_6_CO_UNCONNECTED;
  wire [3:3]NLW_i__carry__3_i_6_O_UNCONNECTED;

  CARRY4 \L_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\L_inferred__2/i__carry_n_0 ,\L_inferred__2/i__carry_n_1 ,\L_inferred__2/i__carry_n_2 ,\L_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({L05_in[12:10],1'b0}),
        .O(L6_out__0[12:9]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,L05_in[9]}));
  CARRY4 \L_inferred__2/i__carry__0 
       (.CI(\L_inferred__2/i__carry_n_0 ),
        .CO({\L_inferred__2/i__carry__0_n_0 ,\L_inferred__2/i__carry__0_n_1 ,\L_inferred__2/i__carry__0_n_2 ,\L_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(L05_in[16:13]),
        .O(L6_out__0[16:13]),
        .S({i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0}));
  CARRY4 \L_inferred__2/i__carry__1 
       (.CI(\L_inferred__2/i__carry__0_n_0 ),
        .CO({\L_inferred__2/i__carry__1_n_0 ,\L_inferred__2/i__carry__1_n_1 ,\L_inferred__2/i__carry__1_n_2 ,\L_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_6_0[1:0],L05_in[18:17]}),
        .O(L6_out__0[20:17]),
        .S({i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0,i__carry__1_i_5_n_0}));
  CARRY4 \L_inferred__2/i__carry__2 
       (.CI(\L_inferred__2/i__carry__1_n_0 ),
        .CO({\L_inferred__2/i__carry__2_n_0 ,\L_inferred__2/i__carry__2_n_1 ,\L_inferred__2/i__carry__2_n_2 ,\L_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({L05_in[24:22],i__carry__2_i_6_0[2]}),
        .O(L6_out__0[24:21]),
        .S({i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0,i__carry__2_i_5_n_0}));
  CARRY4 \L_inferred__2/i__carry__3 
       (.CI(\L_inferred__2/i__carry__2_n_0 ),
        .CO({\L_inferred__2/i__carry__3_n_0 ,\L_inferred__2/i__carry__3_n_1 ,\L_inferred__2/i__carry__3_n_2 ,\L_inferred__2/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(L05_in[28:25]),
        .O({D[28:26],L6_out__0[25]}),
        .S({i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0,i__carry__3_i_5_n_0}));
  CARRY4 \L_inferred__2/i__carry__4 
       (.CI(\L_inferred__2/i__carry__3_n_0 ),
        .CO({\NLW_L_inferred__2/i__carry__4_CO_UNCONNECTED [3:2],\L_inferred__2/i__carry__4_n_2 ,\L_inferred__2/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__2_i_6_0[4:3]}),
        .O({\NLW_L_inferred__2/i__carry__4_O_UNCONNECTED [3],D[31:29]}),
        .S({1'b0,S}));
  CARRY4 i__carry__0_i_1
       (.CI(i__carry_i_1_n_0),
        .CO({i__carry__0_i_1_n_0,i__carry__0_i_1_n_1,i__carry__0_i_1_n_2,i__carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__2_i_6_0[0],L05_in[18:16]}),
        .S(xor2_out[19:16]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(L05_in[16]),
        .I1(L05_in[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(L05_in[15]),
        .I1(L05_in[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4
       (.I0(L05_in[14]),
        .I1(L05_in[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_5
       (.I0(L05_in[13]),
        .I1(L05_in[3]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_6
       (.I0(L3_out[25]),
        .I1(L3_out[19]),
        .O(xor2_out[19]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_7
       (.I0(L3_out[24]),
        .I1(L3_out[18]),
        .O(xor2_out[18]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_8
       (.I0(L3_out[23]),
        .I1(L3_out[17]),
        .O(xor2_out[17]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_9
       (.I0(L3_out[22]),
        .I1(L3_out[16]),
        .O(xor2_out[16]));
  CARRY4 i__carry__1_i_1
       (.CI(i__carry__0_i_1_n_0),
        .CO({i__carry__1_i_1_n_0,i__carry__1_i_1_n_1,i__carry__1_i_1_n_2,i__carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({L05_in[23:22],i__carry__2_i_6_0[2:1]}),
        .S(xor2_out[23:20]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2
       (.I0(i__carry__2_i_6_0[1]),
        .I1(L05_in[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3
       (.I0(i__carry__2_i_6_0[0]),
        .I1(L05_in[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4
       (.I0(L05_in[18]),
        .I1(L05_in[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_5
       (.I0(L05_in[17]),
        .I1(L05_in[7]),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_6
       (.I0(L3_out[29]),
        .I1(L3_out[23]),
        .O(xor2_out[23]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_7
       (.I0(L3_out[28]),
        .I1(L3_out[22]),
        .O(xor2_out[22]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_8
       (.I0(L3_out[27]),
        .I1(L3_out[21]),
        .O(xor2_out[21]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_9
       (.I0(L3_out[26]),
        .I1(L3_out[20]),
        .O(xor2_out[20]));
  CARRY4 i__carry__2_i_1
       (.CI(i__carry__1_i_1_n_0),
        .CO({i__carry__2_i_1_n_0,i__carry__2_i_1_n_1,i__carry__2_i_1_n_2,i__carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L05_in[27:24]),
        .S({L3_out[27:26],xor2_out[25:24]}));
  CARRY4 i__carry__2_i_10
       (.CI(i__carry__3_i_7_n_0),
        .CO({i__carry__2_i_10_n_0,i__carry__2_i_10_n_1,i__carry__2_i_10_n_2,i__carry__2_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L02_in[27:24]),
        .S(L[27:24]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_11
       (.I0(L02_in[28]),
        .I1(L02_in[18]),
        .O(i__carry__2_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_12
       (.I0(L02_in[27]),
        .I1(L02_in[17]),
        .O(i__carry__2_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_13
       (.I0(L02_in[26]),
        .I1(L02_in[16]),
        .O(i__carry__2_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_14
       (.I0(L02_in[25]),
        .I1(L02_in[15]),
        .O(i__carry__2_i_14_n_0));
  CARRY4 i__carry__2_i_15
       (.CI(i__carry__2_i_16_n_0),
        .CO({NLW_i__carry__2_i_15_CO_UNCONNECTED[3:1],L[29]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_i__carry__2_i_15_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 i__carry__2_i_16
       (.CI(i__carry__2_i_17_n_0),
        .CO({i__carry__2_i_16_n_0,i__carry__2_i_16_n_1,i__carry__2_i_16_n_2,i__carry__2_i_16_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L[28:25]),
        .S(L00_in[18:15]));
  CARRY4 i__carry__2_i_17
       (.CI(i__carry_i_48_n_0),
        .CO({i__carry__2_i_17_n_0,i__carry__2_i_17_n_1,i__carry__2_i_17_n_2,i__carry__2_i_17_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L[24:21]),
        .S(L00_in[14:11]));
  CARRY4 i__carry__2_i_18
       (.CI(i__carry__2_i_19_n_0),
        .CO({NLW_i__carry__2_i_18_CO_UNCONNECTED[3],L00_in[18],NLW_i__carry__2_i_18_CO_UNCONNECTED[1],i__carry__2_i_18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__2_i_18_O_UNCONNECTED[3:2],L00_in[17:16]}),
        .S({1'b0,1'b1,s00_axis_tdata[31:30]}));
  CARRY4 i__carry__2_i_19
       (.CI(i__carry_i_51_n_0),
        .CO({i__carry__2_i_19_n_0,i__carry__2_i_19_n_1,i__carry__2_i_19_n_2,i__carry__2_i_19_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L00_in[15:12]),
        .S(s00_axis_tdata[29:26]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2
       (.I0(L05_in[24]),
        .I1(L05_in[14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3
       (.I0(L05_in[23]),
        .I1(L05_in[13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4
       (.I0(L05_in[22]),
        .I1(L05_in[12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_5
       (.I0(i__carry__2_i_6_0[2]),
        .I1(L05_in[11]),
        .O(i__carry__2_i_5_n_0));
  CARRY4 i__carry__2_i_6
       (.CI(i__carry_i_14_n_0),
        .CO({i__carry__2_i_6_n_0,i__carry__2_i_6_n_1,i__carry__2_i_6_n_2,i__carry__2_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(L02_in[28:25]),
        .O(L3_out[28:25]),
        .S({i__carry__2_i_11_n_0,i__carry__2_i_12_n_0,i__carry__2_i_13_n_0,i__carry__2_i_14_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_7
       (.I0(L3_out[31]),
        .I1(L3_out[25]),
        .O(xor2_out[25]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_8
       (.I0(L3_out[30]),
        .I1(L3_out[24]),
        .O(xor2_out[24]));
  CARRY4 i__carry__2_i_9
       (.CI(i__carry__2_i_10_n_0),
        .CO({NLW_i__carry__2_i_9_CO_UNCONNECTED[3],L02_in[30],NLW_i__carry__2_i_9_CO_UNCONNECTED[1],i__carry__2_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__2_i_9_O_UNCONNECTED[3:2],L02_in[29:28]}),
        .S({1'b0,1'b1,L[29:28]}));
  CARRY4 i__carry__3_i_1
       (.CI(i__carry__2_i_1_n_0),
        .CO({NLW_i__carry__3_i_1_CO_UNCONNECTED[3],i__carry__3_i_1_n_1,i__carry__3_i_1_n_2,i__carry__3_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i__carry__2_i_6_0[5:3],L05_in[28]}),
        .S(L3_out[31:28]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_10
       (.I0(L[29]),
        .I1(L[23]),
        .O(xor5_out[23]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_11
       (.I0(L[28]),
        .I1(L[22]),
        .O(xor5_out[22]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_12
       (.I0(L[27]),
        .I1(L[21]),
        .O(xor5_out[21]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_13
       (.I0(L[26]),
        .I1(L[20]),
        .O(xor5_out[20]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_2
       (.I0(L05_in[28]),
        .I1(L05_in[18]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_3
       (.I0(L05_in[27]),
        .I1(L05_in[17]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_4
       (.I0(L05_in[26]),
        .I1(L05_in[16]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_5
       (.I0(L05_in[25]),
        .I1(L05_in[15]),
        .O(i__carry__3_i_5_n_0));
  CARRY4 i__carry__3_i_6
       (.CI(i__carry__2_i_6_n_0),
        .CO({NLW_i__carry__3_i_6_CO_UNCONNECTED[3:2],i__carry__3_i_6_n_2,i__carry__3_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,L02_in[30:29]}),
        .O({NLW_i__carry__3_i_6_O_UNCONNECTED[3],L3_out[31:29]}),
        .S({1'b0,L02_in[21],i__carry__3_i_8_n_0,i__carry__3_i_9_n_0}));
  CARRY4 i__carry__3_i_7
       (.CI(i__carry_i_23_n_0),
        .CO({i__carry__3_i_7_n_0,i__carry__3_i_7_n_1,i__carry__3_i_7_n_2,i__carry__3_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L02_in[23:20]),
        .S(xor5_out[23:20]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_8
       (.I0(L02_in[30]),
        .I1(L02_in[20]),
        .O(i__carry__3_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_9
       (.I0(L02_in[29]),
        .I1(L02_in[19]),
        .O(i__carry__3_i_9_n_0));
  CARRY4 i__carry_i_1
       (.CI(i__carry_i_2_n_0),
        .CO({i__carry_i_1_n_0,i__carry_i_1_n_1,i__carry_i_1_n_2,i__carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L05_in[15:12]),
        .S(xor2_out[15:12]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_10
       (.I0(L3_out[17]),
        .I1(L3_out[11]),
        .O(xor2_out[11]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_11
       (.I0(L3_out[16]),
        .I1(L3_out[10]),
        .O(xor2_out[10]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_12
       (.I0(L3_out[15]),
        .I1(L3_out[9]),
        .O(xor2_out[9]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_13
       (.I0(L3_out[14]),
        .I1(L02_in[8]),
        .O(xor2_out[8]));
  CARRY4 i__carry_i_14
       (.CI(i__carry_i_16_n_0),
        .CO({i__carry_i_14_n_0,i__carry_i_14_n_1,i__carry_i_14_n_2,i__carry_i_14_n_3}),
        .CYINIT(1'b0),
        .DI(L02_in[24:21]),
        .O(L3_out[24:21]),
        .S({i__carry_i_19_n_0,i__carry_i_20_n_0,i__carry_i_21_n_0,i__carry_i_22_n_0}));
  CARRY4 i__carry_i_15
       (.CI(i__carry_i_17_n_0),
        .CO({i__carry_i_15_n_0,i__carry_i_15_n_1,i__carry_i_15_n_2,i__carry_i_15_n_3}),
        .CYINIT(1'b0),
        .DI(L02_in[16:13]),
        .O(L3_out[16:13]),
        .S({i__carry_i_25_n_0,i__carry_i_26_n_0,i__carry_i_27_n_0,i__carry_i_28_n_0}));
  CARRY4 i__carry_i_16
       (.CI(i__carry_i_15_n_0),
        .CO({i__carry_i_16_n_0,i__carry_i_16_n_1,i__carry_i_16_n_2,i__carry_i_16_n_3}),
        .CYINIT(1'b0),
        .DI(L02_in[20:17]),
        .O(L3_out[20:17]),
        .S({i__carry_i_29_n_0,i__carry_i_30_n_0,i__carry_i_31_n_0,i__carry_i_32_n_0}));
  CARRY4 i__carry_i_17
       (.CI(1'b0),
        .CO({i__carry_i_17_n_0,i__carry_i_17_n_1,i__carry_i_17_n_2,i__carry_i_17_n_3}),
        .CYINIT(1'b0),
        .DI({L02_in[12:10],1'b0}),
        .O(L3_out[12:9]),
        .S({i__carry_i_33_n_0,i__carry_i_34_n_0,i__carry_i_35_n_0,L02_in[9]}));
  CARRY4 i__carry_i_18
       (.CI(\s_countData_reg[7]_i_7_n_0 ),
        .CO({i__carry_i_18_n_0,i__carry_i_18_n_1,i__carry_i_18_n_2,i__carry_i_18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L02_in[11:8]),
        .S(xor5_out[11:8]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_19
       (.I0(L02_in[24]),
        .I1(L02_in[14]),
        .O(i__carry_i_19_n_0));
  CARRY4 i__carry_i_2
       (.CI(\s_countData_reg[7]_i_2_n_0 ),
        .CO({i__carry_i_2_n_0,i__carry_i_2_n_1,i__carry_i_2_n_2,i__carry_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L05_in[11:8]),
        .S(xor2_out[11:8]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_20
       (.I0(L02_in[23]),
        .I1(L02_in[13]),
        .O(i__carry_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_21
       (.I0(L02_in[22]),
        .I1(L02_in[12]),
        .O(i__carry_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_22
       (.I0(L02_in[21]),
        .I1(L02_in[11]),
        .O(i__carry_i_22_n_0));
  CARRY4 i__carry_i_23
       (.CI(i__carry_i_24_n_0),
        .CO({i__carry_i_23_n_0,i__carry_i_23_n_1,i__carry_i_23_n_2,i__carry_i_23_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L02_in[19:16]),
        .S(xor5_out[19:16]));
  CARRY4 i__carry_i_24
       (.CI(i__carry_i_18_n_0),
        .CO({i__carry_i_24_n_0,i__carry_i_24_n_1,i__carry_i_24_n_2,i__carry_i_24_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L02_in[15:12]),
        .S(xor5_out[15:12]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_25
       (.I0(L02_in[16]),
        .I1(L02_in[6]),
        .O(i__carry_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_26
       (.I0(L02_in[15]),
        .I1(L02_in[5]),
        .O(i__carry_i_26_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_27
       (.I0(L02_in[14]),
        .I1(L02_in[4]),
        .O(i__carry_i_27_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_28
       (.I0(L02_in[13]),
        .I1(L02_in[3]),
        .O(i__carry_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_29
       (.I0(L02_in[20]),
        .I1(L02_in[10]),
        .O(i__carry_i_29_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(L05_in[12]),
        .I1(L05_in[2]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_30
       (.I0(L02_in[19]),
        .I1(L02_in[9]),
        .O(i__carry_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_31
       (.I0(L02_in[18]),
        .I1(L02_in[8]),
        .O(i__carry_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_32
       (.I0(L02_in[17]),
        .I1(L02_in[7]),
        .O(i__carry_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_33
       (.I0(L02_in[12]),
        .I1(L02_in[2]),
        .O(i__carry_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_34
       (.I0(L02_in[11]),
        .I1(L02_in[1]),
        .O(i__carry_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_35
       (.I0(L02_in[10]),
        .I1(L02_in[0]),
        .O(i__carry_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_36
       (.I0(L[17]),
        .I1(L[11]),
        .O(xor5_out[11]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_37
       (.I0(L[16]),
        .I1(L[10]),
        .O(xor5_out[10]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_38
       (.I0(L[15]),
        .I1(L[9]),
        .O(xor5_out[9]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_39
       (.I0(L[14]),
        .I1(L00_in[8]),
        .O(xor5_out[8]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(L05_in[11]),
        .I1(L05_in[1]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_40
       (.I0(L[25]),
        .I1(L[19]),
        .O(xor5_out[19]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_41
       (.I0(L[24]),
        .I1(L[18]),
        .O(xor5_out[18]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_42
       (.I0(L[23]),
        .I1(L[17]),
        .O(xor5_out[17]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_43
       (.I0(L[22]),
        .I1(L[16]),
        .O(xor5_out[16]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_44
       (.I0(L[21]),
        .I1(L[15]),
        .O(xor5_out[15]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_45
       (.I0(L[20]),
        .I1(L[14]),
        .O(xor5_out[14]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_46
       (.I0(L[19]),
        .I1(L[13]),
        .O(xor5_out[13]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_47
       (.I0(L[18]),
        .I1(L[12]),
        .O(xor5_out[12]));
  CARRY4 i__carry_i_48
       (.CI(i__carry_i_50_n_0),
        .CO({i__carry_i_48_n_0,i__carry_i_48_n_1,i__carry_i_48_n_2,i__carry_i_48_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,L00_in[18:17]}),
        .O(L[20:17]),
        .S({L00_in[10:9],i__carry_i_52_n_0,i__carry_i_53_n_0}));
  CARRY4 i__carry_i_49
       (.CI(1'b0),
        .CO({i__carry_i_49_n_0,i__carry_i_49_n_1,i__carry_i_49_n_2,i__carry_i_49_n_3}),
        .CYINIT(1'b0),
        .DI({L00_in[12:10],1'b0}),
        .O(L[12:9]),
        .S({i__carry_i_54_n_0,i__carry_i_55_n_0,i__carry_i_56_n_0,L00_in[9]}));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_5
       (.I0(L05_in[10]),
        .I1(L05_in[0]),
        .O(i__carry_i_5_n_0));
  CARRY4 i__carry_i_50
       (.CI(i__carry_i_49_n_0),
        .CO({i__carry_i_50_n_0,i__carry_i_50_n_1,i__carry_i_50_n_2,i__carry_i_50_n_3}),
        .CYINIT(1'b0),
        .DI(L00_in[16:13]),
        .O(L[16:13]),
        .S({i__carry_i_57_n_0,i__carry_i_58_n_0,i__carry_i_59_n_0,i__carry_i_60_n_0}));
  CARRY4 i__carry_i_51
       (.CI(\s_countData_reg[7]_i_12_n_0 ),
        .CO({i__carry_i_51_n_0,i__carry_i_51_n_1,i__carry_i_51_n_2,i__carry_i_51_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(L00_in[11:8]),
        .S({xor8_out,s00_axis_tdata[29:28]}));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_52
       (.I0(L00_in[18]),
        .I1(L00_in[8]),
        .O(i__carry_i_52_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_53
       (.I0(L00_in[17]),
        .I1(L00_in[7]),
        .O(i__carry_i_53_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_54
       (.I0(L00_in[12]),
        .I1(L00_in[2]),
        .O(i__carry_i_54_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_55
       (.I0(L00_in[11]),
        .I1(L00_in[1]),
        .O(i__carry_i_55_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_56
       (.I0(L00_in[10]),
        .I1(L00_in[0]),
        .O(i__carry_i_56_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_57
       (.I0(L00_in[16]),
        .I1(L00_in[6]),
        .O(i__carry_i_57_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_58
       (.I0(L00_in[15]),
        .I1(L00_in[5]),
        .O(i__carry_i_58_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_59
       (.I0(L00_in[14]),
        .I1(L00_in[4]),
        .O(i__carry_i_59_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_6
       (.I0(L3_out[21]),
        .I1(L3_out[15]),
        .O(xor2_out[15]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_60
       (.I0(L00_in[13]),
        .I1(L00_in[3]),
        .O(i__carry_i_60_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_61
       (.I0(s00_axis_tdata[31]),
        .I1(s00_axis_tdata[25]),
        .O(xor8_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_62
       (.I0(s00_axis_tdata[30]),
        .I1(s00_axis_tdata[24]),
        .O(xor8_out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_7
       (.I0(L3_out[20]),
        .I1(L3_out[14]),
        .O(xor2_out[14]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_8
       (.I0(L3_out[19]),
        .I1(L3_out[13]),
        .O(xor2_out[13]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_9
       (.I0(L3_out[18]),
        .I1(L3_out[12]),
        .O(xor2_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[0]_i_1 
       (.I0(L05_in[6]),
        .I1(L05_in[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[10]_i_1 
       (.I0(L6_out__0[16]),
        .I1(L6_out__0[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[11]_i_1 
       (.I0(L6_out__0[17]),
        .I1(L6_out__0[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[12]_i_1 
       (.I0(L6_out__0[18]),
        .I1(L6_out__0[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[13]_i_1 
       (.I0(L6_out__0[19]),
        .I1(L6_out__0[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[14]_i_1 
       (.I0(L6_out__0[20]),
        .I1(L6_out__0[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[15]_i_1 
       (.I0(L6_out__0[21]),
        .I1(L6_out__0[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[16]_i_1 
       (.I0(L6_out__0[22]),
        .I1(L6_out__0[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[17]_i_1 
       (.I0(L6_out__0[23]),
        .I1(L6_out__0[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[18]_i_1 
       (.I0(L6_out__0[24]),
        .I1(L6_out__0[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[19]_i_1 
       (.I0(L6_out__0[25]),
        .I1(L6_out__0[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[1]_i_1 
       (.I0(L05_in[7]),
        .I1(L05_in[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[20]_i_1 
       (.I0(D[26]),
        .I1(L6_out__0[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[21]_i_1 
       (.I0(D[27]),
        .I1(L6_out__0[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[22]_i_1 
       (.I0(D[28]),
        .I1(L6_out__0[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[23]_i_1 
       (.I0(D[29]),
        .I1(L6_out__0[23]),
        .O(D[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[24]_i_1 
       (.I0(D[30]),
        .I1(L6_out__0[24]),
        .O(D[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[25]_i_1 
       (.I0(D[31]),
        .I1(L6_out__0[25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[2]_i_1 
       (.I0(L05_in[8]),
        .I1(L05_in[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[3]_i_1 
       (.I0(L6_out__0[9]),
        .I1(L05_in[3]),
        .O(D[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_10 
       (.I0(L00_in[1]),
        .I1(L00_in[7]),
        .I2(s00_axis_tdata[9]),
        .O(\s_countData[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_11 
       (.I0(L00_in[0]),
        .I1(L00_in[6]),
        .I2(s00_axis_tdata[8]),
        .O(\s_countData[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[3]_i_13 
       (.I0(s00_axis_tdata[27]),
        .I1(s00_axis_tdata[19]),
        .O(\s_countData[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[3]_i_14 
       (.I0(s00_axis_tdata[26]),
        .I1(s00_axis_tdata[18]),
        .O(\s_countData[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_15 
       (.I0(s00_axis_tdata[25]),
        .I1(s00_axis_tdata[31]),
        .I2(s00_axis_tdata[17]),
        .O(\s_countData[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_16 
       (.I0(s00_axis_tdata[24]),
        .I1(s00_axis_tdata[30]),
        .I2(s00_axis_tdata[16]),
        .O(\s_countData[3]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_3 
       (.I0(L02_in[3]),
        .I1(L3_out[9]),
        .I2(s00_axis_tdata[3]),
        .O(\s_countData[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_4 
       (.I0(L02_in[2]),
        .I1(L02_in[8]),
        .I2(s00_axis_tdata[2]),
        .O(\s_countData[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_5 
       (.I0(L02_in[1]),
        .I1(L02_in[7]),
        .I2(s00_axis_tdata[1]),
        .O(\s_countData[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_6 
       (.I0(L02_in[0]),
        .I1(L02_in[6]),
        .I2(s00_axis_tdata[0]),
        .O(\s_countData[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_8 
       (.I0(L00_in[3]),
        .I1(L[9]),
        .I2(s00_axis_tdata[11]),
        .O(\s_countData[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[3]_i_9 
       (.I0(L00_in[2]),
        .I1(L00_in[8]),
        .I2(s00_axis_tdata[10]),
        .O(\s_countData[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[4]_i_1 
       (.I0(L6_out__0[10]),
        .I1(L05_in[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[5]_i_1 
       (.I0(L6_out__0[11]),
        .I1(L05_in[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[6]_i_1 
       (.I0(L6_out__0[12]),
        .I1(L05_in[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[7]_i_1 
       (.I0(L6_out__0[13]),
        .I1(L05_in[7]),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_10 
       (.I0(L00_in[5]),
        .I1(L[11]),
        .I2(s00_axis_tdata[13]),
        .O(\s_countData[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_11 
       (.I0(L00_in[4]),
        .I1(L[10]),
        .I2(s00_axis_tdata[12]),
        .O(\s_countData[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_13 
       (.I0(s00_axis_tdata[31]),
        .I1(s00_axis_tdata[27]),
        .I2(s00_axis_tdata[23]),
        .O(\s_countData[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_14 
       (.I0(s00_axis_tdata[30]),
        .I1(s00_axis_tdata[26]),
        .I2(s00_axis_tdata[22]),
        .O(\s_countData[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_15 
       (.I0(s00_axis_tdata[29]),
        .I1(s00_axis_tdata[25]),
        .I2(s00_axis_tdata[21]),
        .O(\s_countData[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_16 
       (.I0(s00_axis_tdata[28]),
        .I1(s00_axis_tdata[24]),
        .I2(s00_axis_tdata[20]),
        .O(\s_countData[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_3 
       (.I0(L02_in[7]),
        .I1(L3_out[13]),
        .I2(s00_axis_tdata[7]),
        .O(\s_countData[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_4 
       (.I0(L02_in[6]),
        .I1(L3_out[12]),
        .I2(s00_axis_tdata[6]),
        .O(\s_countData[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_5 
       (.I0(L02_in[5]),
        .I1(L3_out[11]),
        .I2(s00_axis_tdata[5]),
        .O(\s_countData[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_6 
       (.I0(L02_in[4]),
        .I1(L3_out[10]),
        .I2(s00_axis_tdata[4]),
        .O(\s_countData[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_8 
       (.I0(L00_in[7]),
        .I1(L[13]),
        .I2(s00_axis_tdata[15]),
        .O(\s_countData[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_countData[7]_i_9 
       (.I0(L00_in[6]),
        .I1(L[12]),
        .I2(s00_axis_tdata[14]),
        .O(\s_countData[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[8]_i_1 
       (.I0(L6_out__0[14]),
        .I1(L05_in[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_countData[9]_i_1 
       (.I0(L6_out__0[15]),
        .I1(L6_out__0[9]),
        .O(D[9]));
  CARRY4 \s_countData_reg[3]_i_12 
       (.CI(1'b0),
        .CO({\s_countData_reg[3]_i_12_n_0 ,\s_countData_reg[3]_i_12_n_1 ,\s_countData_reg[3]_i_12_n_2 ,\s_countData_reg[3]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({s00_axis_tdata[27:26],s00_axis_tdata[17:16]}),
        .O(L00_in[3:0]),
        .S({\s_countData[3]_i_13_n_0 ,\s_countData[3]_i_14_n_0 ,\s_countData[3]_i_15_n_0 ,\s_countData[3]_i_16_n_0 }));
  CARRY4 \s_countData_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\s_countData_reg[3]_i_2_n_0 ,\s_countData_reg[3]_i_2_n_1 ,\s_countData_reg[3]_i_2_n_2 ,\s_countData_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s00_axis_tdata[3:0]),
        .O(L05_in[3:0]),
        .S({\s_countData[3]_i_3_n_0 ,\s_countData[3]_i_4_n_0 ,\s_countData[3]_i_5_n_0 ,\s_countData[3]_i_6_n_0 }));
  CARRY4 \s_countData_reg[3]_i_7 
       (.CI(1'b0),
        .CO({\s_countData_reg[3]_i_7_n_0 ,\s_countData_reg[3]_i_7_n_1 ,\s_countData_reg[3]_i_7_n_2 ,\s_countData_reg[3]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(s00_axis_tdata[11:8]),
        .O(L02_in[3:0]),
        .S({\s_countData[3]_i_8_n_0 ,\s_countData[3]_i_9_n_0 ,\s_countData[3]_i_10_n_0 ,\s_countData[3]_i_11_n_0 }));
  CARRY4 \s_countData_reg[7]_i_12 
       (.CI(\s_countData_reg[3]_i_12_n_0 ),
        .CO({\s_countData_reg[7]_i_12_n_0 ,\s_countData_reg[7]_i_12_n_1 ,\s_countData_reg[7]_i_12_n_2 ,\s_countData_reg[7]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(s00_axis_tdata[23:20]),
        .O(L00_in[7:4]),
        .S({\s_countData[7]_i_13_n_0 ,\s_countData[7]_i_14_n_0 ,\s_countData[7]_i_15_n_0 ,\s_countData[7]_i_16_n_0 }));
  CARRY4 \s_countData_reg[7]_i_2 
       (.CI(\s_countData_reg[3]_i_2_n_0 ),
        .CO({\s_countData_reg[7]_i_2_n_0 ,\s_countData_reg[7]_i_2_n_1 ,\s_countData_reg[7]_i_2_n_2 ,\s_countData_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(s00_axis_tdata[7:4]),
        .O(L05_in[7:4]),
        .S({\s_countData[7]_i_3_n_0 ,\s_countData[7]_i_4_n_0 ,\s_countData[7]_i_5_n_0 ,\s_countData[7]_i_6_n_0 }));
  CARRY4 \s_countData_reg[7]_i_7 
       (.CI(\s_countData_reg[3]_i_7_n_0 ),
        .CO({\s_countData_reg[7]_i_7_n_0 ,\s_countData_reg[7]_i_7_n_1 ,\s_countData_reg[7]_i_7_n_2 ,\s_countData_reg[7]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(s00_axis_tdata[15:12]),
        .O(L02_in[7:4]),
        .S({\s_countData[7]_i_8_n_0 ,\s_countData[7]_i_9_n_0 ,\s_countData[7]_i_10_n_0 ,\s_countData[7]_i_11_n_0 }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JenkinsMainLoopCop_v1_0
   (m00_axis_tdata,
    s_validOut_reg,
    s00_axis_tready,
    s00_axis_aclk,
    s00_axis_tdata,
    s00_axis_tvalid,
    m00_axis_tready,
    s00_axis_aresetn);
  output [31:0]m00_axis_tdata;
  output s_validOut_reg;
  output s00_axis_tready;
  input s00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input s00_axis_tvalid;
  input m00_axis_tready;
  input s00_axis_aresetn;

  wire [31:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire s_validOut_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JenkinsMainLoopCop_v1_0_S00_AXIS JenkinsMainLoopCop_v1_0_S00_AXIS_inst
       (.m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tready(m00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s_validOut_reg_0(s_validOut_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JenkinsMainLoopCop_v1_0_S00_AXIS
   (m00_axis_tdata,
    s_validOut_reg_0,
    s00_axis_tready,
    s00_axis_aclk,
    s00_axis_tdata,
    s00_axis_tvalid,
    m00_axis_tready,
    s00_axis_aresetn);
  output [31:0]m00_axis_tdata;
  output s_validOut_reg_0;
  output s00_axis_tready;
  input s00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input s00_axis_tvalid;
  input m00_axis_tready;
  input s00_axis_aresetn;

  wire [31:19]L05_in;
  wire [31:26]L6_out;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire p_0_in;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [25:0]s_hashOut;
  wire s_validOut;
  wire s_validOut_i_1_n_0;
  wire s_validOut_reg_0;

  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_1
       (.I0(L05_in[31]),
        .I1(L05_in[21]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_2
       (.I0(L05_in[30]),
        .I1(L05_in[20]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_3
       (.I0(L05_in[29]),
        .I1(L05_in[19]),
        .O(i__carry__4_i_3_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JenkinsMainLoop p_hash
       (.D({L6_out,s_hashOut}),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0}),
        .i__carry__2_i_6_0({L05_in[31:29],L05_in[21:19]}),
        .s00_axis_tdata(s00_axis_tdata));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s00_axis_tready_INST_0
       (.I0(m00_axis_tready),
        .I1(s_validOut_reg_0),
        .O(s00_axis_tready));
  LUT1 #(
    .INIT(2'h1)) 
    \s_countData[31]_i_1 
       (.I0(s00_axis_aresetn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hA2)) 
    \s_countData[31]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(s_validOut_reg_0),
        .I2(m00_axis_tready),
        .O(s_validOut));
  FDRE \s_countData_reg[0] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[0]),
        .Q(m00_axis_tdata[0]),
        .R(p_0_in));
  FDRE \s_countData_reg[10] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[10]),
        .Q(m00_axis_tdata[10]),
        .R(p_0_in));
  FDRE \s_countData_reg[11] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[11]),
        .Q(m00_axis_tdata[11]),
        .R(p_0_in));
  FDRE \s_countData_reg[12] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[12]),
        .Q(m00_axis_tdata[12]),
        .R(p_0_in));
  FDRE \s_countData_reg[13] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[13]),
        .Q(m00_axis_tdata[13]),
        .R(p_0_in));
  FDRE \s_countData_reg[14] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[14]),
        .Q(m00_axis_tdata[14]),
        .R(p_0_in));
  FDRE \s_countData_reg[15] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[15]),
        .Q(m00_axis_tdata[15]),
        .R(p_0_in));
  FDRE \s_countData_reg[16] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[16]),
        .Q(m00_axis_tdata[16]),
        .R(p_0_in));
  FDRE \s_countData_reg[17] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[17]),
        .Q(m00_axis_tdata[17]),
        .R(p_0_in));
  FDRE \s_countData_reg[18] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[18]),
        .Q(m00_axis_tdata[18]),
        .R(p_0_in));
  FDRE \s_countData_reg[19] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[19]),
        .Q(m00_axis_tdata[19]),
        .R(p_0_in));
  FDRE \s_countData_reg[1] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[1]),
        .Q(m00_axis_tdata[1]),
        .R(p_0_in));
  FDRE \s_countData_reg[20] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[20]),
        .Q(m00_axis_tdata[20]),
        .R(p_0_in));
  FDRE \s_countData_reg[21] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[21]),
        .Q(m00_axis_tdata[21]),
        .R(p_0_in));
  FDRE \s_countData_reg[22] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[22]),
        .Q(m00_axis_tdata[22]),
        .R(p_0_in));
  FDRE \s_countData_reg[23] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[23]),
        .Q(m00_axis_tdata[23]),
        .R(p_0_in));
  FDRE \s_countData_reg[24] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[24]),
        .Q(m00_axis_tdata[24]),
        .R(p_0_in));
  FDRE \s_countData_reg[25] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[25]),
        .Q(m00_axis_tdata[25]),
        .R(p_0_in));
  FDRE \s_countData_reg[26] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(L6_out[26]),
        .Q(m00_axis_tdata[26]),
        .R(p_0_in));
  FDRE \s_countData_reg[27] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(L6_out[27]),
        .Q(m00_axis_tdata[27]),
        .R(p_0_in));
  FDRE \s_countData_reg[28] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(L6_out[28]),
        .Q(m00_axis_tdata[28]),
        .R(p_0_in));
  FDRE \s_countData_reg[29] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(L6_out[29]),
        .Q(m00_axis_tdata[29]),
        .R(p_0_in));
  FDRE \s_countData_reg[2] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[2]),
        .Q(m00_axis_tdata[2]),
        .R(p_0_in));
  FDRE \s_countData_reg[30] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(L6_out[30]),
        .Q(m00_axis_tdata[30]),
        .R(p_0_in));
  FDRE \s_countData_reg[31] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(L6_out[31]),
        .Q(m00_axis_tdata[31]),
        .R(p_0_in));
  FDRE \s_countData_reg[3] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[3]),
        .Q(m00_axis_tdata[3]),
        .R(p_0_in));
  FDRE \s_countData_reg[4] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[4]),
        .Q(m00_axis_tdata[4]),
        .R(p_0_in));
  FDRE \s_countData_reg[5] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[5]),
        .Q(m00_axis_tdata[5]),
        .R(p_0_in));
  FDRE \s_countData_reg[6] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[6]),
        .Q(m00_axis_tdata[6]),
        .R(p_0_in));
  FDRE \s_countData_reg[7] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[7]),
        .Q(m00_axis_tdata[7]),
        .R(p_0_in));
  FDRE \s_countData_reg[8] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[8]),
        .Q(m00_axis_tdata[8]),
        .R(p_0_in));
  FDRE \s_countData_reg[9] 
       (.C(s00_axis_aclk),
        .CE(s_validOut),
        .D(s_hashOut[9]),
        .Q(m00_axis_tdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF400)) 
    s_validOut_i_1
       (.I0(m00_axis_tready),
        .I1(s_validOut_reg_0),
        .I2(s00_axis_tvalid),
        .I3(s00_axis_aresetn),
        .O(s_validOut_i_1_n_0));
  FDRE s_validOut_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(s_validOut_i_1_n_0),
        .Q(s_validOut_reg_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "mb_design_JenkinsMainLoopCop_0_0,JenkinsMainLoopCop_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "JenkinsMainLoopCop_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 94000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 94000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 94000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 94000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_JenkinsMainLoopCop_v1_0 U0
       (.m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tready(m00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s_validOut_reg(m00_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
