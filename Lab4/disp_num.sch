<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="clkd(31:0)" />
        <signal name="clkd(18:17)" />
        <signal name="HEXS(15:0)" />
        <signal name="point(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="AN(3:0)" />
        <signal name="XLXN_16" />
        <signal name="HEX(3:0)" />
        <signal name="XLXN_18" />
        <signal name="HEX(0)" />
        <signal name="HEX(1)" />
        <signal name="HEX(2)" />
        <signal name="HEX(3)" />
        <signal name="Segment(7:0)" />
        <signal name="Segment(4)" />
        <signal name="Segment(6)" />
        <signal name="Segment(7)" />
        <signal name="Segment(5)" />
        <signal name="Segment(3)" />
        <signal name="Segment(0)" />
        <signal name="Segment(1)" />
        <signal name="Segment(2)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="HEXS(15:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Segment(7:0)" />
        <blockdef name="clkdiv">
            <timestamp>2018-11-1T11:7:15</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="DisplaySync">
            <timestamp>2018-10-25T23:47:28</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MC14495_">
            <timestamp>2018-10-25T12:0:12</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="clkdiv" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clkd(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="DisplaySync" name="XLXI_2">
            <blockpin signalname="HEXS(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="clkd(18:17)" name="Scan(1:0)" />
            <blockpin signalname="point(3:0)" name="point(3:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="HEX(3:0)" name="HEX(3:0)" />
            <blockpin signalname="XLXN_18" name="D" />
            <blockpin signalname="XLXN_16" name="LE" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="MC14495_" name="XLXI_3">
            <blockpin signalname="XLXN_18" name="point" />
            <blockpin signalname="XLXN_16" name="LE" />
            <blockpin signalname="HEX(0)" name="D0" />
            <blockpin signalname="HEX(1)" name="D1" />
            <blockpin signalname="HEX(2)" name="D2" />
            <blockpin signalname="HEX(3)" name="D3" />
            <blockpin signalname="Segment(6)" name="g" />
            <blockpin signalname="Segment(7)" name="p" />
            <blockpin signalname="Segment(5)" name="f" />
            <blockpin signalname="Segment(4)" name="e" />
            <blockpin signalname="Segment(3)" name="d" />
            <blockpin signalname="Segment(0)" name="a" />
            <blockpin signalname="Segment(1)" name="b" />
            <blockpin signalname="Segment(2)" name="c" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1312" y="608" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="1312" y1="512" y2="512" x1="1056" />
        </branch>
        <branch name="rst">
            <wire x2="1312" y1="576" y2="576" x1="1056" />
            <wire x2="1056" y1="576" y2="592" x1="1056" />
        </branch>
        <branch name="clkd(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1216" type="branch" />
            <wire x2="1888" y1="1216" y2="1216" x1="1056" />
            <wire x2="1904" y1="1216" y2="1216" x1="1888" />
            <wire x2="1056" y1="1216" y2="2016" x1="1056" />
            <wire x2="1056" y1="2016" y2="2112" x1="1056" />
            <wire x2="1904" y1="512" y2="512" x1="1696" />
            <wire x2="1904" y1="512" y2="1216" x1="1904" />
        </branch>
        <bustap x2="1152" y1="2016" y2="2016" x1="1056" />
        <instance x="1392" y="2032" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2448" y="928" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clkd(18:17)">
            <wire x2="1264" y1="2016" y2="2016" x1="1152" />
            <wire x2="1264" y1="1872" y2="2016" x1="1264" />
            <wire x2="1392" y1="1872" y2="1872" x1="1264" />
        </branch>
        <branch name="HEXS(15:0)">
            <wire x2="1392" y1="1808" y2="1808" x1="752" />
        </branch>
        <branch name="point(3:0)">
            <wire x2="1392" y1="1936" y2="1936" x1="736" />
            <wire x2="736" y1="1936" y2="1968" x1="736" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="1168" y1="2048" y2="2048" x1="752" />
            <wire x2="1168" y1="2000" y2="2048" x1="1168" />
            <wire x2="1392" y1="2000" y2="2000" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1056" y="512" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1056" y="592" name="rst" orien="R180" />
        <iomarker fontsize="28" x="752" y="1808" name="HEXS(15:0)" orien="R180" />
        <iomarker fontsize="28" x="736" y="1968" name="point(3:0)" orien="R180" />
        <iomarker fontsize="28" x="752" y="2048" name="LES(3:0)" orien="R180" />
        <branch name="AN(3:0)">
            <wire x2="2544" y1="2000" y2="2000" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="2544" y="2000" name="AN(3:0)" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2112" y1="1936" y2="1936" x1="1776" />
            <wire x2="2112" y1="528" y2="1936" x1="2112" />
            <wire x2="2448" y1="528" y2="528" x1="2112" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="2272" y1="1808" y2="1808" x1="1776" />
            <wire x2="2272" y1="576" y2="624" x1="2272" />
            <wire x2="2272" y1="624" y2="688" x1="2272" />
            <wire x2="2272" y1="688" y2="752" x1="2272" />
            <wire x2="2272" y1="752" y2="816" x1="2272" />
            <wire x2="2272" y1="816" y2="1808" x1="2272" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2096" y1="1872" y2="1872" x1="1776" />
            <wire x2="2096" y1="448" y2="1872" x1="2096" />
            <wire x2="2448" y1="448" y2="448" x1="2096" />
        </branch>
        <bustap x2="2368" y1="624" y2="624" x1="2272" />
        <bustap x2="2368" y1="688" y2="688" x1="2272" />
        <bustap x2="2368" y1="752" y2="752" x1="2272" />
        <bustap x2="2368" y1="816" y2="816" x1="2272" />
        <branch name="HEX(0)">
            <wire x2="2400" y1="624" y2="624" x1="2368" />
            <wire x2="2400" y1="608" y2="624" x1="2400" />
            <wire x2="2448" y1="608" y2="608" x1="2400" />
        </branch>
        <branch name="HEX(1)">
            <wire x2="2448" y1="688" y2="688" x1="2368" />
        </branch>
        <branch name="HEX(2)">
            <wire x2="2400" y1="752" y2="752" x1="2368" />
            <wire x2="2400" y1="752" y2="768" x1="2400" />
            <wire x2="2448" y1="768" y2="768" x1="2400" />
        </branch>
        <branch name="HEX(3)">
            <wire x2="2400" y1="816" y2="816" x1="2368" />
            <wire x2="2400" y1="816" y2="848" x1="2400" />
            <wire x2="2448" y1="848" y2="848" x1="2400" />
        </branch>
        <branch name="Segment(7:0)">
            <wire x2="3024" y1="400" y2="448" x1="3024" />
            <wire x2="3024" y1="448" y2="528" x1="3024" />
            <wire x2="3024" y1="528" y2="592" x1="3024" />
            <wire x2="3024" y1="592" y2="672" x1="3024" />
            <wire x2="3024" y1="672" y2="736" x1="3024" />
            <wire x2="3024" y1="736" y2="800" x1="3024" />
            <wire x2="3024" y1="800" y2="880" x1="3024" />
            <wire x2="3024" y1="880" y2="944" x1="3024" />
            <wire x2="3024" y1="944" y2="1024" x1="3024" />
            <wire x2="3200" y1="1024" y2="1024" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1024" name="Segment(7:0)" orien="R0" />
        <bustap x2="2928" y1="448" y2="448" x1="3024" />
        <bustap x2="2928" y1="528" y2="528" x1="3024" />
        <bustap x2="2928" y1="592" y2="592" x1="3024" />
        <bustap x2="2928" y1="672" y2="672" x1="3024" />
        <branch name="Segment(4)">
            <wire x2="2912" y1="640" y2="640" x1="2832" />
            <wire x2="2912" y1="640" y2="672" x1="2912" />
            <wire x2="2928" y1="672" y2="672" x1="2912" />
        </branch>
        <bustap x2="2928" y1="736" y2="736" x1="3024" />
        <bustap x2="2928" y1="800" y2="800" x1="3024" />
        <bustap x2="2928" y1="880" y2="880" x1="3024" />
        <bustap x2="2928" y1="944" y2="944" x1="3024" />
        <branch name="Segment(6)">
            <wire x2="2928" y1="448" y2="448" x1="2832" />
        </branch>
        <branch name="Segment(7)">
            <wire x2="2928" y1="512" y2="512" x1="2832" />
            <wire x2="2928" y1="512" y2="528" x1="2928" />
        </branch>
        <branch name="Segment(5)">
            <wire x2="2880" y1="576" y2="576" x1="2832" />
            <wire x2="2880" y1="576" y2="592" x1="2880" />
            <wire x2="2928" y1="592" y2="592" x1="2880" />
        </branch>
        <branch name="Segment(3)">
            <wire x2="2880" y1="704" y2="704" x1="2832" />
            <wire x2="2880" y1="704" y2="736" x1="2880" />
            <wire x2="2928" y1="736" y2="736" x1="2880" />
        </branch>
        <branch name="Segment(0)">
            <wire x2="2880" y1="768" y2="768" x1="2832" />
            <wire x2="2880" y1="768" y2="800" x1="2880" />
            <wire x2="2928" y1="800" y2="800" x1="2880" />
        </branch>
        <branch name="Segment(1)">
            <wire x2="2880" y1="832" y2="832" x1="2832" />
            <wire x2="2880" y1="832" y2="880" x1="2880" />
            <wire x2="2928" y1="880" y2="880" x1="2880" />
        </branch>
        <branch name="Segment(2)">
            <wire x2="2880" y1="896" y2="896" x1="2832" />
            <wire x2="2880" y1="896" y2="944" x1="2880" />
            <wire x2="2928" y1="944" y2="944" x1="2880" />
        </branch>
    </sheet>
</drawing>