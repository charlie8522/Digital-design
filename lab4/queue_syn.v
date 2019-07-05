/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon May 27 22:38:09 2019
/////////////////////////////////////////////////////////////


module queue ( clk, reset, go, cmd, r_num, ready, w_en, r_en, full, 
        almost_full, empty, almost_empty, error, w_num, addr );
  input [17:0] cmd;
  input [15:0] r_num;
  output [15:0] w_num;
  output [4:0] addr;
  input clk, reset, go;
  output ready, w_en, r_en, full, almost_full, empty, almost_empty, error;
  wire   QAction, next_pop_counter, N5, N6, N7, N8, N10, N11, N12, N13, N15,
         N16, N17, N18, N19, N21, N29, n12, n13, n14, n15, n16, n17, n22, n23,
         n24, n25, n26, n27, n28, n29, n30;
  wire   [4:0] next_position;
  wire   [15:0] next_w_value;
  wire   [4:2] \add_145/carry ;
  assign error = N21;
  assign full = N29;
  assign ready = 1'b1;

  \**SEQGEN**  next_pop_counter_reg ( .clear(1'b0), .preset(1'b0), 
        .next_state(n25), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), .Q(
        next_pop_counter), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(QAction) );
  \**SEQGEN**  \next_w_value_reg[15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[15]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[15]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[14]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[14]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[13]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[13]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[12]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[12]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[11]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[11]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[10]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[10]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[9]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[9]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[8]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[8]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[7]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[6]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[5]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[4]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[3]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[2]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[1]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  \**SEQGEN**  \next_w_value_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(cmd[0]), .clocked_on(n29), .data_in(1'b0), .enable(1'b0), 
        .Q(next_w_value[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(n22) );
  DFFRX1 pop_counter_reg ( .D(next_pop_counter), .CK(clk), .RN(n30), .QN(n25)
         );
  DFFSX1 QAction_reg ( .D(1'b0), .CK(clk), .SN(n30), .Q(QAction), .QN(n22) );
  DFFRX1 \position_reg[4]  ( .D(next_position[4]), .CK(clk), .RN(n30), .Q(
        addr[4]) );
  DFFRX1 \position_reg[1]  ( .D(next_position[1]), .CK(clk), .RN(n30), .Q(
        addr[1]) );
  DFFRX1 \position_reg[3]  ( .D(next_position[3]), .CK(clk), .RN(n30), .Q(
        addr[3]) );
  DFFRX1 \position_reg[2]  ( .D(next_position[2]), .CK(clk), .RN(n30), .Q(
        addr[2]), .QN(n24) );
  DFFRX1 \w_value_reg[15]  ( .D(next_w_value[15]), .CK(clk), .RN(n30), .Q(
        w_num[15]) );
  DFFRX1 \w_value_reg[14]  ( .D(next_w_value[14]), .CK(clk), .RN(n30), .Q(
        w_num[14]) );
  DFFRX1 \w_value_reg[13]  ( .D(next_w_value[13]), .CK(clk), .RN(n30), .Q(
        w_num[13]) );
  DFFRX1 \w_value_reg[12]  ( .D(next_w_value[12]), .CK(clk), .RN(n30), .Q(
        w_num[12]) );
  DFFRX1 \w_value_reg[11]  ( .D(next_w_value[11]), .CK(clk), .RN(n30), .Q(
        w_num[11]) );
  DFFRX1 \w_value_reg[10]  ( .D(next_w_value[10]), .CK(clk), .RN(n30), .Q(
        w_num[10]) );
  DFFRX1 \w_value_reg[9]  ( .D(next_w_value[9]), .CK(clk), .RN(n30), .Q(
        w_num[9]) );
  DFFRX1 \w_value_reg[8]  ( .D(next_w_value[8]), .CK(clk), .RN(n30), .Q(
        w_num[8]) );
  DFFRX1 \w_value_reg[7]  ( .D(next_w_value[7]), .CK(clk), .RN(n30), .Q(
        w_num[7]) );
  DFFRX1 \w_value_reg[6]  ( .D(next_w_value[6]), .CK(clk), .RN(n30), .Q(
        w_num[6]) );
  DFFRX1 \w_value_reg[5]  ( .D(next_w_value[5]), .CK(clk), .RN(n30), .Q(
        w_num[5]) );
  DFFRX1 \w_value_reg[4]  ( .D(next_w_value[4]), .CK(clk), .RN(n30), .Q(
        w_num[4]) );
  DFFRX1 \w_value_reg[3]  ( .D(next_w_value[3]), .CK(clk), .RN(n30), .Q(
        w_num[3]) );
  DFFRX1 \w_value_reg[2]  ( .D(next_w_value[2]), .CK(clk), .RN(n30), .Q(
        w_num[2]) );
  DFFRX1 \w_value_reg[1]  ( .D(next_w_value[1]), .CK(clk), .RN(n30), .Q(
        w_num[1]) );
  DFFRX1 \w_value_reg[0]  ( .D(next_w_value[0]), .CK(clk), .RN(n30), .Q(
        w_num[0]) );
  DFFNSRX1 \next_position_reg[0]  ( .D(N15), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_position[0]) );
  DFFNSRX1 \next_position_reg[4]  ( .D(N19), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_position[4]) );
  DFFNSRX1 \next_position_reg[1]  ( .D(N16), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_position[1]) );
  DFFNSRX1 \next_position_reg[2]  ( .D(N17), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_position[2]) );
  DFFNSRX1 \next_position_reg[3]  ( .D(N18), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_position[3]) );
  DFFRX1 \position_reg[0]  ( .D(next_position[0]), .CK(clk), .RN(n30), .Q(
        addr[0]), .QN(n23) );
  ADDHXL U32 ( .A(addr[1]), .B(addr[0]), .CO(\add_145/carry [2]), .S(N5) );
  ADDHXL U33 ( .A(addr[2]), .B(\add_145/carry [2]), .CO(\add_145/carry [3]), 
        .S(N6) );
  AO22X1 U34 ( .A0(N6), .A1(n22), .B0(N11), .B1(QAction), .Y(N17) );
  AO22X1 U35 ( .A0(N8), .A1(n22), .B0(N13), .B1(QAction), .Y(N19) );
  AO22X1 U36 ( .A0(N7), .A1(n22), .B0(N12), .B1(QAction), .Y(N18) );
  AO22X1 U37 ( .A0(N5), .A1(n22), .B0(N10), .B1(QAction), .Y(N16) );
  ADDHXL U38 ( .A(addr[3]), .B(\add_145/carry [3]), .CO(\add_145/carry [4]), 
        .S(N7) );
  AO22X1 U39 ( .A0(n23), .A1(QAction), .B0(n23), .B1(n22), .Y(N15) );
  INVX3 U40 ( .A(reset), .Y(n30) );
  AO22X1 U41 ( .A0(addr[2]), .A1(addr[1]), .B0(n17), .B1(addr[3]), .Y(n16) );
  NAND3X1 U42 ( .A(n15), .B(n16), .C(addr[4]), .Y(n13) );
  NOR3X1 U43 ( .A(n15), .B(addr[4]), .C(n16), .Y(n12) );
  XOR2X1 U44 ( .A(addr[3]), .B(n17), .Y(n15) );
  NOR2BX1 U45 ( .AN(n12), .B(addr[0]), .Y(empty) );
  NOR2X1 U46 ( .A(addr[0]), .B(n13), .Y(almost_full) );
  NOR2BX1 U47 ( .AN(addr[0]), .B(n13), .Y(N29) );
  XOR2X1 U48 ( .A(addr[1]), .B(addr[2]), .Y(n17) );
  NOR2X1 U49 ( .A(w_en), .B(cmd[17]), .Y(r_en) );
  AO22X1 U50 ( .A0(r_en), .A1(empty), .B0(n14), .B1(w_en), .Y(N21) );
  AO21X1 U51 ( .A0(n25), .A1(cmd[17]), .B0(N29), .Y(n14) );
  CLKINVX1 U52 ( .A(cmd[16]), .Y(w_en) );
  AND2X2 U53 ( .A(n12), .B(addr[0]), .Y(almost_empty) );
  CLKINVX1 U54 ( .A(clk), .Y(n29) );
  XOR2X1 U55 ( .A(\add_145/carry [4]), .B(addr[4]), .Y(N8) );
  NOR2X1 U56 ( .A(addr[1]), .B(addr[0]), .Y(n26) );
  AO21X1 U57 ( .A0(addr[0]), .A1(addr[1]), .B0(n26), .Y(N10) );
  NAND2X1 U58 ( .A(n26), .B(n24), .Y(n27) );
  OAI21XL U59 ( .A0(n26), .A1(n24), .B0(n27), .Y(N11) );
  XNOR2X1 U60 ( .A(addr[3]), .B(n27), .Y(N12) );
  NOR2X1 U61 ( .A(addr[3]), .B(n27), .Y(n28) );
  XOR2X1 U62 ( .A(addr[4]), .B(n28), .Y(N13) );
endmodule

