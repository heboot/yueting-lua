<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/novel/ty_novelcollected.wdml" /><%//定义本文件lua部分模板路径%>
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
	<!--main -->
	<node  rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
		<node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		<image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		<button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="小说收藏" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    </node>
		<button name="managerBtn" normal="n" sel="s" rect="600,15,104,61" extendstyle="1111" OnSelect="managerBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label name="managername" rect="0,0,104,61" extendstyle="1111" text="管理" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
		<image src="file://image/novel_listbg.png" style="autosize" rect="20,100,686,0" padding="0,0,20,0"   extendstyle="1016" />
		<node name="contentNode" rect="20,120,686,0" padding="0,0,20,0"   extendstyle="1116" >
	    <listview name="contentListview" rect="0,0,686,0"  extendstyle="1117">
		</listview>
	    </node>
	</node>
	
	<!--左侧菜单推荐的电台数据item-->
	<node name="contentItem" rect="0,0,686,160" extendstyle="1010"  visible="0" enable="0" active="0">
		<button name="novelItemBtn" normal="n" sel="s" OnSelect="novelItemBtnOnSelect" rect="0,0,686,0" extendstyle="1117">					
	    <image rect="0,0,686,2" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>
		<shadow name="s" rect="0,0,686,0" alpha="50" color="#000000" extendstyle="1117"/>
        </button>			
		<image name="novelImage"  rect="20,15,210,141" style="autosize" extendstyle="1111"/>
		<label name="novelName" rect="250,10,400,55" v-align="center" postfix=".."  extendstyle="1111" color="#FFFFFF"  font-size="35"/>	
		<label rect="250,100,70,40" v-align="center" h-align="center" text="主播:" extendstyle="1111" color="#999999"  font-size="28"/>			
		<label name="novelAnchor" rect="0,100,200,40" text="佚名" v-align="center"   postfix=".."  extendstyle="8111" color="#999999"  font-size="28"/>
		<image name="arrowGo" rect="570,70,50,50" style="autosize"  extendstyle="1111" src="file://image/arrow.png"/>	
        <button name="deleteBtn" rect="560,64,89,52" style="maxsize" visible="0" enable="0" OnSelect="deleteBtnOnSelect" extendstyle="1011">
	    <image rect="0,0,89,52" style="maxsize" src="file://image/deletebtn.png"  extendstyle="1011"/>
	    <label rect="0,0,89,52" extendstyle="1111"  h-align="center" v-align="center"  text="删除"  color="#FFFFFF"  font-size="25"/>
	    </button>						
	</node>
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
	
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />