<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_mycollected.wdml" /><%//定义本文件lua部分模板路径%>
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
	<node rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
		<node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		<image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		<button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="个人收藏" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    </node>
		
		
		<node name="contentNode" rect="20,120,0,0" padding="0,0,20,0"   extendstyle="1176" >
		<list name="collecedList" rect="0,0,0,0" col="1" line="6" auto-adjust="true" offset="0,10" extendstyle="1176">
					<list-item name="collecedItem" rect="0,0,680,100">					
				    <button name="collecedBtn" normal="n" sel="s" OnSelect="collecedBtnOnSelect" rect="0,0,680,0" extendstyle="1117">					
					<image rect="0,0,680,0" style="autosize" extendstyle="1117" src="file://image/right_item_background.png"/>
				    <node name="n" rect="0,0,680,0" extendstyle="1117">
				    <image rect="20,30,50,50" style="autosize" extendstyle="1111" src="file://image/left_collect.png"/>
					<label rect="100,28,100,50" v-align="center" autoextend="true" extendstyle="1111" text="$(txt)" color="#999999"  font-size="30"/>
					</node>
					<node name="s" rect="0,0,680,0" extendstyle="1117">
				    <image rect="20,30,50,50" style="autosize" extendstyle="1111" src="file://image/left_collect_s.png"/>
					<label rect="100,28,100,50" v-align="center" autoextend="true" extendstyle="1111" text="$(txt)" color="#e15e00"  font-size="30"/>
					</node>
					<image rect="600,30,50,50" style="autosize"  extendstyle="111" src="file://image/arrow.png"/>					
					</button>
				    </list-item>
					<dataset>
					
                    <set txt="电台收藏"/>	
                    <set txt="小说收藏"/>	
                    <set txt="作品收藏"/>	
                    <set txt="关注的人"/>	
                    <set txt="下载收藏"/>						
					</dataset>
		</list>
	    </node>
	</node>
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		

	
	
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />