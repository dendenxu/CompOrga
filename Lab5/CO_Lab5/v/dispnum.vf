
`timescale 1ns / 1ps

module Mux4to1_sch_MUSER_dispnum(I0, 
                                 I1, 
                                 I2, 
                                 I3, 
                                 S, 
                                 O);

    input I0;
    input I1;
    input I2;
    input I3;
    input [1:0] S;
   output O;
   
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_226;
   wire XLXN_227;
   wire XLXN_228;
   wire XLXN_229;
   wire XLXN_230;
   wire XLXN_231;
   
   AND2  XLXI_1 (.I0(I0), 
                .I1(XLXN_228), 
                .O(XLXN_3));
   AND2  XLXI_2 (.I0(I1), 
                .I1(XLXN_229), 
                .O(XLXN_1));
   AND2  XLXI_3 (.I0(I2), 
                .I1(XLXN_230), 
                .O(XLXN_2));
   AND2  XLXI_4 (.I0(I3), 
                .I1(XLXN_231), 
                .O(XLXN_4));
   OR4  XLXI_5 (.I0(XLXN_4), 
               .I1(XLXN_2), 
               .I2(XLXN_1), 
               .I3(XLXN_3), 
               .O(O));
   AND2  XLXI_82 (.I0(XLXN_227), 
                 .I1(XLXN_226), 
                 .O(XLXN_228));
   AND2  XLXI_83 (.I0(S[1]), 
                 .I1(XLXN_226), 
                 .O(XLXN_229));
   AND2  XLXI_84 (.I0(S[0]), 
                 .I1(XLXN_227), 
                 .O(XLXN_230));
   AND2  XLXI_85 (.I0(S[0]), 
                 .I1(S[1]), 
                 .O(XLXN_231));
   INV  XLXI_122 (.I(S[0]), 
                 .O(XLXN_226));
   INV  XLXI_123 (.I(S[1]), 
                 .O(XLXN_227));
endmodule
`timescale 1ns / 1ps

module Mux4to1b4_sch_MUSER_dispnum(I0, 
                                   I1, 
                                   I2, 
                                   I3, 
                                   S, 
                                   O);

    input [3:0] I0;
    input [3:0] I1;
    input [3:0] I2;
    input [3:0] I3;
    input [1:0] S;
   output [3:0] O;
   
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_17;
   wire XLXN_18;
   wire XLXN_19;
   wire XLXN_20;
   wire XLXN_33;
   wire XLXN_34;
   wire XLXN_35;
   wire XLXN_36;
   wire XLXN_49;
   wire XLXN_50;
   wire XLXN_51;
   wire XLXN_52;
   wire XLXN_222;
   wire XLXN_223;
   wire XLXN_225;
   wire XLXN_226;
   wire XLXN_227;
   
   AND2  XLXI_1 (.I0(I0[0]), 
                .I1(XLXN_5), 
                .O(XLXN_3));
   AND2  XLXI_2 (.I0(I1[0]), 
                .I1(XLXN_222), 
                .O(XLXN_1));
   AND2  XLXI_3 (.I0(I2[0]), 
                .I1(XLXN_223), 
                .O(XLXN_2));
   AND2  XLXI_4 (.I0(I3[0]), 
                .I1(XLXN_225), 
                .O(XLXN_4));
   OR4  XLXI_5 (.I0(XLXN_4), 
               .I1(XLXN_2), 
               .I2(XLXN_1), 
               .I3(XLXN_3), 
               .O(O[0]));
   AND2  XLXI_10 (.I0(I0[1]), 
                 .I1(XLXN_5), 
                 .O(XLXN_19));
   AND2  XLXI_11 (.I0(I1[1]), 
                 .I1(XLXN_222), 
                 .O(XLXN_17));
   AND2  XLXI_12 (.I0(I2[1]), 
                 .I1(XLXN_223), 
                 .O(XLXN_18));
   AND2  XLXI_13 (.I0(I3[1]), 
                 .I1(XLXN_225), 
                 .O(XLXN_20));
   OR4  XLXI_14 (.I0(XLXN_20), 
                .I1(XLXN_18), 
                .I2(XLXN_17), 
                .I3(XLXN_19), 
                .O(O[1]));
   AND2  XLXI_19 (.I0(I0[2]), 
                 .I1(XLXN_5), 
                 .O(XLXN_35));
   AND2  XLXI_20 (.I0(I1[2]), 
                 .I1(XLXN_222), 
                 .O(XLXN_33));
   AND2  XLXI_21 (.I0(I2[2]), 
                 .I1(XLXN_223), 
                 .O(XLXN_34));
   AND2  XLXI_22 (.I0(I3[2]), 
                 .I1(XLXN_225), 
                 .O(XLXN_36));
   OR4  XLXI_23 (.I0(XLXN_36), 
                .I1(XLXN_34), 
                .I2(XLXN_33), 
                .I3(XLXN_35), 
                .O(O[2]));
   AND2  XLXI_28 (.I0(I0[3]), 
                 .I1(XLXN_5), 
                 .O(XLXN_51));
   AND2  XLXI_29 (.I0(I1[3]), 
                 .I1(XLXN_222), 
                 .O(XLXN_49));
   AND2  XLXI_30 (.I0(I2[3]), 
                 .I1(XLXN_223), 
                 .O(XLXN_50));
   AND2  XLXI_31 (.I0(I3[3]), 
                 .I1(XLXN_225), 
                 .O(XLXN_52));
   OR4  XLXI_32 (.I0(XLXN_52), 
                .I1(XLXN_50), 
                .I2(XLXN_49), 
                .I3(XLXN_51), 
                .O(O[3]));
   AND2  XLXI_82 (.I0(XLXN_227), 
                 .I1(XLXN_226), 
                 .O(XLXN_5));
   AND2  XLXI_83 (.I0(S[1]), 
                 .I1(XLXN_226), 
                 .O(XLXN_222));
   AND2  XLXI_84 (.I0(S[0]), 
                 .I1(XLXN_227), 
                 .O(XLXN_223));
   AND2  XLXI_85 (.I0(S[0]), 
                 .I1(S[1]), 
                 .O(XLXN_225));
   INV  XLXI_122 (.I(S[0]), 
                 .O(XLXN_226));
   INV  XLXI_123 (.I(S[1]), 
                 .O(XLXN_227));
endmodule
`timescale 1ns / 1ps

module dispsync_MUSER_dispnum(HEXS, 
                              LES, 
                              POINT, 
                              SCAN, 
                              AN, 
                              HEX, 
                              LE, 
                              P);

    input [15:0] HEXS;
    input [3:0] LES;
    input [3:0] POINT;
    input [1:0] SCAN;
   output [3:0] AN;
   output [3:0] HEX;
   output LE;
   output P;
   
   wire V0;
   wire V1;
   
   Mux4to1b4_sch_MUSER_dispnum  XLXI_1 (.I0(HEXS[3:0]), 
                                       .I1(HEXS[7:4]), 
                                       .I2(HEXS[11:8]), 
                                       .I3(HEXS[15:12]), 
                                       .S(SCAN[1:0]), 
                                       .O(HEX[3:0]));
   Mux4to1b4_sch_MUSER_dispnum  XLXI_2 (.I0({V1, V1, V1, V0}), 
                                       .I1({V1, V1, V0, V1}), 
                                       .I2({V1, V0, V1, V1}), 
                                       .I3({V0, V1, V1, V1}), 
                                       .S(SCAN[1:0]), 
                                       .O(AN[3:0]));
   Mux4to1_sch_MUSER_dispnum  XLXI_3 (.I0(POINT[0]), 
                                     .I1(POINT[1]), 
                                     .I2(POINT[2]), 
                                     .I3(POINT[3]), 
                                     .S(SCAN[1:0]), 
                                     .O(P));
   Mux4to1_sch_MUSER_dispnum  XLXI_4 (.I0(LES[0]), 
                                     .I1(LES[1]), 
                                     .I2(LES[2]), 
                                     .I3(LES[3]), 
                                     .S(SCAN[1:0]), 
                                     .O(LE));
   GND  XLXI_6 (.G(V0));
   VCC  XLXI_7 (.P(V1));
endmodule
`timescale 1ns / 1ps

module MyMC14495_MUSER_dispnum(D0, 
                               D1, 
                               D2, 
                               D3, 
                               LE, 
                               point, 
                               a, 
                               b, 
                               c, 
                               d, 
                               e, 
                               f, 
                               g, 
                               p);

    input D0;
    input D1;
    input D2;
    input D3;
    input LE;
    input point;
   output a;
   output b;
   output c;
   output d;
   output e;
   output f;
   output g;
   output p;
   
   wire awire;
   wire bwire;
   wire cwire;
   wire dwire;
   wire ewire;
   wire fwire;
   wire gwire;
   wire XLXN_5;
   wire XLXN_9;
   wire XLXN_11;
   wire XLXN_13;
   wire XLXN_45;
   wire XLXN_46;
   wire XLXN_48;
   wire XLXN_50;
   wire XLXN_51;
   wire XLXN_52;
   wire XLXN_53;
   wire XLXN_55;
   wire XLXN_57;
   wire XLXN_58;
   wire XLXN_59;
   wire XLXN_60;
   wire XLXN_61;
   wire XLXN_62;
   wire XLXN_63;
   wire XLXN_64;
   wire XLXN_66;
   wire XLXN_67;
   wire XLXN_68;
   wire XLXN_69;
   wire XLXN_70;
   
   AND4  AD20 (.I0(D0), 
              .I1(XLXN_9), 
              .I2(XLXN_11), 
              .I3(XLXN_5), 
              .O(XLXN_45));
   AND4  AN0 (.I0(XLXN_13), 
             .I1(XLXN_11), 
             .I2(D2), 
             .I3(D3), 
             .O(XLXN_70));
   AND4  AN1 (.I0(D0), 
             .I1(D1), 
             .I2(D2), 
             .I3(XLXN_5), 
             .O(XLXN_69));
   AND3  AN2 (.I0(XLXN_11), 
             .I1(XLXN_9), 
             .I2(XLXN_5), 
             .O(XLXN_68));
   AND3  AN3 (.I0(D0), 
             .I1(D1), 
             .I2(XLXN_5), 
             .O(XLXN_67));
   AND3  AN4 (.I0(D1), 
             .I1(XLXN_9), 
             .I2(XLXN_5), 
             .O(XLXN_66));
   AND3  AN5 (.I0(D0), 
             .I1(XLXN_9), 
             .I2(XLXN_5), 
             .O(XLXN_64));
   AND3  AN6 (.I0(D0), 
             .I1(XLXN_11), 
             .I2(XLXN_9), 
             .O(XLXN_63));
   AND3  AN7 (.I0(XLXN_11), 
             .I1(D2), 
             .I2(XLXN_5), 
             .O(XLXN_62));
   AND2  AN8 (.I0(D0), 
             .I1(XLXN_5), 
             .O(XLXN_61));
   AND4  AN9 (.I0(XLXN_13), 
             .I1(D1), 
             .I2(XLXN_9), 
             .I3(D3), 
             .O(XLXN_60));
   AND3  AN10 (.I0(D0), 
              .I1(D1), 
              .I2(D2), 
              .O(XLXN_59));
   AND3  AN11 (.I0(D1), 
              .I1(D2), 
              .I2(D3), 
              .O(XLXN_58));
   AND4  AN12 (.I0(XLXN_13), 
              .I1(D1), 
              .I2(XLXN_9), 
              .I3(XLXN_5), 
              .O(XLXN_57));
   AND3  AN13 (.I0(D0), 
              .I1(D1), 
              .I2(D3), 
              .O(XLXN_55));
   AND3  AN14 (.I0(XLXN_13), 
              .I1(D2), 
              .I2(D3), 
              .O(XLXN_53));
   AND3  AN15 (.I0(XLXN_13), 
              .I1(D1), 
              .I2(D2), 
              .O(XLXN_52));
   AND4  AN16 (.I0(D0), 
              .I1(XLXN_11), 
              .I2(D2), 
              .I3(XLXN_5), 
              .O(XLXN_51));
   AND4  AN17 (.I0(D0), 
              .I1(D1), 
              .I2(XLXN_9), 
              .I3(D3), 
              .O(XLXN_50));
   AND4  AN18 (.I0(D0), 
              .I1(XLXN_11), 
              .I2(D2), 
              .I3(D3), 
              .O(XLXN_48));
   AND4  AN19 (.I0(XLXN_13), 
              .I1(XLXN_11), 
              .I2(D2), 
              .I3(XLXN_5), 
              .O(XLXN_46));
   INV  XLXI_66 (.I(D3), 
                .O(XLXN_5));
   INV  XLXI_67 (.I(D2), 
                .O(XLXN_9));
   INV  XLXI_68 (.I(D1), 
                .O(XLXN_11));
   INV  XLXI_69 (.I(D0), 
                .O(XLXN_13));
   OR4  XLXI_71 (.I0(XLXN_50), 
                .I1(XLXN_48), 
                .I2(XLXN_46), 
                .I3(XLXN_45), 
                .O(awire));
   OR4  XLXI_72 (.I0(XLXN_55), 
                .I1(XLXN_53), 
                .I2(XLXN_52), 
                .I3(XLXN_51), 
                .O(bwire));
   OR4  XLXI_73 (.I0(XLXN_60), 
                .I1(XLXN_59), 
                .I2(XLXN_46), 
                .I3(XLXN_45), 
                .O(dwire));
   OR4  XLXI_75 (.I0(XLXN_67), 
                .I1(XLXN_66), 
                .I2(XLXN_64), 
                .I3(XLXN_48), 
                .O(fwire));
   OR3  XLXI_76 (.I0(XLXN_63), 
                .I1(XLXN_62), 
                .I2(XLXN_61), 
                .O(ewire));
   OR3  XLXI_77 (.I0(XLXN_70), 
                .I1(XLXN_69), 
                .I2(XLXN_68), 
                .O(gwire));
   OR3  XLXI_78 (.I0(XLXN_58), 
                .I1(XLXN_57), 
                .I2(XLXN_53), 
                .O(cwire));
   OR2  XLXI_79 (.I0(LE), 
                .I1(awire), 
                .O(a));
   OR2  XLXI_80 (.I0(LE), 
                .I1(bwire), 
                .O(b));
   OR2  XLXI_81 (.I0(LE), 
                .I1(cwire), 
                .O(c));
   OR2  XLXI_82 (.I0(LE), 
                .I1(dwire), 
                .O(d));
   OR2  XLXI_83 (.I0(LE), 
                .I1(ewire), 
                .O(e));
   OR2  XLXI_84 (.I0(LE), 
                .I1(fwire), 
                .O(f));
   OR2  XLXI_85 (.I0(LE), 
                .I1(gwire), 
                .O(g));
   INV  XLXI_87 (.I(point), 
                .O(p));
endmodule
`timescale 1ns / 1ps

module dispnum(CLK, 
               HEXS, 
               LES, 
               POINT, 
               AN, 
               SEGMENT);

    input CLK;
    input [15:0] HEXS;
    input [3:0] LES;
    input [3:0] POINT;
   output [3:0] AN;
   output [7:0] SEGMENT;
   
   wire [18:0] clkdiv;
   wire [3:0] HEX;
   wire XLXN_8;
   wire XLXN_9;
   
   MyMC14495_MUSER_dispnum  XLXI_1 (.D0(HEX[0]), 
                                   .D1(HEX[1]), 
                                   .D2(HEX[2]), 
                                   .D3(HEX[3]), 
                                   .LE(XLXN_9), 
                                   .point(XLXN_8), 
                                   .a(SEGMENT[0]), 
                                   .b(SEGMENT[1]), 
                                   .c(SEGMENT[2]), 
                                   .d(SEGMENT[3]), 
                                   .e(SEGMENT[4]), 
                                   .f(SEGMENT[5]), 
                                   .g(SEGMENT[6]), 
                                   .p(SEGMENT[7]));
   clkdiv  #(.N(19)) XLXI_2 (.clk(CLK),
						.rst(1'b0),
                  .clkdiv(clkdiv[18:0]));
   dispsync_MUSER_dispnum  XLXI_3 (.HEXS(HEXS[15:0]), 
                                  .LES(LES[3:0]), 
                                  .POINT(POINT[3:0]), 
                                  .SCAN(clkdiv[18:17]), 
                                  .AN(AN[3:0]), 
                                  .HEX(HEX[3:0]), 
                                  .LE(XLXN_9), 
                                  .P(XLXN_8));
endmodule
