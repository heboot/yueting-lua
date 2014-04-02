<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/novel/ty_novelItem.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="utf-8"?>
<!--
 == ============================================================================
 == | WonderTek [ 网络无处不在，沟通及时到达 ]
 == ============================================================================
 == | Copyright (c) 2011, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Author: wangweipeng <wangweipeng@mantis.com>
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
	<node  rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
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
		
		<node name="contentNode" rect="0,90,0,460" extendstyle="1171">			
		<image name="novelTopImg" rect="0,0,720,300" style="autosize" src="file://image/defaultbg.png"/>
		<button name="novelInfoBtn" OnSelect="novelInfoBtnOnSelect" rect="0,300,0,100" extendstyle="1871">
		    <textarea name="novelInfo" rect="10,10,650,100"  color="#999999" line-height="50" maxlines="2" font-size="28"/>		
		    <image name="rimg" rect="670,35,30,30" style="autosize"  extendstyle="1111" src="file://image/play_go.png"/>					
		</button>
		</node>
		
		<node name="authorNode" rect="0,0,0,100" extendstyle="1871">
		    <image name="authorImg" rect="20,0,96,96" style="maxsize" extendstyle="1111" src="file://image/novel_test2.png">	
			<image rect="0,0,96,96" style="maxsize" extendstyle="1111" src="file://image/authorfliter.png"/>	
		    </image>
		    <label name="authorName" rect="140,0,200,100"  v-align="center" font-size="25" color="#999999" postfix=".."  extendstyle="1111"/>
		    <label name="playCount" rect="0,0,200,100"  v-align="center" color="#999999" font-size="25" postfix=".."  extendstyle="5111" />
		</node>
		
		<node name="listNode" rect="0,0,0,0" extendstyle="1877">
		<image  src="file://image/leftlistview_line.png" style="autosize" rect="0,0,0,5," extendstyle="1171"/>
		<listview name="noveslListview" rect="0,5,0,0" extendstyle="1177" scroll="auto"  OnOverTrail="contentListOnOverTrail">	
		</listview>	
		</node>		
		
	</node>
	
	<!--数据item-->
	<node name="novelItem" rect="0,0,0,100" extendstyle="1070"  visible="0" enable="0" active="0">
			<button name="novelItemBtn" normal="n"  sel="s" OnSelect="novelItemBtnOnSelect" rect="0,0,720,0" extendstyle="1117">	
			<image name="n" rect="0,0,720,0" style="autosize" extendstyle="1117" src="file://image/novel_item_nbg.png"/>
			<node name="s" rect="0,0,720,0"  extendstyle="1117">
			   <shadow  rect="0,0,720,0" color="#000000" alpha="75"  extendstyle="1117"/>
			   <shadow  rect="0,0,20,0" color="#fb6c03"  alpha="255" extendstyle="1117"/>
			</node>
			<label name="novelChildName" rect="30,20,400,50" v-align="center" postfix=".."  extendstyle="1111" color="#999999"  font-size="30"/>
			<image name="rimg" rect="650,25,40,40" style="autosize"  extendstyle="1111" src="file://image/play_go.png"/>					
			</button>
	</node>
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
	</node>
	</body>
</root>
<cms:include filepath="${lua}" />