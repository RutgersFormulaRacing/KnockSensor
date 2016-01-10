<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Texas Instruments_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/07/2012 17:45:58</description>
<packages>
<package name="DIP254P762X508-8">
<pad name="1" x="-7.62" y="7.62" drill="1.1176" shape="square"/>
<pad name="2" x="-7.62" y="5.08" drill="1.1176"/>
<pad name="3" x="-7.62" y="2.54" drill="1.1176"/>
<pad name="4" x="-7.62" y="0" drill="1.1176"/>
<pad name="5" x="0" y="0" drill="1.1176"/>
<pad name="6" x="0" y="2.54" drill="1.1176"/>
<pad name="7" x="0" y="5.08" drill="1.1176"/>
<pad name="8" x="0" y="7.62" drill="1.1176"/>
<wire x1="-7.112" y1="-1.27" x2="-0.508" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="8.89" x2="-3.5052" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="8.89" x2="-4.1148" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-4.1148" y1="8.89" x2="-6.477" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="8.89" x2="-4.1148" y2="8.89" width="0" layer="21" curve="-180"/>
<text x="-8.2042" y="8.7376" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-7.112" y1="7.0612" x2="-7.112" y2="8.1788" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="8.1788" x2="-8.1788" y2="8.1788" width="0.1524" layer="51"/>
<wire x1="-8.1788" y1="8.1788" x2="-8.1788" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="-8.1788" y1="7.0612" x2="-7.112" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="4.5212" x2="-7.112" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="5.6388" x2="-8.1788" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-8.1788" y1="5.6388" x2="-8.1788" y2="4.5212" width="0.1524" layer="51"/>
<wire x1="-8.1788" y1="4.5212" x2="-7.112" y2="4.5212" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="1.9812" x2="-7.112" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="3.0988" x2="-8.1788" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-8.1788" y1="3.0988" x2="-8.1788" y2="1.9812" width="0.1524" layer="51"/>
<wire x1="-8.1788" y1="1.9812" x2="-7.112" y2="1.9812" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-0.5588" x2="-7.112" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="0.5588" x2="-8.1788" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="-8.1788" y1="0.5588" x2="-8.1788" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="-8.1788" y1="-0.5588" x2="-7.112" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.5588" x2="-0.508" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.5588" x2="0.5588" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="-0.5588" x2="0.5588" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="0.5588" x2="-0.508" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="3.0988" x2="-0.508" y2="1.9812" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="1.9812" x2="0.5588" y2="1.9812" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="1.9812" x2="0.5588" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="3.0988" x2="-0.508" y2="3.0988" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="5.6388" x2="-0.508" y2="4.5212" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="4.5212" x2="0.5588" y2="4.5212" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="4.5212" x2="0.5588" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="5.6388" x2="-0.508" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="8.1788" x2="-0.508" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="7.0612" x2="0.5588" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="7.0612" x2="0.5588" y2="8.1788" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="8.1788" x2="-0.508" y2="8.1788" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="-1.27" x2="-0.508" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-1.27" x2="-0.508" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="8.89" x2="-3.5052" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-3.5052" y1="8.89" x2="-4.1148" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-4.1148" y1="8.89" x2="-7.112" y2="8.89" width="0.1524" layer="51"/>
<wire x1="-7.112" y1="8.89" x2="-7.112" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-3.5052" y1="8.89" x2="-4.1148" y2="8.89" width="0" layer="51" curve="-180"/>
<text x="-8.2042" y="8.7376" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-8.5598" y="9.7282" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-9.7028" y="-4.318" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="TLC2262CP">
<pin name="VDD+" x="-17.78" y="5.08" length="middle" direction="pwr"/>
<pin name="1IN+" x="-17.78" y="0" length="middle" direction="in"/>
<pin name="1IN-" x="-17.78" y="-2.54" length="middle" direction="in"/>
<pin name="2IN+" x="-17.78" y="-5.08" length="middle" direction="in"/>
<pin name="2IN-" x="-17.78" y="-7.62" length="middle" direction="in"/>
<pin name="VDD-/GND" x="-17.78" y="-12.7" length="middle" direction="pas"/>
<pin name="1OUT" x="17.78" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="2OUT" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
<wire x1="-12.7" y1="10.16" x2="-12.7" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-17.78" x2="12.7" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-17.78" x2="12.7" y2="10.16" width="0.4064" layer="94"/>
<wire x1="12.7" y1="10.16" x2="-12.7" y2="10.16" width="0.4064" layer="94"/>
<text x="-5.3594" y="11.938" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-2.2606" y="-20.955" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TLC2262CP" prefix="U">
<description>OPERATIONAL AMPLIFIER</description>
<gates>
<gate name="A" symbol="TLC2262CP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP254P762X508-8">
<connects>
<connect gate="A" pin="1IN+" pad="3"/>
<connect gate="A" pin="1IN-" pad="2"/>
<connect gate="A" pin="1OUT" pad="1"/>
<connect gate="A" pin="2IN+" pad="5"/>
<connect gate="A" pin="2IN-" pad="6"/>
<connect gate="A" pin="2OUT" pad="7"/>
<connect gate="A" pin="VDD+" pad="8"/>
<connect gate="A" pin="VDD-/GND" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="TLC2262CP" constant="no"/>
<attribute name="OC_FARNELL" value="8453799" constant="no"/>
<attribute name="OC_NEWARK" value="35K1181" constant="no"/>
<attribute name="PACKAGE" value="PDIP" constant="no"/>
<attribute name="SUPPLIER" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="LETTER_L">
<frame x1="0" y1="0" x2="248.92" y2="185.42" columns="12" rows="17" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LETTER_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
LETTER landscape</description>
<gates>
<gate name="G$1" symbol="LETTER_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="147.32" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="Texas Instruments_By_element14_Batch_1" deviceset="TLC2262CP" device=""/>
<part name="FRAME1" library="frames" deviceset="LETTER_L" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="132.08" y="132.08"/>
<instance part="FRAME1" gate="G$1" x="5.08" y="22.86"/>
<instance part="FRAME1" gate="G$2" x="152.4" y="22.86"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
