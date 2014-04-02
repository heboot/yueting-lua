<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_albumList.wdml" /><%//定义本文件lua部分模板路径%>
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
	<node rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
		<node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		<image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		<button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    <button name="personalHomepageBtn" normal="n" sel="s" rect="600,15,104,61" extendstyle="1111" OnSelect="personalHomepageBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label rect="0,0,104,61" extendstyle="1111" text="主页" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
		</node>
		<node name="contentNode" rect="0,0,720,0"  extendstyle="1817" >
	    <listview name="albumListview" rect="0,0,720,0"  extendstyle="1117" limit="false">
		</listview>
	    </node>
	</node>
	
	<!--左侧菜单推荐的电台数据item-->
	<node name="albumItem" rect="0,0,720,172" extendstyle="1010"  visible="0" enable="0" active="0">
		    <button name="albumItemBtn" normal="n" sel="s" disabled="d" data="" OnSelect="albumItemBtnOnSelect" rect="0,0,720,0" extendstyle="1117">					
			<node name="s" rect="0,0,720,0"  extendstyle="1117">
			<shadow rect="0,0,720,0" alpha="50" color="#000000" extendstyle="1117"/> 
			<shadow rect="0,0,8,0" alpha="255" color="#fb6c03" extendstyle="1117"/> 
			</node>
			<node name="d" rect="0,0,720,0"  extendstyle="1117">
			<shadow rect="0,0,720,0" alpha="50" color="#000000" extendstyle="1117"/>
            <shadow rect="0,0,8,0" alpha="255" color="#fb6c03" extendstyle="1117"/> 			
			</node>
			<image rect="10,19,237,133" src="file://image/noveldefaultbg.png" style="autosize" extendstyle="1010"  BuildChildrenFinished="resChoose"><node/></image>	
			<image name="albumImage"  rect="10,19,237,133" style="autosize" extendstyle="1010"/>
			<label name="albumName" rect="270,35,400,55" v-align="center" postfix=".."  extendstyle="1111" color="#FFFFFF"  font-size="35"/>
			<label rect="270,110,70,40" v-align="center" h-align="center" text="主播:" extendstyle="1111" color="#999999"  font-size="28"/>			
			<label name="albumAnchor" rect="0,110,200,40" v-align="center"  postfix=".."  extendstyle="8111" color="#999999"  font-size="28"/>
			<image name="rimg" rect="650,70,50,50" style="maxsize"  extendstyle="1111" src="file://image/play_go.png"/>		
            <image rect="0,0,720,4" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>			
			</button>
	</node>	
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />