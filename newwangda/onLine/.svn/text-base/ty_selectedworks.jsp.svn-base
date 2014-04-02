<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_selectedworks.wdml" /><%//定义本文件lua部分模板路径%>
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
	<node name="mainNode1" rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
		<node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		<image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		<button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    </node>
		
		<image src="file://image/novel_listbg.png" style="autosize" rect="20,100,686,0" padding="0,0,20,0"   extendstyle="1016" />
		<node name="contentNode" rect="20,120,686,0" padding="0,0,20,0"   extendstyle="1116" >
	       <listview name="datalListView" rect="0,0,686,0" extendstyle="1117" limit="true" >
		   </listview>
	    </node>
	</node>
	
	<node name="dataListviewItem" rect="0,0,686,0" extendstyle="1017"  visible="0" enable="0" active="0">
	    <list name="datalList" rect="4,-5,678,0" col="5" extendstyle="1111">
		</list>
	</node>
	
	<!--item-->
	<node name="dataItem" rect="0,0,135,987" extendstyle="1017"  visible="0" enable="0" active="0">
		<button name="dataItemBtn" OnSelect="dataItemBtnOnSelect" normal="n" sel="d" data="" rect="0,0,135,137" extendstyle="1010">	 		
	    <image rect="0,0,135,137" style="autosize" extendstyle="1010" src="file://image/novel_listitem_bg.png"/>
		<image rect="0,0,135,137" style="autosize" src="file://image/selectedworksitem_bg.png" extendstyle="1010"/>
		<label name="numbelNumber" rect="0,0,0,0" v-align="center" h-align="center"  extendstyle="1177" color="#FFFFFF"  font-size="40"/>
        <shadow name="n" rect="0,1,86,82" alpha="0" color="#000000" extendstyle="0077"/>
        <shadow name="d" rect="0,0,0,0" alpha="50" color="#000000" extendstyle="0077"/>		
		</button>
	</node>		
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>		
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />