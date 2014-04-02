<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_anchorcollected.wdml" /><%//定义本文件lua部分模板路径%>
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
		</node>
		<button name="managerBtn" normal="n" sel="s" rect="600,15,104,61" extendstyle="1111" OnSelect="managerBtnOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label name="managername" rect="0,0,104,61" extendstyle="1111" text="管理" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
		<image src="file://image/novel_listbg.png" style="autosize" rect="20,100,686,0" padding="0,0,20,0"   extendstyle="1016" />
		<node name="contentNode" rect="20,120,686,0" padding="0,0,20,0"   extendstyle="1116" >
	    <listview name="noticerListview" rect="0,0,686,0"  extendstyle="1117" limit="false" OnOverTrail="contentListOnOverTrail">
		</listview>
	    </node>
	</node>
	
	<!--左侧菜单推荐的电台数据item-->
	<node name="noticerItem" rect="0,0,686,120" extendstyle="1010"  visible="0" enable="0" active="0">
		    <button name="noticerItemBtn" normal="n" sel="s" OnSelect="noticerItemBtnOnSelect" rect="0,0,686,0" extendstyle="1117">					
			<image rect="0,0,686,2" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>
			<shadow name="s" rect="0,0,686,0" alpha="50" color="#000000" extendstyle="1117"/> 
			</button>
			<image name="anchorImage" rect="20,10,96,96" style="maxsize" extendstyle="1111" src="file://image/novel_test2.png">	
			<image rect="0,0,96,96" style="maxsize" extendstyle="1111" src="file://image/sd_spacemask.png"/>	
		    </image>
			<label name="podcastAnchor" rect="150,30,200,40" v-align="center"  postfix=".."  extendstyle="1111" color="#999999"  font-size="28"/>
			<image name="rimg" rect="600,30,50,50" style="maxsize"  extendstyle="1111" src="file://image/arrow.png"/>					
			
			<button name="deleteBtn" rect="560,20,89,52" style="maxsize" OnSelect="unfollowBtnOS" extendstyle="1011">
			 <image rect="0,0,120,52" style="autosize" src="file://image/deletebtn.png"  extendstyle="1011"/>
			 <label rect="0,0,120,52" extendstyle="1111"  h-align="center" v-align="center"  text="取消关注"  color="#FFFFFF"  font-size="25"/>
		    </button>
	</node>	
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />