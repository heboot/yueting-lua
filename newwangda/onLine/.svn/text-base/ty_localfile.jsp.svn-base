<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_localfile.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="utf-8"?>
<!--
 == ============================================================================
 == | WonderTek [ 网络无处不在，沟通及时到达 ]
 == ============================================================================
 == | Copyright (c) 2013, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Desc: 帮助
 == ============================================================================
-->
<root>
    <header>
        <script src="${cpath}/publish/clt${common}?time=${lastModifiedCommon}" /><%//远程加载common模板,实现common修改后下载最新common%>
    </header>
    <body BuildChildrenFinished="bodyBuildChildrenFinished" OnSpriteEvent="bodyOnSpriteEvent" OnPluginEvent="bodyOnPluginEvent" resolution="720,1280">
    <node name="mainNode" rect="0,0,720,1280" extendstyle="1111" layouttype="1" OnKeyUp="mainNodeOnKeyUp">
        <image rect="0,0,720,1280" src="file://image/background.png"  style="autosize"  alpha="255" extendstyle="1010" />
        <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1010">
		     <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		         <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			         <image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			         <image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		             <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			     </button>
                 <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="本地文件" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
		         <button name="scanBtn" normal="n" sel="s" rect="520,15,96,59" extendstyle="1111" OnSelect="scanBtnOnSelect" visible="1" enable="1">
			         <image name="n" rect="0,0,0,0" style="autosize" src="file://image/selectedworks.png" extendstyle="1077" BuildChildrenFinished="resChoose"><node/></image>
			         <image name="s" rect="0,0,0,0" style="autosize" src="file://image/selectedworks_s.png" extendstyle="1077" BuildChildrenFinished="resChoose"><node/></image>
			         <label rect="0,0,0,0" extendstyle="0077" text="扫描" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			     </button>
			     <button name="goRecordingBtn" normal="n" sel="s" rect="0,15,96,59" extendstyle="8111" OnSelect="goRecordingBtnOnSelect" visible="1" enable="1">
			         <image name="n"  rect="0,0,0,0" style="autosize" src="file://image/recordingbg_n.png" extendstyle="1077"  BuildChildrenFinished="resChoose"><node/></image>
			         <image name="s"  rect="0,0,0,0" style="autosize" src="file://image/recordingbg_s.png" extendstyle="1077"  BuildChildrenFinished="resChoose"><node/></image>
			         <label rect="0,0,0,0" extendstyle="0077" text="录音" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
                 </button>
        </node> 
		<node rect="17,90,686,0"  padding="0,0,250,0" extendstyle="1016">
             <image rect="0,15,686,0" style="autosize" src="file://image/novel_listbg.png" extendstyle="1017"/>		
             <panorama name="mainPanorama" rect="0,20,686,0" extendstyle="1017" foreground="foreground">
             <panoramaitem name="foreground" rect="0,0,686,0" extendstyle="1017">
                 <node name="scanLoadingNode" rect="0,370,686,100" extendstyle="1010" visible="0" activate="0">                   
                     <label name="scanTips" rect="300,0,240,100" extendstyle="1010" text="扫描中.." v-align="center" font-size="30" color="#FFFFFF"/>
                     <node rect="200,0,340,100" extendstyle="1010">
                         <image rect="27,18,64,64" style="autosize" src="file://image/loadingbg2.png" extendstyle="1010" />
                         <animate rect="27,18,63,63" delay="12" loop="true" extendstyle="1010">
                             <animate-frame start="$(start)" delay="1">
                                 <image rect="0,0,63,63" rotate="$(rotate)" style="autosize" src="file://image/loadingframe.png" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                             </animate-frame>
                             <dataset>
                                 <set start="0" rotate="360"/><set start="1" rotate="30"/><set start="2" rotate="60"/>
                                 <set start="3" rotate="90"/><set start="4" rotate="120"/><set start="5" rotate="150"/>
                                 <set start="6" rotate="180"/><set start="7" rotate="210"/><set start="8" rotate="240"/>
                                 <set start="9" rotate="270"/><set start="10" rotate="300"/><set start="11" rotate="330"/>
                             </dataset>
                         </animate>
                     </node>
                 </node>
                 <node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
             </panoramaitem>
             <panoramaitem name="panoramaItem1" rect="0,0,686,788" padding="0,0,0,0" extendstyle="0016">
                 <node name="subListview3Tips" rect="0,60,686,500" extendstyle="1010">
                     <textarea rect="100,200,550,250" extendstyle="1010" text="点击右上角扫描按钮，可搜索本地全部文件。" autoextend="true" maxlines="2" color="#9e9a9a" font-size="48" h-align="center" />
                 </node>
                 <listview name="subListview3" rect="0,0,686,788" auto-adjust="true" extendstyle="0017" scroll="auto">
                     <node/>
                 </listview>
             </panoramaitem>
         </panorama>	
		 </node>
         <node rect="17,0,686,128"  extendstyle="1810">
		     <button name='uploadworksBtn' rect="0,0,686,128" normal="n" disabled ="d" OnSelect="uploadworksBtnOnSelect" extendstyle="1010">
		         <image rect="0,10,686,108" style="autosize" src="file://image/settingsend_bg.png" extendstyle="1010" />
		         <label rect="0,10,686,108" extendstyle="1010" color="#D2691E" font-size="35" text="确定上传"  v-align="center"  h-align="center"/>
		     </button>
		 </node>	
         <node name="accessibleListAItem" rect="0,0,686,174" extendstyle="1010" visible="0" enable="0">
             <button name='setBtn' rect="0,0,686,90" normal="n" disabled ="d" OnSelect="fileChooseOS" extendstyle="1010">
                 <node name='n' rect="0,0,686,90" extendstyle="1010">
					 <image  name="imgN" rect="41,15,58,59" style="autosize" src="file://image/tick_n.png" visible="1" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
					 <image name="imgF"  rect="41,15,58,59" style="autosize" src="file://image/tick_f.png" visible="0" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
					 <label name="setName" rect="120,0,550,90" extendstyle="1010" color="#FFFFFF" font-size="28" postfix="..."  v-align="center"/> 
                 </node>
                 <node name='d' rect="0,0,686,90" extendstyle="1010">
				     <image  name="imgN" rect="41,15,58,59" style="autosize" src="file://image/tick_n.png" visible="0" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
					 <image name="imgF"  rect="41,15,58,59" style="autosize" src="file://image/tick_f.png" visible="1" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
					 <label name="setName2" rect="120,0,550,90" extendstyle="1010" color="#FFFFFF" font-size="28" postfix="..."  v-align="center"/>
                 </node>
				 <image rect="0,0,686,2" style="autosize" src="file://image/leftlistview_line.png" extendstyle="1514" />
             </button>
         </node>	
         <node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>				
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />