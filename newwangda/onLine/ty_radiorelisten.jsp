<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/radiolive/ty_radiorelisten.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="utf-8"?>
<!--
 == ============================================================================
 == | WonderTek [ 网络无处不在，沟通及时到达 ]
 == ============================================================================
 == | Copyright (c) 2011, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Desc: 首页
 == ============================================================================
-->
<root>
    <header>
	     <script src="${cpath}/publish/clt${common}?time=${lastModifiedCommon}" /><%//远程加载common模板,实现common修改后下载最新common%>
    </header>       
    <body resolution="720,1280" BuildChildrenFinished="bodyBuildChildrenFinished" OnSpriteEvent="bodyOnSpriteEvent" OnPluginEvent="bodyOnPluginEvent">
    <node name="mainNode" rect="0,0,720,1280" enable="true" active="true"  OnKeyUp="mainNodeOnKeyUp" layouttype="1" extendstyle="1111">
         <image rect="0,0,720,0" style="autosize" src="file://image/background.png" extendstyle="1017"/>	
	<!--main -->
	<node  rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
		<node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		<image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		<button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="回听节目" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    </node>
		 
		<node name="catalogNode" rect="0,113,720,90"   extendstyle="1111" >
	     <list name="catalogList" rect='16,0,688,90' extendstyle='1010' auto-adjust="true" line='1' col='3'>
		 <image rect="0,0,0,0"  src="file://image/radiotop_bg.png"  style="autosize"  extendstyle="1077" />
         <list-item  rect="0,0,344,90" extendstyle="1010">
		   <button name="catalogBtn" rect="3,3,340,84"  normal="n" sel="s" disabled ="d" OnSelect="catalogBtnOnSelect" extendstyle="1010">      
			 <label rect="0,0,0,0"  name="n" text="$(text)" v-align="center" h-align="center" color="#ffffff" extendstyle="1077"/>
			 <label rect="0,0,0,0"  name="s" text="$(text)" v-align="center" h-align="center" color="#D2691E" alpha="75" extendstyle="1077"/>
			 <node name="d" rect="0,0,340,84"  extendstyle="1010">
			   <image rect="0,0,340,84" src="file://image/radiotopbtn_bg.png"  style="autosize"  extendstyle="1010" />
			   <label rect="0,0,340,84"  text="$(text)" v-align="center" h-align="center" color="#D2691E" extendstyle="1010"/>
			 </node>
		   </button>
		   
		   
        </list-item>
		   <dataset>
		   <set text="昨日节目"/><set text="今日节目"/>	 
		   </dataset>
          </list>    
	    </node>
		
		<node name="contentNode" rect="16,235,688,0"  padding="0,0,17,0" extendstyle="1116" >
		 <image rect="0,0,0,0"  src="file://image/novel_listbg.png"  style="autosize"  extendstyle="1077" />
		 <panorama name="mainPanorama" rect="0,0,688,0" extendstyle="1017" style="circle">
            <panoramaitem rect="0,0,688,0" extendstyle="1017" OnSelect="mainPanoramaOnSel" enable="1">
			<label name="isHaveProgramYesterday" rect="0,0,0,0" extendstyle="1077"  text="暂无节目" v-align="center" h-align="center" color="#303030"  font-size="72"/>
            <listview name="yesterdaylistlv" visible="1" enable="1" rect="0,5,688,0"  extendstyle="0017" scroll="auto">
            </listview>
            </panoramaitem>
            <panoramaitem  rect="0,0,688,0" extendstyle="1017" OnSelect="mainPanoramaOnSel" enable="1">
			<label name="isHaveProgramToday" rect="0,0,0,0" extendstyle="1077"  text="暂无节目" v-align="center" h-align="center" color="#303030"  font-size="72"/>
            <listview name="todaylistlv" visible="1" enable="1" rect="0,5,688,0" extendstyle="0017" scroll="auto">
            </listview>
            </panoramaitem>
            </panorama>
		</node>	
	</node>
	
	<!--昨日节目Item-->
	<node name="yesterdaylistlvItem" rect="0,0,688,90" extendstyle="1010" visible="0" enable="0">
            <button name="audioyesterdayBtn" rect="0,0,0,0" sel="s" OnSelect="audioyesterdayBtnOnSelect" extendstyle="1077">
			<label name="radioname" rect="40,0,0,40" extendstyle="1070"  text=""  color="#FFFFFF"  font-size="30"/>
			<shadow name="s" rect="0,0,0,0" color="#000000" alpha="75" extendstyle="0077"/>
            <image rect="0,0,0,2"  src="file://image/leftlistview_line.png" extendstyle="1571" />
			<label rect="40,50,140,40" extendstyle="1010"  text="播出时间" v-align="center" color="#a3a3a3"  font-size="28"/>
			<label name="audiostarttime" rect="0,50,80,40" extendstyle="8010"  text="10:00" color="#a3a3a3"  font-size="28"/>
			<label rect="0,50,10,40" extendstyle="8010"  text="——" color="#a3a3a3"  font-size="28"/>
			<label name="audioendtime" rect="0,50,100,40" extendstyle="8010"  text="23:00" color="#a3a3a3"  font-size="28"/>
            </button>
    </node>
	
	<!--今日日节目Item-->
	<node name="todaylistlvItem" rect="0,0,688,90" extendstyle="1010" visible="0" enable="0">
            <button name="audiotodayBtn" rect="0,0,0,0"  normal="n" sel="s" OnSelect="audiotodayBtnOnSelect" extendstyle="1077">
			<label name="radioname" rect="40,0,0,40" extendstyle="1070"  text=""  color="#FFFFFF"  font-size="30"/>
			<shadow name="s" rect="0,0,0,0" color="#000000" alpha="75" extendstyle="0077"/>
            <image rect="0,0,0,2"  src="file://image/leftlistview_line.png" extendstyle="1571" />
			<label rect="40,50,140,40" extendstyle="1010"  text="播出时间" v-align="center" color="#a3a3a3"  font-size="28"/>
			<label name="audiostarttime" rect="0,50,80,40" extendstyle="8010"  text="10:00" color="#a3a3a3"  font-size="28"/>
			<label rect="0,50,10,40" extendstyle="8010"  text="——" color="#a3a3a3"  font-size="28"/>
			<label name="audioendtime" rect="0,50,100,40" extendstyle="8010"  text="23:00" color="#a3a3a3"  font-size="28"/>
            </button>
    </node>
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />