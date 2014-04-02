<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/radiolive/ty_radiolist.wdml" /><%//定义本文件lua部分模板路径%>
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
	<node rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
		<node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		<image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		<button name="backBtn" rect="10,15,104,61" normal="n" sel="s" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    <button name="rightNavigationBtn" rect="600,12,104,61" extendstyle="1111" OnSelect="rightNavigationBtnOnSelect" visible="1" enable="1">	
		</button>
	    </node>	
		<node rect="15,112,689,0" padding="0,0,17,0" extendstyle="1116">	
		<image style="autosize" rect="0,0,0,0" src="file://image/novel_listbg.png" extendstyle="1077"/>
		  <listview name="radioListview" rect="0,10,0,0"  extendstyle="1077"/>
        </node>										
	</node>
	<!--listview的item-->
	<node name="listItem" rect="0,0,689,90"  extendstyle="1010"  visible="0" enable="0">
	   <button name="radiolistBtn"  rect="2,0,685,0"  sel="s"  OnSelect="radiolistBtnOnSelect" extendstyle="1017">
	   <shadow name="s" rect="0,0,0,0" alpha="50" color="#000000" extendstyle="1077"/>
	   <label name="radioName" rect="40,5,500,45" extendstyle="1111"  text=""  color="#FFFFFF"  font-size="30"/>
	   <label name="radioFmName" rect="40,55,200,35" extendstyle="1111"  text=""  color="#a3a3a3"  font-size="25"/>
	   <image rect="600,20,55,55" style="maxsize" src="file://image/arrow.png"  extendstyle="1011"/>
	   <image rect="0,0,0,2" style="autosize" src="file://image/leftlistview_line.png" extendstyle="1570"/>
	   </button>
	</node>
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>	
	</node>
</body>
</root>
<cms:include filepath="${lua}" />