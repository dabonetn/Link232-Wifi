<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="74xx-us" urn="urn:adsk.eagle:library:88">
<description>&lt;b&gt;TTL Devices, 74xx Series with US Symbols&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Texas Instruments &lt;i&gt;TTL Data Book&lt;/i&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;Volume 1, 1996.
&lt;li&gt;TTL Data Book, Volume 2 , 1993
&lt;li&gt;National Seminconductor Databook 1990, ALS/LS Logic
&lt;li&gt;ttl 74er digital data dictionary, ECA Electronic + Acustic GmbH, ISBN 3-88109-032-0
&lt;li&gt;http://icmaster.com/ViewCompare.asp
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16" urn="urn:adsk.eagle:footprint:917/1" library_version="3">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16" urn="urn:adsk.eagle:footprint:2530/1" library_version="3">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-4.064" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-1.778" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
<package name="LCC20" urn="urn:adsk.eagle:footprint:2525/1" library_version="3">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-3.4971" y="5.811" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.6871" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="DIL16" urn="urn:adsk.eagle:package:922/2" type="model" library_version="3">
<description>Dual In Line Package</description>
<packageinstances>
<packageinstance name="DIL16"/>
</packageinstances>
</package3d>
<package3d name="SO16" urn="urn:adsk.eagle:package:2918/1" type="box" library_version="3">
<description>Small Outline package 150 mil</description>
<packageinstances>
<packageinstance name="SO16"/>
</packageinstances>
</package3d>
<package3d name="LCC20" urn="urn:adsk.eagle:package:2919/1" type="box" library_version="3">
<description>Leadless Chip Carrier Ceramic Package</description>
<packageinstances>
<packageinstance name="LCC20"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="74139" urn="urn:adsk.eagle:symbol:2580/1" library_version="3">
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-7.62" width="0.4064" layer="94"/>
<text x="-7.62" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="G" x="-12.7" y="-5.08" length="middle" direction="in" function="dot"/>
<pin name="A" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="B" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="Y0" x="12.7" y="2.54" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y1" x="12.7" y="0" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y2" x="12.7" y="-2.54" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y3" x="12.7" y="-5.08" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
<symbol name="PWRN" urn="urn:adsk.eagle:symbol:2522/1" library_version="3">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-7.62" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="5.08" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-10.16" visible="pad" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="10.16" visible="pad" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*139" urn="urn:adsk.eagle:component:3081/3" prefix="IC" library_version="3">
<description>Dual 2-line to 4-line &lt;b&gt;DECODER/DEMULTIPLEXER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="74139" x="20.32" y="0" swaplevel="1"/>
<gate name="B" symbol="74139" x="20.32" y="-20.32" swaplevel="1"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="A" pad="2"/>
<connect gate="A" pin="B" pad="3"/>
<connect gate="A" pin="G" pad="1"/>
<connect gate="A" pin="Y0" pad="4"/>
<connect gate="A" pin="Y1" pad="5"/>
<connect gate="A" pin="Y2" pad="6"/>
<connect gate="A" pin="Y3" pad="7"/>
<connect gate="B" pin="A" pad="14"/>
<connect gate="B" pin="B" pad="13"/>
<connect gate="B" pin="G" pad="15"/>
<connect gate="B" pin="Y0" pad="12"/>
<connect gate="B" pin="Y1" pad="11"/>
<connect gate="B" pin="Y2" pad="10"/>
<connect gate="B" pin="Y3" pad="9"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:922/2"/>
</package3dinstances>
<technologies>
<technology name="LS">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="S">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="A" pad="2"/>
<connect gate="A" pin="B" pad="3"/>
<connect gate="A" pin="G" pad="1"/>
<connect gate="A" pin="Y0" pad="4"/>
<connect gate="A" pin="Y1" pad="5"/>
<connect gate="A" pin="Y2" pad="6"/>
<connect gate="A" pin="Y3" pad="7"/>
<connect gate="B" pin="A" pad="14"/>
<connect gate="B" pin="B" pad="13"/>
<connect gate="B" pin="G" pad="15"/>
<connect gate="B" pin="Y0" pad="12"/>
<connect gate="B" pin="Y1" pad="11"/>
<connect gate="B" pin="Y2" pad="10"/>
<connect gate="B" pin="Y3" pad="9"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:2918/1"/>
</package3dinstances>
<technologies>
<technology name="LS">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="S">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="A" pad="3"/>
<connect gate="A" pin="B" pad="4"/>
<connect gate="A" pin="G" pad="2"/>
<connect gate="A" pin="Y0" pad="5"/>
<connect gate="A" pin="Y1" pad="7"/>
<connect gate="A" pin="Y2" pad="8"/>
<connect gate="A" pin="Y3" pad="9"/>
<connect gate="B" pin="A" pad="18"/>
<connect gate="B" pin="B" pad="17"/>
<connect gate="B" pin="G" pad="19"/>
<connect gate="B" pin="Y0" pad="15"/>
<connect gate="B" pin="Y1" pad="14"/>
<connect gate="B" pin="Y2" pad="13"/>
<connect gate="B" pin="Y3" pad="12"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:2919/1"/>
</package3dinstances>
<technologies>
<technology name="LS">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="S">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="0RB_Connectors">
<description>Connectors not available in the standard libraries or &lt;br&gt; 
connectors with named pins that are used in specific computers/devices</description>
<packages>
<package name="JP1">
<wire x1="-1.27" y1="0.889" x2="-0.889" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.27" x2="0.889" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="0.889" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.27" x2="0.889" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.889" x2="0.889" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-0.889" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="0" y="0" drill="0.9144" shape="octagon"/>
<text x="-0.889" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-0.3048" y1="-0.3048" x2="0.3048" y2="0.3048" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="TP">
<wire x1="0" y1="2.54" x2="0" y2="1.27" width="0.4064" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="0" y="0" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TP" prefix="TP">
<gates>
<gate name="G$1" symbol="TP" x="2.54" y="-2.54"/>
</gates>
<devices>
<device name="" package="JP1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
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
<part name="SOCKET" library="74xx-us" library_urn="urn:adsk.eagle:library:88" deviceset="74*139" device="N" package3d_urn="urn:adsk.eagle:package:922/2" technology="LS"/>
<part name="ORIGINAL" library="74xx-us" library_urn="urn:adsk.eagle:library:88" deviceset="74*139" device="N" package3d_urn="urn:adsk.eagle:package:922/2" technology="LS" value="74LS139N"/>
<part name="EXTRADECODE" library="74xx-us" library_urn="urn:adsk.eagle:library:88" deviceset="74*139" device="N" package3d_urn="urn:adsk.eagle:package:922/2" technology="LS" value="74LS139N"/>
<part name="D700" library="0RB_Connectors" deviceset="TP" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SOCKET" gate="A" x="25.4" y="63.5" smashed="yes">
<attribute name="NAME" x="17.78" y="69.215" size="1.778" layer="95"/>
<attribute name="VALUE" x="17.78" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="SOCKET" gate="B" x="25.4" y="43.18" smashed="yes">
<attribute name="NAME" x="17.78" y="48.895" size="1.778" layer="95"/>
<attribute name="VALUE" x="17.78" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="ORIGINAL" gate="A" x="60.96" y="63.5" smashed="yes">
<attribute name="NAME" x="53.34" y="69.215" size="1.778" layer="95"/>
<attribute name="VALUE" x="53.34" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="ORIGINAL" gate="B" x="60.96" y="43.18" smashed="yes">
<attribute name="NAME" x="53.34" y="48.895" size="1.778" layer="95"/>
<attribute name="VALUE" x="53.34" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="EXTRADECODE" gate="A" x="96.52" y="63.5" smashed="yes">
<attribute name="NAME" x="88.9" y="69.215" size="1.778" layer="95"/>
<attribute name="VALUE" x="88.9" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="EXTRADECODE" gate="B" x="96.52" y="43.18" smashed="yes">
<attribute name="NAME" x="88.9" y="48.895" size="1.778" layer="95"/>
<attribute name="VALUE" x="88.9" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="SOCKET" gate="P" x="38.1" y="25.4" smashed="yes"/>
<instance part="ORIGINAL" gate="P" x="43.18" y="25.4" smashed="yes"/>
<instance part="EXTRADECODE" gate="P" x="48.26" y="25.4" smashed="yes"/>
<instance part="D700" gate="G$1" x="109.22" y="27.94" smashed="yes">
<attribute name="NAME" x="101.6" y="27.94" size="1.778" layer="95"/>
</instance>
</instances>
<busses>
<bus name="A(2),A(14),B(3),B(13),G(1),G(15),GND,SIDINTERNAL,VCC,VICINTERNAL,Y0(4-VICOUT),Y0(12),Y1(5-SIDOUT),Y1(11),Y2(6),Y2(10),Y3(7),Y3(9)">
<segment>
<wire x1="7.62" y1="38.1" x2="7.62" y2="73.66" width="0.762" layer="92"/>
<wire x1="7.62" y1="73.66" x2="43.18" y2="73.66" width="0.762" layer="92"/>
<wire x1="43.18" y1="73.66" x2="78.74" y2="73.66" width="0.762" layer="92"/>
<wire x1="78.74" y1="73.66" x2="111.76" y2="73.66" width="0.762" layer="92"/>
<wire x1="111.76" y1="73.66" x2="111.76" y2="45.72" width="0.762" layer="92"/>
<wire x1="43.18" y1="73.66" x2="43.18" y2="38.1" width="0.762" layer="92"/>
<wire x1="78.74" y1="73.66" x2="78.74" y2="38.1" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="G(1)" class="0">
<segment>
<pinref part="SOCKET" gate="A" pin="G"/>
<wire x1="12.7" y1="58.42" x2="7.62" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ORIGINAL" gate="A" pin="G"/>
<wire x1="48.26" y1="58.42" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="EXTRADECODE" gate="A" pin="G"/>
<wire x1="83.82" y1="58.42" x2="78.74" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="G(15)" class="0">
<segment>
<pinref part="SOCKET" gate="B" pin="G"/>
<wire x1="12.7" y1="38.1" x2="7.62" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ORIGINAL" gate="B" pin="G"/>
<wire x1="48.26" y1="38.1" x2="43.18" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B(3)" class="0">
<segment>
<pinref part="SOCKET" gate="A" pin="B"/>
<wire x1="12.7" y1="63.5" x2="7.62" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ORIGINAL" gate="A" pin="B"/>
<wire x1="48.26" y1="63.5" x2="43.18" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="EXTRADECODE" gate="A" pin="B"/>
<wire x1="83.82" y1="63.5" x2="78.74" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A(2)" class="0">
<segment>
<pinref part="SOCKET" gate="A" pin="A"/>
<wire x1="12.7" y1="66.04" x2="7.62" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ORIGINAL" gate="A" pin="A"/>
<wire x1="48.26" y1="66.04" x2="43.18" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="EXTRADECODE" gate="A" pin="A"/>
<wire x1="83.82" y1="66.04" x2="78.74" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B(13)" class="0">
<segment>
<pinref part="SOCKET" gate="B" pin="B"/>
<wire x1="12.7" y1="43.18" x2="7.62" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ORIGINAL" gate="B" pin="B"/>
<wire x1="48.26" y1="43.18" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="EXTRADECODE" gate="B" pin="B"/>
<wire x1="83.82" y1="43.18" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A(14)" class="0">
<segment>
<pinref part="SOCKET" gate="B" pin="A"/>
<wire x1="12.7" y1="45.72" x2="7.62" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ORIGINAL" gate="B" pin="A"/>
<wire x1="48.26" y1="45.72" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="EXTRADECODE" gate="B" pin="A"/>
<wire x1="83.82" y1="45.72" x2="78.74" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SIDINTERNAL" class="0">
<segment>
<pinref part="ORIGINAL" gate="A" pin="Y1"/>
<wire x1="73.66" y1="63.5" x2="78.74" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="EXTRADECODE" gate="B" pin="G"/>
<wire x1="83.82" y1="38.1" x2="78.74" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y1(5-SIDOUT)" class="0">
<segment>
<pinref part="SOCKET" gate="A" pin="Y1"/>
<wire x1="38.1" y1="63.5" x2="43.18" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="EXTRADECODE" gate="B" pin="Y0"/>
<wire x1="109.22" y1="45.72" x2="111.76" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y2(6)" class="0">
<segment>
<pinref part="ORIGINAL" gate="A" pin="Y2"/>
<wire x1="73.66" y1="60.96" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SOCKET" gate="A" pin="Y2"/>
<wire x1="38.1" y1="60.96" x2="43.18" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y3(7)" class="0">
<segment>
<pinref part="ORIGINAL" gate="A" pin="Y3"/>
<wire x1="73.66" y1="58.42" x2="78.74" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SOCKET" gate="A" pin="Y3"/>
<wire x1="38.1" y1="58.42" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y0(12)" class="0">
<segment>
<pinref part="ORIGINAL" gate="B" pin="Y0"/>
<wire x1="73.66" y1="45.72" x2="78.74" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SOCKET" gate="B" pin="Y0"/>
<wire x1="38.1" y1="45.72" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y1(11)" class="0">
<segment>
<pinref part="ORIGINAL" gate="B" pin="Y1"/>
<wire x1="73.66" y1="43.18" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SOCKET" gate="B" pin="Y1"/>
<wire x1="38.1" y1="43.18" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y2(10)" class="0">
<segment>
<pinref part="ORIGINAL" gate="B" pin="Y2"/>
<wire x1="73.66" y1="40.64" x2="78.74" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SOCKET" gate="B" pin="Y2"/>
<wire x1="38.1" y1="40.64" x2="43.18" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y3(9)" class="0">
<segment>
<pinref part="ORIGINAL" gate="B" pin="Y3"/>
<wire x1="73.66" y1="38.1" x2="78.74" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SOCKET" gate="B" pin="Y3"/>
<wire x1="38.1" y1="38.1" x2="43.18" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="SOCKET" gate="P" pin="VCC"/>
<pinref part="ORIGINAL" gate="P" pin="VCC"/>
<wire x1="38.1" y1="35.56" x2="43.18" y2="35.56" width="0.1524" layer="91"/>
<pinref part="EXTRADECODE" gate="P" pin="VCC"/>
<wire x1="43.18" y1="35.56" x2="48.26" y2="35.56" width="0.1524" layer="91"/>
<junction x="43.18" y="35.56"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SOCKET" gate="P" pin="GND"/>
<pinref part="ORIGINAL" gate="P" pin="GND"/>
<wire x1="38.1" y1="15.24" x2="43.18" y2="15.24" width="0.1524" layer="91"/>
<pinref part="EXTRADECODE" gate="P" pin="GND"/>
<wire x1="43.18" y1="15.24" x2="48.26" y2="15.24" width="0.1524" layer="91"/>
<junction x="43.18" y="15.24"/>
</segment>
</net>
<net name="Y0(4-VICOUT)" class="0">
<segment>
<pinref part="SOCKET" gate="A" pin="Y0"/>
<wire x1="38.1" y1="66.04" x2="43.18" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ORIGINAL" gate="A" pin="Y0"/>
<wire x1="73.66" y1="66.04" x2="78.74" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="D700" gate="G$1" pin="1"/>
<pinref part="EXTRADECODE" gate="B" pin="Y3"/>
<wire x1="109.22" y1="27.94" x2="109.22" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="209,1,12.7,66.04,A(2),,,,,"/>
<approved hash="209,1,48.26,66.04,A(2),,,,,"/>
<approved hash="209,1,83.82,66.04,A(2),,,,,"/>
<approved hash="209,1,12.7,45.72,A(14),,,,,"/>
<approved hash="209,1,48.26,45.72,A(14),,,,,"/>
<approved hash="209,1,83.82,45.72,A(14),,,,,"/>
<approved hash="209,1,12.7,63.5,B(3),,,,,"/>
<approved hash="209,1,48.26,63.5,B(3),,,,,"/>
<approved hash="209,1,83.82,63.5,B(3),,,,,"/>
<approved hash="209,1,12.7,43.18,B(13),,,,,"/>
<approved hash="209,1,48.26,43.18,B(13),,,,,"/>
<approved hash="209,1,83.82,43.18,B(13),,,,,"/>
<approved hash="209,1,12.7,58.42,G(1),,,,,"/>
<approved hash="209,1,48.26,58.42,G(1),,,,,"/>
<approved hash="209,1,83.82,58.42,G(1),,,,,"/>
<approved hash="209,1,12.7,38.1,G(15),,,,,"/>
<approved hash="209,1,48.26,38.1,G(15),,,,,"/>
<approved hash="206,1,38.1,66.04,Y0(4-VICOUT),,,,,"/>
<approved hash="206,1,73.66,66.04,Y0(4-VICOUT),,,,,"/>
<approved hash="206,1,73.66,45.72,Y0(12),,,,,"/>
<approved hash="206,1,38.1,45.72,Y0(12),,,,,"/>
<approved hash="206,1,38.1,63.5,Y1(5-SIDOUT),,,,,"/>
<approved hash="206,1,109.22,45.72,Y1(5-SIDOUT),,,,,"/>
<approved hash="206,1,73.66,43.18,Y1(11),,,,,"/>
<approved hash="206,1,38.1,43.18,Y1(11),,,,,"/>
<approved hash="206,1,73.66,60.96,Y2(6),,,,,"/>
<approved hash="206,1,38.1,60.96,Y2(6),,,,,"/>
<approved hash="206,1,73.66,40.64,Y2(10),,,,,"/>
<approved hash="206,1,38.1,40.64,Y2(10),,,,,"/>
<approved hash="206,1,73.66,58.42,Y3(7),,,,,"/>
<approved hash="206,1,38.1,58.42,Y3(7),,,,,"/>
<approved hash="206,1,73.66,38.1,Y3(9),,,,,"/>
<approved hash="206,1,38.1,38.1,Y3(9),,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
