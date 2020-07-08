<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Hexs(15:0)" />
        <signal name="XLXN_6(15:0)" />
        <signal name="XLXN_7(15:0)" />
        <signal name="XLXN_8(15:0)" />
        <signal name="XLXN_9(15:0)" />
        <signal name="XLXN_10(15:0)" />
        <signal name="Hexs(3:0)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(15:12)" />
        <signal name="Scan(1:0)" />
        <signal name="XLXN_16(1:0)" />
        <signal name="point(3:0)" />
        <signal name="point(0)" />
        <signal name="point(1)" />
        <signal name="point(2)" />
        <signal name="point(3)" />
        <signal name="LES(3:0)" />
        <signal name="LES(0)" />
        <signal name="LES(1)" />
        <signal name="LES(2)" />
        <signal name="LES(3)" />
        <signal name="HEX(3:0)" />
        <signal name="D" />
        <signal name="LE" />
        <signal name="Scan(0)" />
        <signal name="Scan(1)" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="AN(3:0)" />
        <signal name="AN(0)" />
        <signal name="AN(1)" />
        <signal name="AN(2)" />
        <signal name="AN(3)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="HEX(3:0)" />
        <port polarity="Output" name="D" />
        <port polarity="Output" name="LE" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="MUX4to1">
            <timestamp>2018-10-25T16:13:15</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="Mux4to14b">
            <timestamp>2018-10-25T16:17:47</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <block symbolname="MUX4to1" name="XLXI_1">
            <blockpin signalname="Scan(1:0)" name="S(1:0)" />
            <blockpin signalname="point(3)" name="I3" />
            <blockpin signalname="point(0)" name="I0" />
            <blockpin signalname="point(1)" name="I1" />
            <blockpin signalname="point(2)" name="I2" />
            <blockpin signalname="D" name="o" />
        </block>
        <block symbolname="MUX4to1" name="XLXI_2">
            <blockpin signalname="Scan(1:0)" name="S(1:0)" />
            <blockpin signalname="LES(3)" name="I3" />
            <blockpin signalname="LES(0)" name="I0" />
            <blockpin signalname="LES(1)" name="I1" />
            <blockpin signalname="LES(2)" name="I2" />
            <blockpin signalname="LE" name="o" />
        </block>
        <block symbolname="Mux4to14b" name="XLXI_3">
            <blockpin signalname="Scan(1:0)" name="S(1:0)" />
            <blockpin signalname="Hexs(3:0)" name="I0(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="I2(3:0)" />
            <blockpin signalname="Hexs(15:12)" name="I3(3:0)" />
            <blockpin signalname="Hexs(7:4)" name="I1(3:0)" />
            <blockpin signalname="HEX(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="d2_4e" name="XLXI_8">
            <blockpin signalname="Scan(0)" name="A0" />
            <blockpin signalname="Scan(1)" name="A1" />
            <blockpin signalname="XLXN_29" name="E" />
            <blockpin signalname="XLXN_30" name="D0" />
            <blockpin signalname="XLXN_31" name="D1" />
            <blockpin signalname="XLXN_32" name="D2" />
            <blockpin signalname="XLXN_33" name="D3" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_29" name="P" />
        </block>
        <block symbolname="inv4" name="XLXI_10">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="XLXN_31" name="I2" />
            <blockpin signalname="XLXN_30" name="I3" />
            <blockpin signalname="AN(3)" name="O0" />
            <blockpin signalname="AN(2)" name="O1" />
            <blockpin signalname="AN(1)" name="O2" />
            <blockpin signalname="AN(0)" name="O3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="944" name="XLXI_1" orien="M180">
        </instance>
        <instance x="1488" y="1536" name="XLXI_2" orien="M180">
        </instance>
        <instance x="1504" y="336" name="XLXI_3" orien="M180">
        </instance>
        <branch name="Hexs(15:0)">
            <wire x2="864" y1="496" y2="496" x1="560" />
            <wire x2="864" y1="496" y2="528" x1="864" />
            <wire x2="864" y1="528" y2="560" x1="864" />
            <wire x2="864" y1="560" y2="576" x1="864" />
            <wire x2="864" y1="576" y2="592" x1="864" />
            <wire x2="864" y1="592" y2="640" x1="864" />
            <wire x2="864" y1="640" y2="672" x1="864" />
            <wire x2="960" y1="640" y2="640" x1="864" />
            <wire x2="960" y1="560" y2="560" x1="864" />
            <wire x2="960" y1="496" y2="496" x1="864" />
            <wire x2="864" y1="336" y2="368" x1="864" />
            <wire x2="864" y1="368" y2="400" x1="864" />
            <wire x2="864" y1="400" y2="464" x1="864" />
            <wire x2="864" y1="464" y2="496" x1="864" />
            <wire x2="944" y1="400" y2="400" x1="864" />
            <wire x2="944" y1="352" y2="368" x1="944" />
            <wire x2="944" y1="368" y2="400" x1="944" />
            <wire x2="960" y1="448" y2="480" x1="960" />
            <wire x2="960" y1="480" y2="496" x1="960" />
            <wire x2="960" y1="528" y2="544" x1="960" />
            <wire x2="960" y1="544" y2="560" x1="960" />
            <wire x2="960" y1="592" y2="608" x1="960" />
            <wire x2="960" y1="608" y2="640" x1="960" />
        </branch>
        <bustap x2="1040" y1="368" y2="368" x1="944" />
        <bustap x2="1056" y1="480" y2="480" x1="960" />
        <bustap x2="1056" y1="544" y2="544" x1="960" />
        <bustap x2="1056" y1="608" y2="608" x1="960" />
        <iomarker fontsize="28" x="560" y="496" name="Hexs(15:0)" orien="R180" />
        <branch name="Hexs(3:0)">
            <wire x2="1264" y1="368" y2="368" x1="1040" />
            <wire x2="1264" y1="368" y2="560" x1="1264" />
            <wire x2="1504" y1="560" y2="560" x1="1264" />
        </branch>
        <branch name="Hexs(7:4)">
            <wire x2="1280" y1="480" y2="480" x1="1056" />
            <wire x2="1280" y1="368" y2="480" x1="1280" />
            <wire x2="1504" y1="368" y2="368" x1="1280" />
        </branch>
        <branch name="Hexs(11:8)">
            <wire x2="1280" y1="544" y2="544" x1="1056" />
            <wire x2="1280" y1="496" y2="544" x1="1280" />
            <wire x2="1504" y1="496" y2="496" x1="1280" />
        </branch>
        <branch name="Hexs(15:12)">
            <wire x2="1248" y1="608" y2="608" x1="1056" />
            <wire x2="1248" y1="432" y2="608" x1="1248" />
            <wire x2="1504" y1="432" y2="432" x1="1248" />
        </branch>
        <branch name="Scan(1:0)">
            <wire x2="1104" y1="112" y2="112" x1="576" />
            <wire x2="1104" y1="112" y2="128" x1="1104" />
            <wire x2="1104" y1="128" y2="624" x1="1104" />
            <wire x2="1504" y1="624" y2="624" x1="1104" />
            <wire x2="1104" y1="624" y2="1232" x1="1104" />
            <wire x2="1488" y1="1232" y2="1232" x1="1104" />
            <wire x2="1104" y1="1232" y2="1824" x1="1104" />
            <wire x2="1488" y1="1824" y2="1824" x1="1104" />
            <wire x2="1104" y1="1824" y2="2400" x1="1104" />
            <wire x2="1104" y1="2400" y2="2432" x1="1104" />
            <wire x2="1104" y1="2432" y2="2480" x1="1104" />
            <wire x2="1104" y1="2480" y2="2560" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="576" y="112" name="Scan(1:0)" orien="R180" />
        <branch name="point(3:0)">
            <wire x2="704" y1="944" y2="944" x1="416" />
            <wire x2="704" y1="944" y2="992" x1="704" />
            <wire x2="704" y1="992" y2="1040" x1="704" />
            <wire x2="704" y1="1040" y2="1104" x1="704" />
            <wire x2="704" y1="1104" y2="1152" x1="704" />
            <wire x2="704" y1="1152" y2="1248" x1="704" />
        </branch>
        <iomarker fontsize="28" x="416" y="944" name="point(3:0)" orien="R180" />
        <bustap x2="800" y1="992" y2="992" x1="704" />
        <bustap x2="800" y1="1040" y2="1040" x1="704" />
        <bustap x2="800" y1="1104" y2="1104" x1="704" />
        <bustap x2="800" y1="1152" y2="1152" x1="704" />
        <branch name="point(0)">
            <wire x2="1136" y1="992" y2="992" x1="800" />
            <wire x2="1136" y1="992" y2="1104" x1="1136" />
            <wire x2="1488" y1="1104" y2="1104" x1="1136" />
        </branch>
        <branch name="point(1)">
            <wire x2="1488" y1="1040" y2="1040" x1="800" />
        </branch>
        <branch name="point(2)">
            <wire x2="1120" y1="1104" y2="1104" x1="800" />
            <wire x2="1120" y1="976" y2="1104" x1="1120" />
            <wire x2="1488" y1="976" y2="976" x1="1120" />
        </branch>
        <branch name="point(3)">
            <wire x2="1136" y1="1152" y2="1152" x1="800" />
            <wire x2="1136" y1="1152" y2="1168" x1="1136" />
            <wire x2="1488" y1="1168" y2="1168" x1="1136" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="672" y1="1552" y2="1552" x1="384" />
            <wire x2="672" y1="1552" y2="1600" x1="672" />
            <wire x2="672" y1="1600" y2="1648" x1="672" />
            <wire x2="672" y1="1648" y2="1712" x1="672" />
            <wire x2="672" y1="1712" y2="1760" x1="672" />
            <wire x2="672" y1="1760" y2="1856" x1="672" />
        </branch>
        <bustap x2="768" y1="1600" y2="1600" x1="672" />
        <bustap x2="768" y1="1648" y2="1648" x1="672" />
        <bustap x2="768" y1="1712" y2="1712" x1="672" />
        <bustap x2="768" y1="1760" y2="1760" x1="672" />
        <iomarker fontsize="28" x="384" y="1552" name="LES(3:0)" orien="R180" />
        <branch name="LES(0)">
            <wire x2="1120" y1="1600" y2="1600" x1="768" />
            <wire x2="1120" y1="1600" y2="1696" x1="1120" />
            <wire x2="1488" y1="1696" y2="1696" x1="1120" />
        </branch>
        <branch name="LES(1)">
            <wire x2="1088" y1="1648" y2="1648" x1="768" />
            <wire x2="1088" y1="1632" y2="1648" x1="1088" />
            <wire x2="1488" y1="1632" y2="1632" x1="1088" />
        </branch>
        <branch name="LES(2)">
            <wire x2="1072" y1="1712" y2="1712" x1="768" />
            <wire x2="1072" y1="1568" y2="1712" x1="1072" />
            <wire x2="1488" y1="1568" y2="1568" x1="1072" />
        </branch>
        <branch name="LES(3)">
            <wire x2="1488" y1="1760" y2="1760" x1="768" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="2176" y1="624" y2="624" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="2176" y="624" name="HEX(3:0)" orien="R0" />
        <branch name="D">
            <wire x2="2160" y1="1232" y2="1232" x1="1872" />
            <wire x2="2160" y1="1216" y2="1232" x1="2160" />
        </branch>
        <branch name="LE">
            <wire x2="2160" y1="1824" y2="1824" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1216" name="D" orien="R270" />
        <iomarker fontsize="28" x="2160" y="1824" name="LE" orien="R0" />
        <instance x="1616" y="2720" name="XLXI_8" orien="R0" />
        <bustap x2="1200" y1="2400" y2="2400" x1="1104" />
        <bustap x2="1200" y1="2480" y2="2480" x1="1104" />
        <branch name="Scan(0)">
            <wire x2="1616" y1="2400" y2="2400" x1="1200" />
        </branch>
        <branch name="Scan(1)">
            <wire x2="1408" y1="2480" y2="2480" x1="1200" />
            <wire x2="1408" y1="2464" y2="2480" x1="1408" />
            <wire x2="1616" y1="2464" y2="2464" x1="1408" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1616" y1="2592" y2="2592" x1="1344" />
        </branch>
        <instance x="1280" y="2592" name="XLXI_9" orien="R0" />
        <instance x="2112" y="2624" name="XLXI_10" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="2112" y1="2400" y2="2400" x1="2000" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2112" y1="2464" y2="2464" x1="2000" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2112" y1="2528" y2="2528" x1="2000" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="2112" y1="2592" y2="2592" x1="2000" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2560" y1="2256" y2="2400" x1="2560" />
            <wire x2="2560" y1="2400" y2="2464" x1="2560" />
            <wire x2="2560" y1="2464" y2="2528" x1="2560" />
            <wire x2="2560" y1="2528" y2="2592" x1="2560" />
            <wire x2="2560" y1="2592" y2="2672" x1="2560" />
            <wire x2="2768" y1="2672" y2="2672" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2768" y="2672" name="AN(3:0)" orien="R0" />
        <bustap x2="2464" y1="2400" y2="2400" x1="2560" />
        <bustap x2="2464" y1="2464" y2="2464" x1="2560" />
        <bustap x2="2464" y1="2528" y2="2528" x1="2560" />
        <bustap x2="2464" y1="2592" y2="2592" x1="2560" />
        <branch name="AN(0)">
            <wire x2="2464" y1="2400" y2="2400" x1="2336" />
        </branch>
        <branch name="AN(1)">
            <wire x2="2464" y1="2464" y2="2464" x1="2336" />
        </branch>
        <branch name="AN(2)">
            <wire x2="2464" y1="2528" y2="2528" x1="2336" />
        </branch>
        <branch name="AN(3)">
            <wire x2="2464" y1="2592" y2="2592" x1="2336" />
        </branch>
    </sheet>
</drawing>