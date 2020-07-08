////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : MUX4to1.vf
// /___/   /\     Timestamp : 10/26/2018 00:13:10
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: D:\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family kintex7 -verilog MUX4to1.vf -w D:/shuluozuoye/7/MUX4to1/MUX4to1.sch
//Design Name: MUX4to1
//Device: kintex7
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module MUX4to1(I0, 
               I1, 
               I2, 
               I3, 
               S, 
               o);

    input I0;
    input I1;
    input I2;
    input I3;
    input [1:0] S;
   output o;
   
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_28;
   wire XLXN_29;
   wire XLXN_30;
   wire XLXN_31;
   wire XLXN_32;
   wire XLXN_33;
   wire XLXN_35;
   wire XLXN_36;
   
   INV  XLXI_1 (.I(S[1]), 
               .O(XLXN_3));
   INV  XLXI_2 (.I(S[0]), 
               .O(XLXN_4));
   AND2  XLXI_3 (.I0(XLXN_3), 
                .I1(XLXN_4), 
                .O(XLXN_32));
   AND2  XLXI_4 (.I0(XLXN_3), 
                .I1(S[0]), 
                .O(XLXN_33));
   AND2  XLXI_5 (.I0(XLXN_4), 
                .I1(S[1]), 
                .O(XLXN_35));
   AND2  XLXI_6 (.I0(S[0]), 
                .I1(S[1]), 
                .O(XLXN_36));
   AND2  XLXI_7 (.I0(XLXN_32), 
                .I1(I0), 
                .O(XLXN_28));
   AND2  XLXI_8 (.I0(XLXN_33), 
                .I1(I1), 
                .O(XLXN_29));
   AND2  XLXI_12 (.I0(XLXN_35), 
                 .I1(I2), 
                 .O(XLXN_30));
   AND2  XLXI_13 (.I0(XLXN_36), 
                 .I1(I3), 
                 .O(XLXN_31));
   OR4  XLXI_48 (.I0(XLXN_28), 
                .I1(XLXN_29), 
                .I2(XLXN_30), 
                .I3(XLXN_31), 
                .O(o));
endmodule
