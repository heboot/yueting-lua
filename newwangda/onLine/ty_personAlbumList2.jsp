<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_personAlbumList2.wdml" /><%//定义本文件lua部分模板路径%>
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
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    <button name="editBtn" normal="n" sel="s" rect="600,15,104,61" extendstyle="1111" OnSelect="editBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label name="editBtnLabel" rect="0,0,104,61" extendstyle="1111" text="编辑" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
	   </node>
		<node name="contentNode" rect="0,90,720,0" padding="0,0,20,0"   extendstyle="1116" >
		   <panorama name="mainPanorama" rect="0,0,720,0" extendstyle="1017" foreground="panoramaItem1">
		   <panoramaitem name="panoramaItem1" rect="0,0,720,0" extendstyle="1017">
		   <image rect="270,200,173,135" style="maxsize" alpha="155" extendstyle="1014" src="file://image/nothingbg.png"/>
		   <label rect="0,380,720,50" text="空空如也" v-align="center" alpha="75" h-align="center" postfix=".."  extendstyle="1010" color="#CCCCCC"  font-size="35"/>
		   <label rect="0,460,720,50" text="您可以添加作品到本专辑" v-align="center" alpha="255" h-align="center" postfix=".."  extendstyle="1010" color="#000000"  font-size="30"/>
           </panoramaitem>
		   <panoramaitem name="panoramaItem2" rect="0,0,720,0" extendstyle="1017" visible="1">
		   <listview name="podcastListview" rect="0,0,720,0"  extendstyle="1117" limit="false">
		   </listview>
           </panoramaitem>
		   </panorama>	    
	    </node>
	</node>
	
	<!--左侧菜单推荐的电台数据item-->
	<node name="podcastItem" rect="0,0,720,172" extendstyle="1010"  visible="0" enable="0" active="0">
		    <button name="podcastItemBtn" normal="n" sel="s" OnSelect="podcastItemBtnOnSelect" rect="0,0,720,0" extendstyle="1117">								
			<shadow name="s" rect="0,0,720,0" alpha="50" color="#000000" extendstyle="1117"/> 
			</button>
			<image rect="20,19,237,133" src="file://image/noveldefaultbg.png" style="autosize" extendstyle="1010"  BuildChildrenFinished="resChoose"><node/></image>	
			<image name="podcastImage"  rect="20,19,237,133" style="autosize" extendstyle="1010"/>
			<label name="podcastName" rect="270,0,380,172" v-align="center" h-align="left" postfix=".."  extendstyle="1111" color="#FFFFFF"  font-size="35"/>	
			<button name="deleteBtn" rect="620,64,89,52" style="maxsize" visible="0" enable="0" OnSelect="deleteBtnOnSelect" extendstyle="1011">
	        <image rect="0,0,89,52" style="maxsize" src="file://image/deletebtn.png"  extendstyle="1011"/>
	        <label rect="0,0,89,52" extendstyle="1111"  h-align="center" v-align="center"  text="移除"  color="#FFFFFF"  font-size="25"/>
	        </button>
			<image name="arrowGo" rect="670,78,31,34" style="maxsize"  extendstyle="1111" src="file://image/play_go.png"/>	
            <image rect="0,0,720,2" style="autosize" extendstyle="1514" src="file://image/leftlistview_line.png"/>			
	</node>	
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />