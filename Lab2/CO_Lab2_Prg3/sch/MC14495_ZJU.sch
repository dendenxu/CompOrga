<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="XLXN_299" />
        <signal name="XLXN_300" />
        <signal name="XLXN_301" />
        <signal name="XLXN_302" />
        <signal name="XLXN_328" />
        <signal name="XLXN_329" />
        <signal name="XLXN_330" />
        <signal name="XLXN_331" />
        <signal name="XLXN_332" />
        <signal name="XLXN_333" />
        <signal name="XLXN_334" />
        <signal name="XLXN_337" />
        <signal name="XLXN_338" />
        <signal name="XLXN_339" />
        <signal name="XLXN_340" />
        <signal name="XLXN_341" />
        <signal name="XLXN_342" />
        <signal name="XLXN_343" />
        <signal name="target" />
        <signal name="XLXN_345" />
        <signal name="XLXN_346" />
        <signal name="XLXN_347" />
        <signal name="XLXN_348" />
        <signal name="XLXN_349" />
        <signal name="XLXN_350" />
        <signal name="XLXN_351" />
        <signal name="XLXN_352" />
        <signal name="XLXN_353" />
        <signal name="XLXN_354" />
        <signal name="point" />
        <signal name="p" />
        <signal name="LE" />
        <signal name="XLXN_360" />
        <signal name="XLXN_361" />
        <signal name="XLXN_362" />
        <signal name="XLXN_363" />
        <signal name="XLXN_364" />
        <signal name="XLXN_365" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="XLXN_366" />
        <signal name="g" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <port polarity="Input" name="LE" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="inv" name="XLXI_229">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_299" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_231">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_300" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_232">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_301" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_233">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="XLXN_302" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_234">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_300" name="I1" />
            <blockpin signalname="XLXN_301" name="I2" />
            <blockpin signalname="XLXN_302" name="I3" />
            <blockpin signalname="XLXN_328" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_235">
            <blockpin signalname="XLXN_299" name="I0" />
            <blockpin signalname="XLXN_300" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_302" name="I3" />
            <blockpin signalname="XLXN_329" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_238">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_300" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_302" name="I3" />
            <blockpin signalname="XLXN_332" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_246">
            <blockpin signalname="XLXN_299" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_333" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_247">
            <blockpin signalname="XLXN_299" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_334" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_248">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_337" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_249">
            <blockpin signalname="XLXN_299" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_339" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_250">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_340" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_252">
            <blockpin signalname="XLXN_299" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_301" name="I2" />
            <blockpin signalname="XLXN_302" name="I3" />
            <blockpin signalname="XLXN_338" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_254">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_300" name="I1" />
            <blockpin signalname="XLXN_301" name="I2" />
            <blockpin signalname="XLXN_302" name="I3" />
            <blockpin signalname="XLXN_341" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_255">
            <blockpin signalname="XLXN_299" name="I0" />
            <blockpin signalname="XLXN_300" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_302" name="I3" />
            <blockpin signalname="XLXN_342" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_256">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_343" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_298">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_302" name="I1" />
            <blockpin signalname="XLXN_345" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_299">
            <blockpin signalname="XLXN_300" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_302" name="I2" />
            <blockpin signalname="XLXN_346" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_300">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_300" name="I1" />
            <blockpin signalname="XLXN_301" name="I2" />
            <blockpin signalname="XLXN_347" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_301">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_301" name="I1" />
            <blockpin signalname="XLXN_302" name="I2" />
            <blockpin signalname="XLXN_348" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_303">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="XLXN_301" name="I1" />
            <blockpin signalname="XLXN_302" name="I2" />
            <blockpin signalname="XLXN_349" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_304">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_302" name="I2" />
            <blockpin signalname="XLXN_350" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_305">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_300" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_351" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_306">
            <blockpin signalname="XLXN_300" name="I0" />
            <blockpin signalname="XLXN_301" name="I1" />
            <blockpin signalname="XLXN_302" name="I2" />
            <blockpin signalname="XLXN_352" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_307">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_302" name="I3" />
            <blockpin signalname="XLXN_353" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_308">
            <blockpin signalname="XLXN_299" name="I0" />
            <blockpin signalname="XLXN_300" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_354" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_309">
            <blockpin signalname="XLXN_328" name="I0" />
            <blockpin signalname="XLXN_329" name="I1" />
            <blockpin signalname="XLXN_330" name="I2" />
            <blockpin signalname="XLXN_331" name="I3" />
            <blockpin signalname="XLXN_360" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_310">
            <blockpin signalname="XLXN_332" name="I0" />
            <blockpin signalname="XLXN_333" name="I1" />
            <blockpin signalname="XLXN_334" name="I2" />
            <blockpin signalname="XLXN_337" name="I3" />
            <blockpin signalname="XLXN_361" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_311">
            <blockpin signalname="XLXN_341" name="I0" />
            <blockpin signalname="XLXN_342" name="I1" />
            <blockpin signalname="XLXN_343" name="I2" />
            <blockpin signalname="target" name="I3" />
            <blockpin signalname="XLXN_363" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_312">
            <blockpin signalname="XLXN_348" name="I0" />
            <blockpin signalname="XLXN_349" name="I1" />
            <blockpin signalname="XLXN_350" name="I2" />
            <blockpin signalname="XLXN_351" name="I3" />
            <blockpin signalname="XLXN_365" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_313">
            <blockpin signalname="XLXN_338" name="I0" />
            <blockpin signalname="XLXN_339" name="I1" />
            <blockpin signalname="XLXN_340" name="I2" />
            <blockpin signalname="XLXN_362" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_314">
            <blockpin signalname="XLXN_345" name="I0" />
            <blockpin signalname="XLXN_346" name="I1" />
            <blockpin signalname="XLXN_347" name="I2" />
            <blockpin signalname="XLXN_364" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_315">
            <blockpin signalname="XLXN_352" name="I0" />
            <blockpin signalname="XLXN_353" name="I1" />
            <blockpin signalname="XLXN_354" name="I2" />
            <blockpin signalname="XLXN_366" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_316">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_317">
            <blockpin signalname="XLXN_360" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_318">
            <blockpin signalname="XLXN_361" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_319">
            <blockpin signalname="XLXN_362" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_320">
            <blockpin signalname="XLXN_363" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_321">
            <blockpin signalname="XLXN_364" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_322">
            <blockpin signalname="XLXN_365" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_324">
            <blockpin signalname="XLXN_366" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_325">
            <blockpin signalname="XLXN_299" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_301" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="target" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_326">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_301" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_330" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_327">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_300" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_331" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="D0">
            <wire x2="256" y1="240" y2="240" x1="144" />
            <wire x2="256" y1="240" y2="784" x1="256" />
            <wire x2="576" y1="240" y2="240" x1="256" />
            <wire x2="576" y1="240" y2="1744" x1="576" />
            <wire x2="1056" y1="240" y2="240" x1="576" />
            <wire x2="1296" y1="240" y2="240" x1="1056" />
            <wire x2="1616" y1="240" y2="240" x1="1296" />
            <wire x2="1616" y1="240" y2="1744" x1="1616" />
            <wire x2="2176" y1="240" y2="240" x1="1616" />
            <wire x2="2176" y1="240" y2="1744" x1="2176" />
            <wire x2="3056" y1="240" y2="240" x1="2176" />
            <wire x2="3056" y1="240" y2="1744" x1="3056" />
            <wire x2="3536" y1="240" y2="240" x1="3056" />
            <wire x2="3536" y1="240" y2="1744" x1="3536" />
            <wire x2="3696" y1="240" y2="240" x1="3536" />
            <wire x2="3712" y1="240" y2="240" x1="3696" />
            <wire x2="4000" y1="240" y2="240" x1="3712" />
            <wire x2="4320" y1="240" y2="240" x1="4000" />
            <wire x2="4320" y1="240" y2="1744" x1="4320" />
            <wire x2="4560" y1="240" y2="240" x1="4320" />
            <wire x2="4560" y1="240" y2="1744" x1="4560" />
            <wire x2="4880" y1="240" y2="240" x1="4560" />
            <wire x2="4880" y1="240" y2="1744" x1="4880" />
            <wire x2="5040" y1="240" y2="240" x1="4880" />
            <wire x2="5040" y1="240" y2="1744" x1="5040" />
            <wire x2="5520" y1="240" y2="240" x1="5040" />
            <wire x2="5520" y1="240" y2="1744" x1="5520" />
            <wire x2="4000" y1="240" y2="1744" x1="4000" />
            <wire x2="1296" y1="240" y2="1744" x1="1296" />
            <wire x2="1056" y1="240" y2="1744" x1="1056" />
        </branch>
        <branch name="D1">
            <wire x2="336" y1="400" y2="400" x1="144" />
            <wire x2="336" y1="400" y2="784" x1="336" />
            <wire x2="1120" y1="400" y2="400" x1="336" />
            <wire x2="1360" y1="400" y2="400" x1="1120" />
            <wire x2="1920" y1="400" y2="400" x1="1360" />
            <wire x2="1920" y1="400" y2="1744" x1="1920" />
            <wire x2="2240" y1="400" y2="400" x1="1920" />
            <wire x2="2240" y1="400" y2="1744" x1="2240" />
            <wire x2="2480" y1="400" y2="400" x1="2240" />
            <wire x2="2480" y1="400" y2="1744" x1="2480" />
            <wire x2="2816" y1="400" y2="400" x1="2480" />
            <wire x2="2816" y1="400" y2="1744" x1="2816" />
            <wire x2="3600" y1="400" y2="400" x1="2816" />
            <wire x2="3600" y1="400" y2="1744" x1="3600" />
            <wire x2="3760" y1="400" y2="400" x1="3600" />
            <wire x2="4720" y1="400" y2="400" x1="3760" />
            <wire x2="4720" y1="400" y2="1744" x1="4720" />
            <wire x2="4944" y1="400" y2="400" x1="4720" />
            <wire x2="4944" y1="400" y2="1744" x1="4944" />
            <wire x2="5584" y1="400" y2="400" x1="4944" />
            <wire x2="5584" y1="400" y2="1744" x1="5584" />
            <wire x2="3760" y1="400" y2="1744" x1="3760" />
            <wire x2="1120" y1="400" y2="1744" x1="1120" />
        </branch>
        <branch name="D2">
            <wire x2="416" y1="560" y2="560" x1="144" />
            <wire x2="416" y1="560" y2="784" x1="416" />
            <wire x2="944" y1="560" y2="560" x1="416" />
            <wire x2="944" y1="560" y2="1744" x1="944" />
            <wire x2="1424" y1="560" y2="560" x1="944" />
            <wire x2="1744" y1="560" y2="560" x1="1424" />
            <wire x2="1744" y1="560" y2="1744" x1="1744" />
            <wire x2="1984" y1="560" y2="560" x1="1744" />
            <wire x2="1984" y1="560" y2="1744" x1="1984" />
            <wire x2="2080" y1="560" y2="560" x1="1984" />
            <wire x2="2080" y1="560" y2="1744" x1="2080" />
            <wire x2="2720" y1="560" y2="560" x1="2080" />
            <wire x2="2720" y1="560" y2="1744" x1="2720" />
            <wire x2="2880" y1="560" y2="560" x1="2720" />
            <wire x2="2880" y1="560" y2="1744" x1="2880" />
            <wire x2="3424" y1="560" y2="560" x1="2880" />
            <wire x2="3424" y1="560" y2="1744" x1="3424" />
            <wire x2="3664" y1="560" y2="560" x1="3424" />
            <wire x2="3664" y1="560" y2="1744" x1="3664" />
            <wire x2="3824" y1="560" y2="560" x1="3664" />
            <wire x2="4224" y1="560" y2="560" x1="3824" />
            <wire x2="4224" y1="560" y2="1744" x1="4224" />
            <wire x2="5168" y1="560" y2="560" x1="4224" />
            <wire x2="5168" y1="560" y2="1744" x1="5168" />
            <wire x2="5648" y1="560" y2="560" x1="5168" />
            <wire x2="5648" y1="560" y2="1744" x1="5648" />
            <wire x2="5888" y1="560" y2="560" x1="5648" />
            <wire x2="5888" y1="560" y2="1744" x1="5888" />
            <wire x2="1424" y1="560" y2="1744" x1="1424" />
        </branch>
        <branch name="D3">
            <wire x2="496" y1="720" y2="720" x1="144" />
            <wire x2="496" y1="720" y2="784" x1="496" />
            <wire x2="1248" y1="720" y2="720" x1="496" />
            <wire x2="1488" y1="720" y2="720" x1="1248" />
            <wire x2="2144" y1="720" y2="720" x1="1488" />
            <wire x2="2144" y1="720" y2="1744" x1="2144" />
            <wire x2="2304" y1="720" y2="720" x1="2144" />
            <wire x2="2304" y1="720" y2="1744" x1="2304" />
            <wire x2="2784" y1="720" y2="720" x1="2304" />
            <wire x2="2784" y1="720" y2="1744" x1="2784" />
            <wire x2="2944" y1="720" y2="720" x1="2784" />
            <wire x2="2944" y1="720" y2="1744" x1="2944" />
            <wire x2="3888" y1="720" y2="720" x1="2944" />
            <wire x2="5232" y1="720" y2="720" x1="3888" />
            <wire x2="5232" y1="720" y2="1744" x1="5232" />
            <wire x2="5952" y1="720" y2="720" x1="5232" />
            <wire x2="5952" y1="720" y2="1744" x1="5952" />
            <wire x2="3888" y1="720" y2="1744" x1="3888" />
            <wire x2="1488" y1="720" y2="1744" x1="1488" />
            <wire x2="1248" y1="720" y2="1744" x1="1248" />
        </branch>
        <instance x="224" y="784" name="XLXI_229" orien="R90" />
        <instance x="304" y="784" name="XLXI_231" orien="R90" />
        <instance x="384" y="784" name="XLXI_232" orien="R90" />
        <instance x="464" y="784" name="XLXI_233" orien="R90" />
        <branch name="XLXN_299">
            <wire x2="256" y1="1008" y2="1104" x1="256" />
            <wire x2="816" y1="1104" y2="1104" x1="256" />
            <wire x2="1856" y1="1104" y2="1104" x1="816" />
            <wire x2="1856" y1="1104" y2="1744" x1="1856" />
            <wire x2="2016" y1="1104" y2="1104" x1="1856" />
            <wire x2="2016" y1="1104" y2="1744" x1="2016" />
            <wire x2="2416" y1="1104" y2="1104" x1="2016" />
            <wire x2="2416" y1="1104" y2="1744" x1="2416" />
            <wire x2="2656" y1="1104" y2="1104" x1="2416" />
            <wire x2="2656" y1="1104" y2="1744" x1="2656" />
            <wire x2="3296" y1="1104" y2="1104" x1="2656" />
            <wire x2="3296" y1="1104" y2="1744" x1="3296" />
            <wire x2="3696" y1="1104" y2="1104" x1="3296" />
            <wire x2="5760" y1="1104" y2="1104" x1="3696" />
            <wire x2="5760" y1="1104" y2="1744" x1="5760" />
            <wire x2="3696" y1="1104" y2="1744" x1="3696" />
            <wire x2="816" y1="1104" y2="1744" x1="816" />
        </branch>
        <branch name="XLXN_300">
            <wire x2="336" y1="1008" y2="1264" x1="336" />
            <wire x2="640" y1="1264" y2="1264" x1="336" />
            <wire x2="640" y1="1264" y2="1744" x1="640" />
            <wire x2="880" y1="1264" y2="1264" x1="640" />
            <wire x2="880" y1="1264" y2="1744" x1="880" />
            <wire x2="1120" y1="1264" y2="1264" x1="880" />
            <wire x2="1360" y1="1264" y2="1264" x1="1120" />
            <wire x2="1680" y1="1264" y2="1264" x1="1360" />
            <wire x2="1680" y1="1264" y2="1744" x1="1680" />
            <wire x2="3120" y1="1264" y2="1264" x1="1680" />
            <wire x2="3120" y1="1264" y2="1744" x1="3120" />
            <wire x2="3360" y1="1264" y2="1264" x1="3120" />
            <wire x2="3360" y1="1264" y2="1744" x1="3360" />
            <wire x2="4160" y1="1264" y2="1264" x1="3360" />
            <wire x2="4160" y1="1264" y2="1744" x1="4160" />
            <wire x2="4384" y1="1264" y2="1264" x1="4160" />
            <wire x2="4384" y1="1264" y2="1744" x1="4384" />
            <wire x2="5104" y1="1264" y2="1264" x1="4384" />
            <wire x2="5104" y1="1264" y2="1744" x1="5104" />
            <wire x2="5360" y1="1264" y2="1264" x1="5104" />
            <wire x2="5360" y1="1264" y2="1744" x1="5360" />
            <wire x2="5824" y1="1264" y2="1264" x1="5360" />
            <wire x2="5824" y1="1264" y2="1744" x1="5824" />
            <wire x2="1360" y1="1264" y2="1744" x1="1360" />
        </branch>
        <branch name="XLXN_301">
            <wire x2="416" y1="1008" y2="1424" x1="416" />
            <wire x2="704" y1="1424" y2="1424" x1="416" />
            <wire x2="704" y1="1424" y2="1744" x1="704" />
            <wire x2="1184" y1="1424" y2="1424" x1="704" />
            <wire x2="1424" y1="1424" y2="1424" x1="1184" />
            <wire x2="2544" y1="1424" y2="1424" x1="1424" />
            <wire x2="2544" y1="1424" y2="1744" x1="2544" />
            <wire x2="3184" y1="1424" y2="1424" x1="2544" />
            <wire x2="3184" y1="1424" y2="1744" x1="3184" />
            <wire x2="3824" y1="1424" y2="1424" x1="3184" />
            <wire x2="4448" y1="1424" y2="1424" x1="3824" />
            <wire x2="4448" y1="1424" y2="1744" x1="4448" />
            <wire x2="4624" y1="1424" y2="1424" x1="4448" />
            <wire x2="4624" y1="1424" y2="1744" x1="4624" />
            <wire x2="4784" y1="1424" y2="1424" x1="4624" />
            <wire x2="4784" y1="1424" y2="1744" x1="4784" />
            <wire x2="5424" y1="1424" y2="1424" x1="4784" />
            <wire x2="5424" y1="1424" y2="1744" x1="5424" />
            <wire x2="3824" y1="1424" y2="1744" x1="3824" />
            <wire x2="1184" y1="1424" y2="1744" x1="1184" />
        </branch>
        <branch name="XLXN_302">
            <wire x2="496" y1="1008" y2="1584" x1="496" />
            <wire x2="768" y1="1584" y2="1584" x1="496" />
            <wire x2="768" y1="1584" y2="1744" x1="768" />
            <wire x2="1008" y1="1584" y2="1584" x1="768" />
            <wire x2="1008" y1="1584" y2="1744" x1="1008" />
            <wire x2="1248" y1="1584" y2="1584" x1="1008" />
            <wire x2="1808" y1="1584" y2="1584" x1="1248" />
            <wire x2="1808" y1="1584" y2="1744" x1="1808" />
            <wire x2="2608" y1="1584" y2="1584" x1="1808" />
            <wire x2="2608" y1="1584" y2="1744" x1="2608" />
            <wire x2="3248" y1="1584" y2="1584" x1="2608" />
            <wire x2="3248" y1="1584" y2="1744" x1="3248" />
            <wire x2="3488" y1="1584" y2="1584" x1="3248" />
            <wire x2="3488" y1="1584" y2="1744" x1="3488" />
            <wire x2="3888" y1="1584" y2="1584" x1="3488" />
            <wire x2="4064" y1="1584" y2="1584" x1="3888" />
            <wire x2="4064" y1="1584" y2="1744" x1="4064" />
            <wire x2="4288" y1="1584" y2="1584" x1="4064" />
            <wire x2="4288" y1="1584" y2="1744" x1="4288" />
            <wire x2="4688" y1="1584" y2="1584" x1="4288" />
            <wire x2="4688" y1="1584" y2="1744" x1="4688" />
            <wire x2="4848" y1="1584" y2="1584" x1="4688" />
            <wire x2="5008" y1="1584" y2="1584" x1="4848" />
            <wire x2="5008" y1="1584" y2="1744" x1="5008" />
            <wire x2="5488" y1="1584" y2="1584" x1="5008" />
            <wire x2="5488" y1="1584" y2="1744" x1="5488" />
            <wire x2="5712" y1="1584" y2="1584" x1="5488" />
            <wire x2="5712" y1="1584" y2="1744" x1="5712" />
            <wire x2="4848" y1="1584" y2="1744" x1="4848" />
        </branch>
        <instance x="512" y="1744" name="XLXI_234" orien="R90" />
        <instance x="752" y="1744" name="XLXI_235" orien="R90" />
        <instance x="1552" y="1744" name="XLXI_238" orien="R90" />
        <instance x="1792" y="1744" name="XLXI_246" orien="R90" />
        <instance x="1952" y="1744" name="XLXI_247" orien="R90" />
        <instance x="2112" y="1744" name="XLXI_248" orien="R90" />
        <instance x="2592" y="1744" name="XLXI_249" orien="R90" />
        <instance x="2752" y="1744" name="XLXI_250" orien="R90" />
        <instance x="2352" y="1744" name="XLXI_252" orien="R90" />
        <instance x="2992" y="1744" name="XLXI_254" orien="R90" />
        <instance x="3232" y="1744" name="XLXI_255" orien="R90" />
        <instance x="3472" y="1744" name="XLXI_256" orien="R90" />
        <iomarker fontsize="28" x="144" y="240" name="D0" orien="R180" />
        <iomarker fontsize="28" x="144" y="400" name="D1" orien="R180" />
        <iomarker fontsize="28" x="144" y="560" name="D2" orien="R180" />
        <iomarker fontsize="28" x="144" y="720" name="D3" orien="R180" />
        <instance x="3936" y="1744" name="XLXI_298" orien="R90" />
        <instance x="4096" y="1744" name="XLXI_299" orien="R90" />
        <instance x="4256" y="1744" name="XLXI_300" orien="R90" />
        <instance x="4496" y="1744" name="XLXI_301" orien="R90" />
        <instance x="4656" y="1744" name="XLXI_303" orien="R90" />
        <instance x="4816" y="1744" name="XLXI_304" orien="R90" />
        <instance x="4976" y="1744" name="XLXI_305" orien="R90" />
        <instance x="5296" y="1744" name="XLXI_306" orien="R90" />
        <instance x="5456" y="1744" name="XLXI_307" orien="R90" />
        <instance x="5696" y="1744" name="XLXI_308" orien="R90" />
        <instance x="3312" y="2384" name="XLXI_311" orien="R90" />
        <instance x="4096" y="2384" name="XLXI_314" orien="R90" />
        <instance x="5520" y="2416" name="XLXI_315" orien="R90" />
        <branch name="XLXN_328">
            <wire x2="672" y1="2000" y2="2400" x1="672" />
            <wire x2="928" y1="2400" y2="2400" x1="672" />
        </branch>
        <branch name="XLXN_330">
            <wire x2="1152" y1="2016" y2="2016" x1="1056" />
            <wire x2="1056" y1="2016" y2="2400" x1="1056" />
            <wire x2="1152" y1="2000" y2="2016" x1="1152" />
        </branch>
        <branch name="XLXN_331">
            <wire x2="1392" y1="2400" y2="2400" x1="1120" />
            <wire x2="1392" y1="2000" y2="2400" x1="1392" />
        </branch>
        <branch name="XLXN_334">
            <wire x2="2080" y1="2016" y2="2016" x1="2016" />
            <wire x2="2016" y1="2016" y2="2304" x1="2016" />
            <wire x2="2080" y1="2000" y2="2016" x1="2080" />
        </branch>
        <branch name="XLXN_337">
            <wire x2="2240" y1="2304" y2="2304" x1="2080" />
            <wire x2="2240" y1="2000" y2="2304" x1="2240" />
        </branch>
        <branch name="XLXN_339">
            <wire x2="2720" y1="2016" y2="2016" x1="2704" />
            <wire x2="2704" y1="2016" y2="2288" x1="2704" />
            <wire x2="2720" y1="2000" y2="2016" x1="2720" />
        </branch>
        <branch name="XLXN_340">
            <wire x2="2880" y1="2288" y2="2288" x1="2768" />
            <wire x2="2880" y1="2000" y2="2288" x1="2880" />
        </branch>
        <branch name="XLXN_341">
            <wire x2="3152" y1="2000" y2="2384" x1="3152" />
            <wire x2="3376" y1="2384" y2="2384" x1="3152" />
        </branch>
        <branch name="XLXN_342">
            <wire x2="3392" y1="2000" y2="2192" x1="3392" />
            <wire x2="3440" y1="2192" y2="2192" x1="3392" />
            <wire x2="3440" y1="2192" y2="2384" x1="3440" />
        </branch>
        <branch name="XLXN_343">
            <wire x2="3504" y1="2192" y2="2384" x1="3504" />
            <wire x2="3600" y1="2192" y2="2192" x1="3504" />
            <wire x2="3600" y1="2000" y2="2192" x1="3600" />
        </branch>
        <branch name="target">
            <wire x2="3792" y1="2384" y2="2384" x1="3568" />
            <wire x2="3792" y1="2000" y2="2384" x1="3792" />
        </branch>
        <branch name="XLXN_345">
            <wire x2="4032" y1="2000" y2="2384" x1="4032" />
            <wire x2="4160" y1="2384" y2="2384" x1="4032" />
        </branch>
        <branch name="XLXN_346">
            <wire x2="4224" y1="2000" y2="2384" x1="4224" />
        </branch>
        <branch name="XLXN_347">
            <wire x2="4384" y1="2384" y2="2384" x1="4288" />
            <wire x2="4384" y1="2000" y2="2384" x1="4384" />
        </branch>
        <branch name="XLXN_348">
            <wire x2="4624" y1="2000" y2="2368" x1="4624" />
            <wire x2="4848" y1="2368" y2="2368" x1="4624" />
        </branch>
        <branch name="XLXN_349">
            <wire x2="4784" y1="2000" y2="2176" x1="4784" />
            <wire x2="4912" y1="2176" y2="2176" x1="4784" />
            <wire x2="4912" y1="2176" y2="2368" x1="4912" />
        </branch>
        <branch name="XLXN_350">
            <wire x2="4944" y1="2000" y2="2176" x1="4944" />
            <wire x2="4976" y1="2176" y2="2176" x1="4944" />
            <wire x2="4976" y1="2176" y2="2368" x1="4976" />
        </branch>
        <branch name="XLXN_351">
            <wire x2="5136" y1="2368" y2="2368" x1="5040" />
            <wire x2="5136" y1="2000" y2="2368" x1="5136" />
        </branch>
        <branch name="XLXN_352">
            <wire x2="5424" y1="2000" y2="2416" x1="5424" />
            <wire x2="5584" y1="2416" y2="2416" x1="5424" />
        </branch>
        <branch name="XLXN_353">
            <wire x2="5616" y1="2000" y2="2160" x1="5616" />
            <wire x2="5648" y1="2160" y2="2160" x1="5616" />
            <wire x2="5648" y1="2160" y2="2416" x1="5648" />
        </branch>
        <branch name="XLXN_354">
            <wire x2="5856" y1="2416" y2="2416" x1="5712" />
            <wire x2="5856" y1="2000" y2="2416" x1="5856" />
        </branch>
        <instance x="6848" y="512" name="XLXI_316" orien="R90" />
        <branch name="point">
            <wire x2="6880" y1="112" y2="512" x1="6880" />
        </branch>
        <branch name="p">
            <wire x2="6880" y1="736" y2="2672" x1="6880" />
        </branch>
        <iomarker fontsize="28" x="6880" y="2672" name="p" orien="R90" />
        <iomarker fontsize="28" x="6880" y="112" name="point" orien="R270" />
        <branch name="XLXN_361">
            <wire x2="1984" y1="2560" y2="2752" x1="1984" />
        </branch>
        <branch name="XLXN_363">
            <wire x2="3472" y1="2640" y2="2752" x1="3472" />
        </branch>
        <branch name="XLXN_364">
            <wire x2="4224" y1="2640" y2="2752" x1="4224" />
        </branch>
        <branch name="XLXN_365">
            <wire x2="4944" y1="2624" y2="2752" x1="4944" />
        </branch>
        <instance x="864" y="2400" name="XLXI_309" orien="R90" />
        <branch name="XLXN_329">
            <wire x2="912" y1="2000" y2="2016" x1="912" />
            <wire x2="992" y1="2016" y2="2016" x1="912" />
            <wire x2="992" y1="2016" y2="2400" x1="992" />
        </branch>
        <instance x="1824" y="2304" name="XLXI_310" orien="R90" />
        <branch name="XLXN_332">
            <wire x2="1712" y1="2000" y2="2016" x1="1712" />
            <wire x2="1888" y1="2016" y2="2016" x1="1712" />
            <wire x2="1888" y1="2016" y2="2304" x1="1888" />
        </branch>
        <branch name="XLXN_333">
            <wire x2="1920" y1="2000" y2="2016" x1="1920" />
            <wire x2="1952" y1="2016" y2="2016" x1="1920" />
            <wire x2="1952" y1="2016" y2="2304" x1="1952" />
        </branch>
        <instance x="2576" y="2288" name="XLXI_313" orien="R90" />
        <branch name="XLXN_338">
            <wire x2="2512" y1="2000" y2="2016" x1="2512" />
            <wire x2="2640" y1="2016" y2="2016" x1="2512" />
            <wire x2="2640" y1="2016" y2="2288" x1="2640" />
        </branch>
        <branch name="XLXN_362">
            <wire x2="2704" y1="2544" y2="2752" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="7232" y="80" name="LE" orien="R270" />
        <branch name="LE">
            <wire x2="1088" y1="2688" y2="2752" x1="1088" />
            <wire x2="1136" y1="2688" y2="2688" x1="1088" />
            <wire x2="1136" y1="2272" y2="2688" x1="1136" />
            <wire x2="2320" y1="2272" y2="2272" x1="1136" />
            <wire x2="2992" y1="2272" y2="2272" x1="2320" />
            <wire x2="3840" y1="2272" y2="2272" x1="2992" />
            <wire x2="4512" y1="2272" y2="2272" x1="3840" />
            <wire x2="5216" y1="2272" y2="2272" x1="4512" />
            <wire x2="6064" y1="2272" y2="2272" x1="5216" />
            <wire x2="7232" y1="2272" y2="2272" x1="6064" />
            <wire x2="6064" y1="2272" y2="2688" x1="6064" />
            <wire x2="5216" y1="2272" y2="2672" x1="5216" />
            <wire x2="4512" y1="2272" y2="2672" x1="4512" />
            <wire x2="3840" y1="2272" y2="2672" x1="3840" />
            <wire x2="2992" y1="2272" y2="2560" x1="2992" />
            <wire x2="2320" y1="2272" y2="2576" x1="2320" />
            <wire x2="2048" y1="2576" y2="2752" x1="2048" />
            <wire x2="2320" y1="2576" y2="2576" x1="2048" />
            <wire x2="2768" y1="2560" y2="2752" x1="2768" />
            <wire x2="2992" y1="2560" y2="2560" x1="2768" />
            <wire x2="3536" y1="2672" y2="2752" x1="3536" />
            <wire x2="3840" y1="2672" y2="2672" x1="3536" />
            <wire x2="4288" y1="2672" y2="2752" x1="4288" />
            <wire x2="4512" y1="2672" y2="2672" x1="4288" />
            <wire x2="5008" y1="2672" y2="2752" x1="5008" />
            <wire x2="5216" y1="2672" y2="2672" x1="5008" />
            <wire x2="5712" y1="2688" y2="2752" x1="5712" />
            <wire x2="6064" y1="2688" y2="2688" x1="5712" />
            <wire x2="7232" y1="80" y2="2272" x1="7232" />
        </branch>
        <branch name="XLXN_360">
            <wire x2="1024" y1="2656" y2="2672" x1="1024" />
            <wire x2="1024" y1="2672" y2="2752" x1="1024" />
        </branch>
        <branch name="a">
            <wire x2="1056" y1="3008" y2="3024" x1="1056" />
            <wire x2="1056" y1="3024" y2="3040" x1="1056" />
        </branch>
        <instance x="960" y="2752" name="XLXI_317" orien="R90" />
        <iomarker fontsize="28" x="1056" y="3040" name="a" orien="R90" />
        <instance x="1920" y="2752" name="XLXI_318" orien="R90" />
        <branch name="b">
            <wire x2="2016" y1="3008" y2="3040" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2016" y="3040" name="b" orien="R90" />
        <instance x="2640" y="2752" name="XLXI_319" orien="R90" />
        <branch name="c">
            <wire x2="2736" y1="3008" y2="3040" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2736" y="3040" name="c" orien="R90" />
        <instance x="3408" y="2752" name="XLXI_320" orien="R90" />
        <branch name="d">
            <wire x2="3504" y1="3008" y2="3040" x1="3504" />
        </branch>
        <iomarker fontsize="28" x="3504" y="3040" name="d" orien="R90" />
        <instance x="4160" y="2752" name="XLXI_321" orien="R90" />
        <branch name="e">
            <wire x2="4256" y1="3008" y2="3040" x1="4256" />
        </branch>
        <iomarker fontsize="28" x="4256" y="3040" name="e" orien="R90" />
        <instance x="4784" y="2368" name="XLXI_312" orien="R90" />
        <instance x="4880" y="2752" name="XLXI_322" orien="R90" />
        <branch name="f">
            <wire x2="4976" y1="3008" y2="3040" x1="4976" />
        </branch>
        <iomarker fontsize="28" x="4976" y="3040" name="f" orien="R90" />
        <branch name="XLXN_366">
            <wire x2="5648" y1="2672" y2="2720" x1="5648" />
            <wire x2="5648" y1="2720" y2="2752" x1="5648" />
        </branch>
        <instance x="5584" y="2752" name="XLXI_324" orien="R90" />
        <branch name="g">
            <wire x2="5680" y1="3008" y2="3040" x1="5680" />
        </branch>
        <iomarker fontsize="28" x="5680" y="3040" name="g" orien="R90" />
        <instance x="3632" y="1744" name="XLXI_325" orien="R90" />
        <instance x="992" y="1744" name="XLXI_326" orien="R90" />
        <instance x="1232" y="1744" name="XLXI_327" orien="R90" />
    </sheet>
</drawing>