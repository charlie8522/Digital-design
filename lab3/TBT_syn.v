/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu May  9 02:11:23 2019
/////////////////////////////////////////////////////////////


module TBT_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  ADDHXL U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  ADDHXL U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  ADDHXL U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  ADDHXL U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  ADDHXL U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  ADDHXL U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  ADDHXL U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  ADDHXL U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  ADDHXL U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  ADDHXL U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[31]), .B(A[31]), .Y(SUM[31]) );
endmodule


module TBT_DW01_cmp6_0 ( A, B, TC, LT, GT, EQ, LE, GE, NE );
  input [31:0] A;
  input [31:0] B;
  input TC;
  output LT, GT, EQ, LE, GE, NE;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104;

  CLKINVX1 U1 ( .A(B[31]), .Y(n1) );
  CLKINVX1 U2 ( .A(B[8]), .Y(n16) );
  CLKINVX1 U3 ( .A(n104), .Y(n17) );
  CLKINVX1 U4 ( .A(n44), .Y(n5) );
  CLKINVX1 U5 ( .A(A[4]), .Y(n22) );
  CLKINVX1 U6 ( .A(A[1]), .Y(n21) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n18) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n19) );
  CLKINVX1 U9 ( .A(A[7]), .Y(n24) );
  CLKINVX1 U10 ( .A(A[6]), .Y(n23) );
  CLKINVX1 U11 ( .A(B[9]), .Y(n15) );
  CLKINVX1 U12 ( .A(B[11]), .Y(n13) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n14) );
  CLKINVX1 U14 ( .A(A[17]), .Y(n27) );
  CLKINVX1 U15 ( .A(A[16]), .Y(n26) );
  CLKINVX1 U16 ( .A(A[14]), .Y(n25) );
  CLKINVX1 U17 ( .A(B[19]), .Y(n9) );
  CLKINVX1 U18 ( .A(B[18]), .Y(n10) );
  CLKINVX1 U19 ( .A(B[13]), .Y(n11) );
  CLKINVX1 U20 ( .A(B[21]), .Y(n7) );
  CLKINVX1 U21 ( .A(B[12]), .Y(n12) );
  CLKINVX1 U22 ( .A(B[20]), .Y(n8) );
  CLKINVX1 U23 ( .A(A[25]), .Y(n30) );
  CLKINVX1 U24 ( .A(A[24]), .Y(n29) );
  CLKINVX1 U25 ( .A(A[30]), .Y(n31) );
  CLKINVX1 U26 ( .A(A[22]), .Y(n28) );
  CLKINVX1 U27 ( .A(B[26]), .Y(n6) );
  CLKINVX1 U28 ( .A(B[27]), .Y(n4) );
  CLKINVX1 U29 ( .A(B[29]), .Y(n2) );
  CLKINVX1 U30 ( .A(B[28]), .Y(n3) );
  CLKINVX1 U31 ( .A(B[1]), .Y(n20) );
  NOR4X1 U32 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(EQ) );
  NAND4X1 U33 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n35) );
  OAI22XL U34 ( .A0(A[1]), .A1(n40), .B0(n40), .B1(n20), .Y(n36) );
  NOR2BX1 U35 ( .AN(A[0]), .B(B[0]), .Y(n40) );
  NAND4BBXL U36 ( .AN(n41), .BN(n42), .C(n43), .D(n44), .Y(n34) );
  NAND2BX1 U37 ( .AN(n45), .B(n46), .Y(n33) );
  NOR4BX1 U38 ( .AN(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  NAND4BX1 U39 ( .AN(n51), .B(n52), .C(n53), .D(n54), .Y(n45) );
  NAND4BBXL U40 ( .AN(n55), .BN(n56), .C(n57), .D(n58), .Y(n32) );
  NOR4BBX1 U41 ( .AN(n59), .BN(n60), .C(LT), .D(n61), .Y(n58) );
  OAI22XL U42 ( .A0(A[31]), .A1(n1), .B0(n61), .B1(n62), .Y(LT) );
  AOI32X1 U43 ( .A0(n37), .A1(n38), .A2(n63), .B0(B[30]), .B1(n31), .Y(n62) );
  OAI221XL U44 ( .A0(A[28]), .A1(n3), .B0(A[29]), .B1(n2), .C0(n64), .Y(n63)
         );
  OAI211X1 U45 ( .A0(n65), .A1(n66), .B0(n39), .C0(n43), .Y(n64) );
  NAND2X1 U46 ( .A(A[27]), .B(n4), .Y(n43) );
  NAND2X1 U47 ( .A(A[28]), .B(n3), .Y(n39) );
  OAI32X1 U48 ( .A0(n67), .A1(n41), .A2(n5), .B0(A[26]), .B1(n6), .Y(n66) );
  NAND2X1 U49 ( .A(A[26]), .B(n6), .Y(n44) );
  NOR2X1 U50 ( .A(n30), .B(B[25]), .Y(n41) );
  AOI221XL U51 ( .A0(B[25]), .A1(n30), .B0(B[24]), .B1(n29), .C0(n68), .Y(n67)
         );
  AOI211X1 U52 ( .A0(n69), .A1(n70), .B0(n51), .C0(n42), .Y(n68) );
  NOR2X1 U53 ( .A(n29), .B(B[24]), .Y(n42) );
  NOR2BX1 U54 ( .AN(A[23]), .B(B[23]), .Y(n51) );
  NAND2BX1 U55 ( .AN(A[23]), .B(B[23]), .Y(n70) );
  AOI32X1 U56 ( .A0(n54), .A1(n53), .A2(n71), .B0(B[22]), .B1(n28), .Y(n69) );
  OAI221XL U57 ( .A0(A[20]), .A1(n8), .B0(A[21]), .B1(n7), .C0(n72), .Y(n71)
         );
  OAI211X1 U58 ( .A0(n73), .A1(n74), .B0(n52), .C0(n47), .Y(n72) );
  NAND2X1 U59 ( .A(A[19]), .B(n9), .Y(n47) );
  NAND2X1 U60 ( .A(A[20]), .B(n8), .Y(n52) );
  OAI32X1 U61 ( .A0(n75), .A1(n49), .A2(n50), .B0(A[18]), .B1(n10), .Y(n74) );
  NOR2BX1 U62 ( .AN(A[18]), .B(B[18]), .Y(n50) );
  NOR2X1 U63 ( .A(n27), .B(B[17]), .Y(n49) );
  AOI221XL U64 ( .A0(B[17]), .A1(n27), .B0(B[16]), .B1(n26), .C0(n76), .Y(n75)
         );
  AOI211X1 U65 ( .A0(n77), .A1(n78), .B0(n79), .C0(n48), .Y(n76) );
  NOR2X1 U66 ( .A(n26), .B(B[16]), .Y(n48) );
  NAND2BX1 U67 ( .AN(A[15]), .B(B[15]), .Y(n78) );
  AOI32X1 U68 ( .A0(n80), .A1(n81), .A2(n82), .B0(B[14]), .B1(n25), .Y(n77) );
  OAI221XL U69 ( .A0(A[12]), .A1(n12), .B0(A[13]), .B1(n11), .C0(n83), .Y(n82)
         );
  NAND3X1 U70 ( .A(n84), .B(n85), .C(n86), .Y(n83) );
  OAI221XL U71 ( .A0(A[10]), .A1(n14), .B0(A[11]), .B1(n13), .C0(n87), .Y(n86)
         );
  OAI211X1 U72 ( .A0(n88), .A1(n89), .B0(n90), .C0(n91), .Y(n87) );
  OAI32X1 U73 ( .A0(n92), .A1(n93), .A2(n94), .B0(A[8]), .B1(n16), .Y(n89) );
  AOI221XL U74 ( .A0(B[7]), .A1(n24), .B0(B[6]), .B1(n23), .C0(n95), .Y(n92)
         );
  AOI211X1 U75 ( .A0(n96), .A1(n97), .B0(n98), .C0(n99), .Y(n95) );
  NAND2BX1 U76 ( .AN(A[5]), .B(B[5]), .Y(n97) );
  AOI32X1 U77 ( .A0(n17), .A1(n60), .A2(n100), .B0(B[4]), .B1(n22), .Y(n96) );
  OAI221XL U78 ( .A0(A[2]), .A1(n19), .B0(A[3]), .B1(n18), .C0(n101), .Y(n100)
         );
  OAI211X1 U79 ( .A0(n102), .A1(n21), .B0(n103), .C0(n59), .Y(n101) );
  AO21X1 U80 ( .A0(n21), .A1(n102), .B0(B[1]), .Y(n103) );
  NOR2BX1 U81 ( .AN(B[0]), .B(A[0]), .Y(n102) );
  NOR2X1 U82 ( .A(A[9]), .B(n15), .Y(n88) );
  NOR2X1 U83 ( .A(A[19]), .B(n9), .Y(n73) );
  NAND2X1 U84 ( .A(A[21]), .B(n7), .Y(n53) );
  NAND2BX1 U85 ( .AN(B[22]), .B(A[22]), .Y(n54) );
  NOR2X1 U86 ( .A(A[27]), .B(n4), .Y(n65) );
  OR2X1 U87 ( .A(B[30]), .B(n31), .Y(n38) );
  NAND2X1 U88 ( .A(A[29]), .B(n2), .Y(n37) );
  NOR2BX1 U89 ( .AN(A[31]), .B(B[31]), .Y(n61) );
  NAND2X1 U90 ( .A(A[3]), .B(n18), .Y(n60) );
  NAND2X1 U91 ( .A(A[2]), .B(n19), .Y(n59) );
  NOR4X1 U92 ( .A(n104), .B(n98), .C(n99), .D(n93), .Y(n57) );
  NOR2X1 U93 ( .A(n24), .B(B[7]), .Y(n93) );
  NOR2X1 U94 ( .A(n23), .B(B[6]), .Y(n99) );
  NOR2BX1 U95 ( .AN(A[5]), .B(B[5]), .Y(n98) );
  NOR2X1 U96 ( .A(n22), .B(B[4]), .Y(n104) );
  NAND4BX1 U97 ( .AN(n94), .B(n91), .C(n90), .D(n85), .Y(n56) );
  NAND2X1 U98 ( .A(A[11]), .B(n13), .Y(n85) );
  NAND2X1 U99 ( .A(A[10]), .B(n14), .Y(n90) );
  NAND2X1 U100 ( .A(A[9]), .B(n15), .Y(n91) );
  NOR2BX1 U101 ( .AN(A[8]), .B(B[8]), .Y(n94) );
  NAND4BX1 U102 ( .AN(n79), .B(n84), .C(n81), .D(n80), .Y(n55) );
  NAND2BX1 U103 ( .AN(B[14]), .B(A[14]), .Y(n80) );
  NAND2X1 U104 ( .A(A[13]), .B(n11), .Y(n81) );
  NAND2X1 U105 ( .A(A[12]), .B(n12), .Y(n84) );
  NOR2BX1 U106 ( .AN(A[15]), .B(B[15]), .Y(n79) );
endmodule


module TBT ( clk, rst, start, data, en, addr, fin, result );
  input [4:0] data;
  output [4:0] addr;
  output [4:0] result;
  input clk, rst, start;
  output en, fin;
  wire   state, next_state, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N175, N176, N178,
         N179, N180, N181, N182, N183, N201, N202, N204, N205, N206, N207,
         N208, N209, N227, N228, N230, N231, N232, N233, N234, N235, N241,
         N253, N254, N256, N257, N258, N259, N260, N261, N285, N286, N287,
         N288, N289, N290, N291, N292, N293, N294, N295, N296, N297, N298,
         N299, N300, N301, N302, N303, N304, N305, N306, N307, N308, N309,
         N310, N311, N312, N313, N314, N315, N316, N317, N318, N319, N320,
         N321, N322, N323, N324, N325, N326, N327, N328, N329, N330, N331,
         N332, N333, N334, N335, N336, N337, N338, N339, N340, N341, N342,
         N343, N344, N345, N346, N347, N348, N349, N350, N351, N352, N353,
         N354, N355, N356, N357, N358, N359, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, N404, N403, N401,
         N400, N399, N398, N396, N395, N394, N393, N391, N390, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140;
  wire   [31:5] num;
  wire   [31:0] length;
  wire   [4:0] ans;
  wire   [3:0] current;
  wire   [31:0] next_num;
  wire   [31:0] next_length;
  wire   [4:0] next_ans;
  wire   [3:0] next;
  wire   [4:1] \add_79/carry ;
  wire   [4:1] \add_89_aco/carry ;
  wire   [4:1] \add_84_aco/carry ;
  wire   [4:1] \add_94_aco/carry ;
  assign en = 1'b1;

  TBT_DW01_inc_0 add_62 ( .A({num, addr}), .SUM({N108, N107, N106, N105, N104, 
        N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, 
        N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77})
         );
  TBT_DW01_cmp6_0 r339 ( .A({num, addr}), .B(length), .TC(1'b0), .LT(N241), 
        .EQ(N359) );
  DFFRX1 state_reg ( .D(next_state), .CK(clk), .RN(n115), .Q(state), .QN(n106)
         );
  DFFRX1 \ans_reg[3]  ( .D(next_ans[3]), .CK(clk), .RN(n118), .Q(ans[3]), .QN(
        n113) );
  DFFRX1 \ans_reg[4]  ( .D(next_ans[4]), .CK(clk), .RN(n118), .Q(ans[4]), .QN(
        n110) );
  DFFRX1 \ans_reg[0]  ( .D(next_ans[0]), .CK(clk), .RN(n118), .Q(ans[0]), .QN(
        n109) );
  DFFRX1 \ans_reg[1]  ( .D(next_ans[1]), .CK(clk), .RN(n118), .Q(ans[1]), .QN(
        n111) );
  DFFRX1 \ans_reg[2]  ( .D(next_ans[2]), .CK(clk), .RN(n118), .Q(ans[2]), .QN(
        n112) );
  DFFRX1 \num_reg[31]  ( .D(next_num[31]), .CK(clk), .RN(n120), .Q(num[31]) );
  DFFRX1 \length_reg[30]  ( .D(next_length[30]), .CK(clk), .RN(n115), .Q(
        length[30]) );
  DFFRX1 \length_reg[31]  ( .D(next_length[31]), .CK(clk), .RN(n115), .Q(
        length[31]) );
  DFFRX1 \current_reg[1]  ( .D(next[1]), .CK(clk), .RN(n117), .Q(current[1]), 
        .QN(n108) );
  DFFRX1 \current_reg[3]  ( .D(next[3]), .CK(clk), .RN(n117), .Q(current[3]), 
        .QN(n107) );
  DFFSX1 \current_reg[2]  ( .D(next[2]), .CK(clk), .SN(n124), .Q(current[2]), 
        .QN(n104) );
  DFFRX1 \length_reg[22]  ( .D(next_length[22]), .CK(clk), .RN(n115), .Q(
        length[22]) );
  DFFRX1 \length_reg[25]  ( .D(next_length[25]), .CK(clk), .RN(n115), .Q(
        length[25]) );
  DFFRX1 \length_reg[24]  ( .D(next_length[24]), .CK(clk), .RN(n115), .Q(
        length[24]) );
  DFFRX1 \length_reg[23]  ( .D(next_length[23]), .CK(clk), .RN(n115), .Q(
        length[23]) );
  DFFRX1 \num_reg[23]  ( .D(next_num[23]), .CK(clk), .RN(n119), .Q(num[23]) );
  DFFRX1 \length_reg[29]  ( .D(next_length[29]), .CK(clk), .RN(n115), .Q(
        length[29]) );
  DFFRX1 \length_reg[28]  ( .D(next_length[28]), .CK(clk), .RN(n115), .Q(
        length[28]) );
  DFFRX1 \length_reg[27]  ( .D(next_length[27]), .CK(clk), .RN(n115), .Q(
        length[27]) );
  DFFRX1 \length_reg[26]  ( .D(next_length[26]), .CK(clk), .RN(n115), .Q(
        length[26]) );
  DFFRX1 \num_reg[28]  ( .D(next_num[28]), .CK(clk), .RN(n120), .Q(num[28]) );
  DFFRX1 \num_reg[29]  ( .D(next_num[29]), .CK(clk), .RN(n120), .Q(num[29]) );
  DFFRX1 \num_reg[27]  ( .D(next_num[27]), .CK(clk), .RN(n120), .Q(num[27]) );
  DFFRX1 \num_reg[26]  ( .D(next_num[26]), .CK(clk), .RN(n120), .Q(num[26]) );
  DFFRX1 \num_reg[24]  ( .D(next_num[24]), .CK(clk), .RN(n120), .Q(num[24]) );
  DFFRX1 \num_reg[25]  ( .D(next_num[25]), .CK(clk), .RN(n120), .Q(num[25]) );
  DFFRX1 \num_reg[30]  ( .D(next_num[30]), .CK(clk), .RN(n120), .Q(num[30]) );
  DFFRX1 \num_reg[22]  ( .D(next_num[22]), .CK(clk), .RN(n119), .Q(num[22]) );
  DFFRX1 \length_reg[14]  ( .D(next_length[14]), .CK(clk), .RN(n116), .Q(
        length[14]) );
  DFFRX1 \length_reg[17]  ( .D(next_length[17]), .CK(clk), .RN(n116), .Q(
        length[17]) );
  DFFRX1 \length_reg[16]  ( .D(next_length[16]), .CK(clk), .RN(n116), .Q(
        length[16]) );
  DFFRX1 \length_reg[15]  ( .D(next_length[15]), .CK(clk), .RN(n116), .Q(
        length[15]) );
  DFFRX1 \num_reg[15]  ( .D(next_num[15]), .CK(clk), .RN(n119), .Q(num[15]) );
  DFFRX1 \length_reg[21]  ( .D(next_length[21]), .CK(clk), .RN(n115), .Q(
        length[21]) );
  DFFRX1 \length_reg[20]  ( .D(next_length[20]), .CK(clk), .RN(n116), .Q(
        length[20]) );
  DFFRX1 \length_reg[19]  ( .D(next_length[19]), .CK(clk), .RN(n116), .Q(
        length[19]) );
  DFFRX1 \length_reg[13]  ( .D(next_length[13]), .CK(clk), .RN(n116), .Q(
        length[13]) );
  DFFRX1 \length_reg[12]  ( .D(next_length[12]), .CK(clk), .RN(n116), .Q(
        length[12]) );
  DFFRX1 \num_reg[18]  ( .D(next_num[18]), .CK(clk), .RN(n119), .Q(num[18]) );
  DFFRX1 \num_reg[20]  ( .D(next_num[20]), .CK(clk), .RN(n119), .Q(num[20]) );
  DFFRX1 \num_reg[21]  ( .D(next_num[21]), .CK(clk), .RN(n119), .Q(num[21]) );
  DFFRX1 \num_reg[19]  ( .D(next_num[19]), .CK(clk), .RN(n119), .Q(num[19]) );
  DFFRX1 \length_reg[18]  ( .D(next_length[18]), .CK(clk), .RN(n116), .Q(
        length[18]) );
  DFFRX1 \num_reg[16]  ( .D(next_num[16]), .CK(clk), .RN(n119), .Q(num[16]) );
  DFFRX1 \num_reg[17]  ( .D(next_num[17]), .CK(clk), .RN(n119), .Q(num[17]) );
  DFFRX1 \num_reg[14]  ( .D(next_num[14]), .CK(clk), .RN(n119), .Q(num[14]) );
  DFFRX1 \length_reg[7]  ( .D(next_length[7]), .CK(clk), .RN(n117), .Q(
        length[7]) );
  DFFRX1 \length_reg[6]  ( .D(next_length[6]), .CK(clk), .RN(n117), .Q(
        length[6]) );
  DFFRX1 \length_reg[5]  ( .D(next_length[5]), .CK(clk), .RN(n117), .Q(
        length[5]) );
  DFFRX1 \num_reg[5]  ( .D(next_num[5]), .CK(clk), .RN(n118), .Q(num[5]) );
  DFFRX1 \length_reg[11]  ( .D(next_length[11]), .CK(clk), .RN(n116), .Q(
        length[11]) );
  DFFRX1 \length_reg[10]  ( .D(next_length[10]), .CK(clk), .RN(n116), .Q(
        length[10]) );
  DFFRX1 \length_reg[9]  ( .D(next_length[9]), .CK(clk), .RN(n116), .Q(
        length[9]) );
  DFFRX1 \num_reg[8]  ( .D(next_num[8]), .CK(clk), .RN(n118), .Q(num[8]) );
  DFFRX1 \num_reg[10]  ( .D(next_num[10]), .CK(clk), .RN(n118), .Q(num[10]) );
  DFFRX1 \num_reg[12]  ( .D(next_num[12]), .CK(clk), .RN(n119), .Q(num[12]) );
  DFFRX1 \num_reg[11]  ( .D(next_num[11]), .CK(clk), .RN(n118), .Q(num[11]) );
  DFFRX1 \num_reg[13]  ( .D(next_num[13]), .CK(clk), .RN(n119), .Q(num[13]) );
  DFFRX1 \num_reg[9]  ( .D(next_num[9]), .CK(clk), .RN(n118), .Q(num[9]) );
  DFFRX1 \length_reg[8]  ( .D(next_length[8]), .CK(clk), .RN(n117), .Q(
        length[8]) );
  DFFRX1 \num_reg[6]  ( .D(next_num[6]), .CK(clk), .RN(n118), .Q(num[6]) );
  DFFRX1 \num_reg[7]  ( .D(next_num[7]), .CK(clk), .RN(n118), .Q(num[7]) );
  DFFRX1 \length_reg[0]  ( .D(next_length[0]), .CK(clk), .RN(n117), .Q(
        length[0]) );
  DFFRX1 \length_reg[4]  ( .D(next_length[4]), .CK(clk), .RN(n117), .Q(
        length[4]) );
  DFFRX1 \length_reg[2]  ( .D(next_length[2]), .CK(clk), .RN(n117), .Q(
        length[2]) );
  DFFRX1 \length_reg[3]  ( .D(next_length[3]), .CK(clk), .RN(n117), .Q(
        length[3]) );
  DFFRX1 \length_reg[1]  ( .D(next_length[1]), .CK(clk), .RN(n117), .Q(
        length[1]) );
  DFFSX1 \num_reg[2]  ( .D(next_num[2]), .CK(clk), .SN(n120), .Q(addr[2]) );
  DFFSX1 \num_reg[3]  ( .D(next_num[3]), .CK(clk), .SN(n120), .Q(addr[3]) );
  DFFSX1 \num_reg[0]  ( .D(next_num[0]), .CK(clk), .SN(n120), .Q(addr[0]) );
  DFFSX1 \num_reg[4]  ( .D(next_num[4]), .CK(clk), .SN(n120), .Q(addr[4]) );
  DFFSX1 \num_reg[1]  ( .D(next_num[1]), .CK(clk), .SN(n120), .Q(addr[1]) );
  DFFQX1 next_state_reg ( .D(N285), .CK(clk), .Q(next_state) );
  DFFQX1 \next_length_reg[31]  ( .D(N349), .CK(clk), .Q(next_length[31]) );
  DFFQX1 \next_length_reg[30]  ( .D(N348), .CK(clk), .Q(next_length[30]) );
  DFFQX1 \next_length_reg[29]  ( .D(N347), .CK(clk), .Q(next_length[29]) );
  DFFQX1 \next_length_reg[28]  ( .D(N346), .CK(clk), .Q(next_length[28]) );
  DFFQX1 \next_length_reg[27]  ( .D(N345), .CK(clk), .Q(next_length[27]) );
  DFFQX1 \next_length_reg[26]  ( .D(N344), .CK(clk), .Q(next_length[26]) );
  DFFQX1 \next_length_reg[25]  ( .D(N343), .CK(clk), .Q(next_length[25]) );
  DFFQX1 \next_length_reg[24]  ( .D(N342), .CK(clk), .Q(next_length[24]) );
  DFFQX1 \next_length_reg[23]  ( .D(N341), .CK(clk), .Q(next_length[23]) );
  DFFQX1 \next_length_reg[22]  ( .D(N340), .CK(clk), .Q(next_length[22]) );
  DFFQX1 \next_length_reg[21]  ( .D(N339), .CK(clk), .Q(next_length[21]) );
  DFFQX1 \next_length_reg[20]  ( .D(N338), .CK(clk), .Q(next_length[20]) );
  DFFQX1 \next_length_reg[19]  ( .D(N337), .CK(clk), .Q(next_length[19]) );
  DFFQX1 \next_length_reg[18]  ( .D(N336), .CK(clk), .Q(next_length[18]) );
  DFFQX1 \next_length_reg[17]  ( .D(N335), .CK(clk), .Q(next_length[17]) );
  DFFQX1 \next_length_reg[16]  ( .D(N334), .CK(clk), .Q(next_length[16]) );
  DFFQX1 \next_length_reg[15]  ( .D(N333), .CK(clk), .Q(next_length[15]) );
  DFFQX1 \next_length_reg[14]  ( .D(N332), .CK(clk), .Q(next_length[14]) );
  DFFQX1 \next_length_reg[13]  ( .D(N331), .CK(clk), .Q(next_length[13]) );
  DFFQX1 \next_length_reg[12]  ( .D(N330), .CK(clk), .Q(next_length[12]) );
  DFFQX1 \next_length_reg[11]  ( .D(N329), .CK(clk), .Q(next_length[11]) );
  DFFQX1 \next_length_reg[10]  ( .D(N328), .CK(clk), .Q(next_length[10]) );
  DFFQX1 \next_length_reg[9]  ( .D(N327), .CK(clk), .Q(next_length[9]) );
  DFFQX1 \next_length_reg[8]  ( .D(N326), .CK(clk), .Q(next_length[8]) );
  DFFQX1 \next_length_reg[7]  ( .D(N325), .CK(clk), .Q(next_length[7]) );
  DFFQX1 \next_length_reg[6]  ( .D(N324), .CK(clk), .Q(next_length[6]) );
  DFFQX1 \next_length_reg[5]  ( .D(N323), .CK(clk), .Q(next_length[5]) );
  DFFQX1 \next_length_reg[4]  ( .D(N322), .CK(clk), .Q(next_length[4]) );
  DFFQX1 \next_length_reg[3]  ( .D(N321), .CK(clk), .Q(next_length[3]) );
  DFFQX1 \next_length_reg[2]  ( .D(N320), .CK(clk), .Q(next_length[2]) );
  DFFQX1 \next_length_reg[1]  ( .D(N319), .CK(clk), .Q(next_length[1]) );
  DFFQX1 \next_length_reg[0]  ( .D(N318), .CK(clk), .Q(next_length[0]) );
  DFFQX1 \next_reg[1]  ( .D(N351), .CK(clk), .Q(next[1]) );
  DFFQX1 \next_reg[3]  ( .D(N353), .CK(clk), .Q(next[3]) );
  DFFQX1 \next_ans_reg[0]  ( .D(N354), .CK(clk), .Q(next_ans[0]) );
  DFFQX1 \next_ans_reg[4]  ( .D(N358), .CK(clk), .Q(next_ans[4]) );
  DFFQX1 \next_num_reg[31]  ( .D(N317), .CK(clk), .Q(next_num[31]) );
  DFFQX1 \next_reg[2]  ( .D(N352), .CK(clk), .Q(next[2]) );
  DFFQX1 \next_num_reg[0]  ( .D(N286), .CK(clk), .Q(next_num[0]) );
  DFFQX1 \next_reg[0]  ( .D(N350), .CK(clk), .Q(next[0]) );
  DFFQX1 \next_ans_reg[1]  ( .D(N355), .CK(clk), .Q(next_ans[1]) );
  DFFQX1 \next_ans_reg[2]  ( .D(N356), .CK(clk), .Q(next_ans[2]) );
  DFFQX1 \next_ans_reg[3]  ( .D(N357), .CK(clk), .Q(next_ans[3]) );
  DFFQX1 \next_num_reg[5]  ( .D(N291), .CK(clk), .Q(next_num[5]) );
  DFFQX1 \next_num_reg[6]  ( .D(N292), .CK(clk), .Q(next_num[6]) );
  DFFQX1 \next_num_reg[7]  ( .D(N293), .CK(clk), .Q(next_num[7]) );
  DFFQX1 \next_num_reg[8]  ( .D(N294), .CK(clk), .Q(next_num[8]) );
  DFFQX1 \next_num_reg[9]  ( .D(N295), .CK(clk), .Q(next_num[9]) );
  DFFQX1 \next_num_reg[10]  ( .D(N296), .CK(clk), .Q(next_num[10]) );
  DFFQX1 \next_num_reg[11]  ( .D(N297), .CK(clk), .Q(next_num[11]) );
  DFFQX1 \next_num_reg[12]  ( .D(N298), .CK(clk), .Q(next_num[12]) );
  DFFQX1 \next_num_reg[13]  ( .D(N299), .CK(clk), .Q(next_num[13]) );
  DFFQX1 \next_num_reg[14]  ( .D(N300), .CK(clk), .Q(next_num[14]) );
  DFFQX1 \next_num_reg[15]  ( .D(N301), .CK(clk), .Q(next_num[15]) );
  DFFQX1 \next_num_reg[16]  ( .D(N302), .CK(clk), .Q(next_num[16]) );
  DFFQX1 \next_num_reg[17]  ( .D(N303), .CK(clk), .Q(next_num[17]) );
  DFFQX1 \next_num_reg[18]  ( .D(N304), .CK(clk), .Q(next_num[18]) );
  DFFQX1 \next_num_reg[19]  ( .D(N305), .CK(clk), .Q(next_num[19]) );
  DFFQX1 \next_num_reg[20]  ( .D(N306), .CK(clk), .Q(next_num[20]) );
  DFFQX1 \next_num_reg[21]  ( .D(N307), .CK(clk), .Q(next_num[21]) );
  DFFQX1 \next_num_reg[22]  ( .D(N308), .CK(clk), .Q(next_num[22]) );
  DFFQX1 \next_num_reg[23]  ( .D(N309), .CK(clk), .Q(next_num[23]) );
  DFFQX1 \next_num_reg[24]  ( .D(N310), .CK(clk), .Q(next_num[24]) );
  DFFQX1 \next_num_reg[25]  ( .D(N311), .CK(clk), .Q(next_num[25]) );
  DFFQX1 \next_num_reg[26]  ( .D(N312), .CK(clk), .Q(next_num[26]) );
  DFFQX1 \next_num_reg[27]  ( .D(N313), .CK(clk), .Q(next_num[27]) );
  DFFQX1 \next_num_reg[28]  ( .D(N314), .CK(clk), .Q(next_num[28]) );
  DFFQX1 \next_num_reg[29]  ( .D(N315), .CK(clk), .Q(next_num[29]) );
  DFFQX1 \next_num_reg[30]  ( .D(N316), .CK(clk), .Q(next_num[30]) );
  DFFQX1 \next_num_reg[1]  ( .D(N287), .CK(clk), .Q(next_num[1]) );
  DFFQX1 \next_num_reg[2]  ( .D(N288), .CK(clk), .Q(next_num[2]) );
  DFFQX1 \next_num_reg[3]  ( .D(N289), .CK(clk), .Q(next_num[3]) );
  DFFQX1 \next_num_reg[4]  ( .D(N290), .CK(clk), .Q(next_num[4]) );
  DFFRX1 \current_reg[0]  ( .D(next[0]), .CK(clk), .RN(n117), .Q(current[0]), 
        .QN(n105) );
  NOR2X1 U181 ( .A(n105), .B(current[1]), .Y(n88) );
  NOR2X1 U182 ( .A(current[2]), .B(current[3]), .Y(n95) );
  NAND2X1 U183 ( .A(start), .B(N359), .Y(n46) );
  CLKINVX1 U184 ( .A(rst), .Y(n124) );
  NAND3X1 U185 ( .A(n71), .B(n89), .C(n90), .Y(N256) );
  AND2X2 U186 ( .A(n114), .B(N204), .Y(N398) );
  AND2X2 U187 ( .A(n114), .B(N230), .Y(N403) );
  AND2X2 U188 ( .A(n114), .B(N256), .Y(N393) );
  NAND3X1 U189 ( .A(n93), .B(n101), .C(n90), .Y(N201) );
  NAND2X1 U190 ( .A(n137), .B(n140), .Y(n93) );
  AND2X2 U191 ( .A(n92), .B(n69), .Y(n90) );
  CLKINVX1 U192 ( .A(n78), .Y(n137) );
  NAND2X1 U193 ( .A(n139), .B(n140), .Y(n71) );
  NAND2X1 U194 ( .A(n98), .B(n139), .Y(n89) );
  CLKINVX1 U195 ( .A(n85), .Y(n138) );
  NOR2X1 U196 ( .A(n49), .B(n81), .Y(n47) );
  CLKBUFX3 U197 ( .A(n125), .Y(n121) );
  CLKBUFX3 U198 ( .A(n125), .Y(n122) );
  CLKBUFX3 U199 ( .A(n125), .Y(n123) );
  NOR4X1 U200 ( .A(n131), .B(n130), .C(n133), .D(n129), .Y(n81) );
  OAI22XL U201 ( .A0(n47), .A1(n113), .B0(n51), .B1(n49), .Y(N357) );
  AOI221XL U202 ( .A0(N260), .A1(n131), .B0(N234), .B1(n130), .C0(n52), .Y(n51) );
  AO22X1 U203 ( .A0(N182), .A1(n129), .B0(N208), .B1(n133), .Y(n52) );
  OAI22XL U204 ( .A0(n47), .A1(n112), .B0(n53), .B1(n49), .Y(N356) );
  AOI221XL U205 ( .A0(N259), .A1(n131), .B0(N233), .B1(n130), .C0(n54), .Y(n53) );
  AO22X1 U206 ( .A0(N181), .A1(n129), .B0(N207), .B1(n133), .Y(n54) );
  OAI211X1 U207 ( .A0(n78), .A1(n96), .B0(n92), .C0(n136), .Y(N227) );
  CLKBUFX3 U208 ( .A(N241), .Y(n114) );
  OAI22XL U209 ( .A0(n47), .A1(n111), .B0(n55), .B1(n49), .Y(N355) );
  AOI221XL U210 ( .A0(N258), .A1(n131), .B0(N232), .B1(n130), .C0(n56), .Y(n55) );
  AO22X1 U211 ( .A0(N180), .A1(n129), .B0(N206), .B1(n133), .Y(n56) );
  AND2X2 U212 ( .A(N107), .B(state), .Y(N316) );
  AND2X2 U213 ( .A(N102), .B(state), .Y(N311) );
  AND2X2 U214 ( .A(N101), .B(state), .Y(N310) );
  AND2X2 U215 ( .A(N103), .B(state), .Y(N312) );
  AND2X2 U216 ( .A(N104), .B(state), .Y(N313) );
  AND2X2 U217 ( .A(N106), .B(state), .Y(N315) );
  AND2X2 U218 ( .A(N105), .B(state), .Y(N314) );
  OAI211X1 U219 ( .A0(n77), .A1(n96), .B0(n97), .C0(n136), .Y(N178) );
  NOR2X1 U220 ( .A(n104), .B(n107), .Y(n98) );
  NAND2BX1 U221 ( .AN(n96), .B(n88), .Y(n94) );
  NAND4X1 U222 ( .A(n99), .B(n69), .C(n100), .D(n101), .Y(N204) );
  NAND2X1 U223 ( .A(n88), .B(n98), .Y(n99) );
  NAND4X1 U224 ( .A(n91), .B(n92), .C(n93), .D(n94), .Y(N230) );
  NAND2X1 U225 ( .A(n88), .B(n95), .Y(n91) );
  NAND2X1 U226 ( .A(n105), .B(n108), .Y(n78) );
  NAND2X1 U227 ( .A(n137), .B(n95), .Y(n69) );
  NAND2X1 U228 ( .A(n102), .B(n98), .Y(n101) );
  NAND2X1 U229 ( .A(n102), .B(n95), .Y(n92) );
  NAND2X1 U230 ( .A(n88), .B(n140), .Y(n100) );
  CLKINVX1 U231 ( .A(n77), .Y(n139) );
  CLKINVX1 U232 ( .A(n64), .Y(n140) );
  NAND2X1 U233 ( .A(n95), .B(n139), .Y(n97) );
  CLKINVX1 U234 ( .A(n103), .Y(n136) );
  OAI2BB1X1 U235 ( .A0N(n140), .A1N(n102), .B0(n93), .Y(n103) );
  AND2X2 U236 ( .A(N99), .B(state), .Y(N308) );
  AND2X2 U237 ( .A(N94), .B(state), .Y(N303) );
  AND2X2 U238 ( .A(N96), .B(state), .Y(N305) );
  AND2X2 U239 ( .A(N98), .B(state), .Y(N307) );
  AND2X2 U240 ( .A(N97), .B(state), .Y(N306) );
  AND2X2 U241 ( .A(N95), .B(state), .Y(N304) );
  AND2X2 U242 ( .A(N100), .B(state), .Y(N309) );
  NAND2X1 U243 ( .A(n77), .B(n78), .Y(n85) );
  OAI221XL U244 ( .A0(n139), .A1(n70), .B0(n79), .B1(n77), .C0(n80), .Y(n72)
         );
  AOI221XL U245 ( .A0(n65), .A1(n133), .B0(n130), .B1(n78), .C0(n81), .Y(n80)
         );
  AND2X2 U246 ( .A(N91), .B(state), .Y(N300) );
  AND2X2 U247 ( .A(N93), .B(state), .Y(N302) );
  AND2X2 U248 ( .A(N90), .B(state), .Y(N299) );
  AND2X2 U249 ( .A(N89), .B(state), .Y(N298) );
  AND2X2 U250 ( .A(N88), .B(state), .Y(N297) );
  AND2X2 U251 ( .A(N87), .B(state), .Y(N296) );
  AND2X2 U252 ( .A(N92), .B(state), .Y(N301) );
  NAND2X1 U253 ( .A(state), .B(n59), .Y(n49) );
  NAND3X1 U254 ( .A(n77), .B(n104), .C(n129), .Y(n67) );
  OAI2BB2XL U255 ( .B0(n105), .B1(n86), .A0N(n105), .A1N(n47), .Y(N350) );
  OAI21XL U256 ( .A0(n81), .A1(n127), .B0(state), .Y(n86) );
  CLKINVX1 U257 ( .A(n87), .Y(n125) );
  OAI2BB1X1 U258 ( .A0N(N81), .A1N(state), .B0(N285), .Y(N290) );
  OAI2BB1X1 U259 ( .A0N(N80), .A1N(state), .B0(N285), .Y(N289) );
  AND2X2 U260 ( .A(N84), .B(state), .Y(N293) );
  AND2X2 U261 ( .A(N83), .B(state), .Y(N292) );
  AND2X2 U262 ( .A(N86), .B(state), .Y(N295) );
  AND2X2 U263 ( .A(N85), .B(state), .Y(N294) );
  AND2X2 U264 ( .A(N82), .B(state), .Y(N291) );
  OAI2BB1X1 U265 ( .A0N(N79), .A1N(state), .B0(N285), .Y(N288) );
  OAI2BB1X1 U266 ( .A0N(N78), .A1N(state), .B0(N285), .Y(N287) );
  CLKINVX1 U267 ( .A(n79), .Y(n129) );
  CLKINVX1 U268 ( .A(n66), .Y(n133) );
  CLKINVX1 U269 ( .A(n70), .Y(n131) );
  CLKINVX1 U270 ( .A(n68), .Y(n130) );
  NOR2X1 U271 ( .A(n46), .B(n109), .Y(result[0]) );
  NOR2X1 U272 ( .A(n46), .B(n111), .Y(result[1]) );
  NOR2X1 U273 ( .A(n46), .B(n112), .Y(result[2]) );
  NOR2X1 U274 ( .A(n46), .B(n113), .Y(result[3]) );
  NOR2X1 U275 ( .A(n46), .B(n110), .Y(result[4]) );
  CLKBUFX3 U276 ( .A(n124), .Y(n120) );
  CLKBUFX3 U277 ( .A(n124), .Y(n119) );
  CLKBUFX3 U278 ( .A(n124), .Y(n118) );
  CLKBUFX3 U279 ( .A(n124), .Y(n117) );
  CLKBUFX3 U280 ( .A(n124), .Y(n116) );
  CLKBUFX3 U281 ( .A(n124), .Y(n115) );
  CLKINVX1 U282 ( .A(n46), .Y(fin) );
  CLKINVX1 U283 ( .A(n59), .Y(n127) );
  OAI22XL U284 ( .A0(n47), .A1(n110), .B0(n48), .B1(n49), .Y(N358) );
  AOI221XL U285 ( .A0(N261), .A1(n131), .B0(N235), .B1(n130), .C0(n50), .Y(n48) );
  XOR3X1 U286 ( .A(ans[4]), .B(N394), .C(\add_94_aco/carry [4]), .Y(N261) );
  XOR3X1 U287 ( .A(ans[4]), .B(N404), .C(\add_89_aco/carry [4]), .Y(N235) );
  ADDFXL U288 ( .A(ans[1]), .B(N396), .CI(\add_84_aco/carry [1]), .CO(
        \add_84_aco/carry [2]), .S(N206) );
  NAND3BX1 U289 ( .AN(N204), .B(n97), .C(n89), .Y(N202) );
  ADDFXL U290 ( .A(ans[1]), .B(N401), .CI(\add_89_aco/carry [1]), .CO(
        \add_89_aco/carry [2]), .S(N232) );
  AO21X1 U291 ( .A0(n107), .A1(n139), .B0(N230), .Y(N228) );
  ADDFXL U292 ( .A(ans[1]), .B(N391), .CI(\add_94_aco/carry [1]), .CO(
        \add_94_aco/carry [2]), .S(N258) );
  AO21X1 U293 ( .A0(n107), .A1(n88), .B0(N256), .Y(N254) );
  OAI21XL U294 ( .A0(current[0]), .A1(n64), .B0(n90), .Y(N253) );
  ADDFXL U295 ( .A(ans[2]), .B(N398), .CI(\add_84_aco/carry [2]), .CO(
        \add_84_aco/carry [3]), .S(N207) );
  ADDFXL U296 ( .A(ans[3]), .B(N398), .CI(\add_84_aco/carry [3]), .CO(
        \add_84_aco/carry [4]), .S(N208) );
  ADDFXL U297 ( .A(ans[2]), .B(N403), .CI(\add_89_aco/carry [2]), .CO(
        \add_89_aco/carry [3]), .S(N233) );
  ADDFXL U298 ( .A(ans[2]), .B(N393), .CI(\add_94_aco/carry [2]), .CO(
        \add_94_aco/carry [3]), .S(N259) );
  ADDFXL U299 ( .A(ans[3]), .B(N403), .CI(\add_89_aco/carry [3]), .CO(
        \add_89_aco/carry [4]), .S(N234) );
  ADDFXL U300 ( .A(ans[3]), .B(N393), .CI(\add_94_aco/carry [3]), .CO(
        \add_94_aco/carry [4]), .S(N260) );
  AO22X1 U301 ( .A0(N183), .A1(n129), .B0(N209), .B1(n133), .Y(n50) );
  XOR3X1 U302 ( .A(ans[4]), .B(N178), .C(\add_79/carry [4]), .Y(N183) );
  XOR3X1 U303 ( .A(ans[4]), .B(N399), .C(\add_84_aco/carry [4]), .Y(N209) );
  OAI22XL U304 ( .A0(n47), .A1(n109), .B0(n57), .B1(n49), .Y(N354) );
  AOI221XL U305 ( .A0(N257), .A1(n131), .B0(N231), .B1(n130), .C0(n58), .Y(n57) );
  AO22X1 U306 ( .A0(N179), .A1(n129), .B0(N205), .B1(n133), .Y(n58) );
  AND2X2 U307 ( .A(N108), .B(state), .Y(N317) );
  NAND2X1 U308 ( .A(current[1]), .B(current[0]), .Y(n77) );
  NOR2X1 U309 ( .A(n108), .B(current[0]), .Y(n102) );
  NAND2X1 U310 ( .A(current[2]), .B(n107), .Y(n64) );
  NAND2X1 U311 ( .A(current[3]), .B(n104), .Y(n96) );
  ADDFXL U312 ( .A(ans[1]), .B(N176), .CI(\add_79/carry [1]), .CO(
        \add_79/carry [2]), .S(N180) );
  NAND3BX1 U313 ( .AN(N178), .B(n100), .C(n94), .Y(N176) );
  ADDFXL U314 ( .A(ans[2]), .B(N178), .CI(\add_79/carry [2]), .CO(
        \add_79/carry [3]), .S(N181) );
  ADDFXL U315 ( .A(ans[3]), .B(N178), .CI(\add_79/carry [3]), .CO(
        \add_79/carry [4]), .S(N182) );
  OAI21XL U316 ( .A0(current[0]), .A1(n96), .B0(n136), .Y(N175) );
  NOR2X1 U317 ( .A(current[0]), .B(n138), .Y(n65) );
  NAND3BX1 U318 ( .AN(n72), .B(n73), .C(n74), .Y(n61) );
  OAI21XL U319 ( .A0(n130), .A1(n129), .B0(current[2]), .Y(n73) );
  OAI21XL U320 ( .A0(n131), .A1(n133), .B0(n104), .Y(n74) );
  OAI32X1 U321 ( .A0(n107), .A1(n59), .A2(n106), .B0(n60), .B1(n49), .Y(N353)
         );
  AOI211X1 U322 ( .A0(current[3]), .A1(n61), .B0(n62), .C0(n63), .Y(n60) );
  OAI22XL U323 ( .A0(n68), .A1(n69), .B0(n70), .B1(n71), .Y(n62) );
  OAI32X1 U324 ( .A0(n64), .A1(n65), .A2(n66), .B0(current[3]), .B1(n67), .Y(
        n63) );
  OAI221XL U325 ( .A0(n59), .A1(n104), .B0(n75), .B1(n127), .C0(state), .Y(
        N352) );
  AOI221XL U326 ( .A0(current[2]), .A1(n72), .B0(n76), .B1(n104), .C0(n128), 
        .Y(n75) );
  CLKINVX1 U327 ( .A(n67), .Y(n128) );
  OAI222XL U328 ( .A0(n65), .A1(n66), .B0(n68), .B1(n78), .C0(n70), .C1(n77), 
        .Y(n76) );
  NAND2X1 U329 ( .A(start), .B(n106), .Y(n87) );
  NOR2BX1 U330 ( .AN(length[8]), .B(n121), .Y(N326) );
  NOR2BX1 U331 ( .AN(length[18]), .B(n122), .Y(N336) );
  NOR2BX1 U332 ( .AN(length[31]), .B(n122), .Y(N349) );
  NOR2BX1 U333 ( .AN(length[9]), .B(n121), .Y(N327) );
  NOR2BX1 U334 ( .AN(length[10]), .B(n121), .Y(N328) );
  NOR2BX1 U335 ( .AN(length[11]), .B(n121), .Y(N329) );
  NOR2BX1 U336 ( .AN(length[12]), .B(n121), .Y(N330) );
  NOR2BX1 U337 ( .AN(length[13]), .B(n121), .Y(N331) );
  NOR2BX1 U338 ( .AN(length[19]), .B(n122), .Y(N337) );
  NOR2BX1 U339 ( .AN(length[20]), .B(n122), .Y(N338) );
  NOR2BX1 U340 ( .AN(length[21]), .B(n122), .Y(N339) );
  NOR2BX1 U341 ( .AN(length[26]), .B(n122), .Y(N344) );
  NOR2BX1 U342 ( .AN(length[27]), .B(n122), .Y(N345) );
  NOR2BX1 U343 ( .AN(length[28]), .B(n123), .Y(N346) );
  NOR2BX1 U344 ( .AN(length[29]), .B(n123), .Y(N347) );
  NOR2BX1 U345 ( .AN(length[5]), .B(n121), .Y(N323) );
  NOR2BX1 U346 ( .AN(length[15]), .B(n121), .Y(N333) );
  NOR2BX1 U347 ( .AN(length[23]), .B(n122), .Y(N341) );
  NOR2BX1 U348 ( .AN(length[6]), .B(n121), .Y(N324) );
  NOR2BX1 U349 ( .AN(length[7]), .B(n121), .Y(N325) );
  NOR2BX1 U350 ( .AN(length[14]), .B(n121), .Y(N332) );
  NOR2BX1 U351 ( .AN(length[16]), .B(n121), .Y(N334) );
  NOR2BX1 U352 ( .AN(length[17]), .B(n122), .Y(N335) );
  NOR2BX1 U353 ( .AN(length[22]), .B(n122), .Y(N340) );
  NOR2BX1 U354 ( .AN(length[24]), .B(n122), .Y(N342) );
  NOR2BX1 U355 ( .AN(length[25]), .B(n122), .Y(N343) );
  NOR2BX1 U356 ( .AN(length[30]), .B(n123), .Y(N348) );
  AO22X1 U357 ( .A0(length[3]), .A1(n87), .B0(data[3]), .B1(n123), .Y(N321) );
  AO22X1 U358 ( .A0(length[4]), .A1(n87), .B0(data[4]), .B1(n123), .Y(N322) );
  AO22X1 U359 ( .A0(n123), .A1(data[0]), .B0(length[0]), .B1(n87), .Y(N318) );
  AO22X1 U360 ( .A0(n123), .A1(data[1]), .B0(length[1]), .B1(n87), .Y(N319) );
  AO22X1 U361 ( .A0(n123), .A1(data[2]), .B0(length[2]), .B1(n87), .Y(N320) );
  OAI32X1 U362 ( .A0(n108), .A1(n59), .A2(n106), .B0(n82), .B1(n49), .Y(N351)
         );
  AOI222XL U363 ( .A0(n81), .A1(current[1]), .B0(n138), .B1(n83), .C0(n84), 
        .C1(n85), .Y(n82) );
  NAND2X1 U364 ( .A(n66), .B(n68), .Y(n84) );
  NAND2X1 U365 ( .A(n79), .B(n70), .Y(n83) );
  NAND2BX1 U366 ( .AN(start), .B(n106), .Y(N285) );
  OAI2BB1X1 U367 ( .A0N(N77), .A1N(state), .B0(N285), .Y(N286) );
  NAND3X1 U368 ( .A(n134), .B(n132), .C(data[0]), .Y(n70) );
  NAND3X1 U369 ( .A(data[0]), .B(n132), .C(data[1]), .Y(n68) );
  NAND3X1 U370 ( .A(n135), .B(n134), .C(data[2]), .Y(n66) );
  NOR2X1 U371 ( .A(data[3]), .B(data[4]), .Y(n59) );
  NAND3X1 U372 ( .A(n135), .B(n132), .C(data[1]), .Y(n79) );
  CLKINVX1 U373 ( .A(data[2]), .Y(n132) );
  CLKINVX1 U374 ( .A(data[1]), .Y(n134) );
  CLKINVX1 U375 ( .A(data[0]), .Y(n135) );
  AND2X1 U376 ( .A(ans[0]), .B(N395), .Y(\add_84_aco/carry [1]) );
  XOR2X1 U377 ( .A(N395), .B(ans[0]), .Y(N205) );
  AND2X1 U378 ( .A(ans[0]), .B(N175), .Y(\add_79/carry [1]) );
  XOR2X1 U379 ( .A(N175), .B(ans[0]), .Y(N179) );
  AND2X1 U380 ( .A(ans[0]), .B(N400), .Y(\add_89_aco/carry [1]) );
  XOR2X1 U381 ( .A(N400), .B(ans[0]), .Y(N231) );
  AND2X1 U382 ( .A(ans[0]), .B(N390), .Y(\add_94_aco/carry [1]) );
  XOR2X1 U383 ( .A(N390), .B(ans[0]), .Y(N257) );
  AND2X1 U384 ( .A(N253), .B(n114), .Y(N390) );
  AND2X1 U385 ( .A(N254), .B(n114), .Y(N391) );
  AND2X1 U386 ( .A(N256), .B(n114), .Y(N394) );
  AND2X1 U387 ( .A(N201), .B(n114), .Y(N395) );
  AND2X1 U388 ( .A(N202), .B(n114), .Y(N396) );
  AND2X1 U389 ( .A(N204), .B(n114), .Y(N399) );
  AND2X1 U390 ( .A(N227), .B(n114), .Y(N400) );
  AND2X1 U391 ( .A(N228), .B(n114), .Y(N401) );
  AND2X1 U392 ( .A(N230), .B(n114), .Y(N404) );
endmodule

