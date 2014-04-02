<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_podcastdownload.wdml" /><%//定义本文件lua部分模板路径%>
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
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="播客下载" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    </node>
	
		<image src="file://image/novel_listbg.png" style="autosize" rect="20,100,686,0" padding="0,0,100,0"   extendstyle="1016" />
		<node name="contentNode" rect="20,120,686,0" padding="0,0,20,0"   extendstyle="1116" >
	    <listview name="contentListview" rect="0,0,686,0" padding="0,0,100,0" extendstyle="1116">
		</listview>
		
		<node rect="0,0,0,80" extendstyle="1571">
		<button name="downloadBtn" OnSelect="downloadBtnOnSelect" rect="0,0,0,0" extendstyle="1177">	
		
		<image name="downbtnn"  visible="1"   rect="0,0,0,0" style="autosize" src="file://image/alldownload_btnn.png" extendstyle="1077"/>
		<image name="downbtns"  visible="0"  rect="0,0,0,0" style="autosize" src="file://image/alldownload_btns.png" extendstyle="1077"/>
		
		<label name="downbtnlbl" text="确定下载" rect="280,20,0,0" h-align="true" v-align="true"  color="#999999" extendstyle="1177"/>
		</button>
		
		
		</node>
	    </node>
	</node>
	
	<!--左侧菜单推荐的电台数据item-->
	<node name="contentItem" rect="0,0,686,90" extendstyle="1010"  visible="0" enable="0" active="0">		  				
	   <button name="radiolistBtn"  rect="2,0,686,0"  sel="s"  OnSelect="radiolistBtnOnSelect" extendstyle="1017">
	   <shadow name="s" rect="0,0,0,0" alpha="50" color="#000000" extendstyle="1077"/>
	   <image name="checkBoxN"  visible="1" rect="10,10,58,59" style="autosize" src="file://image/tick_n.png" extendstyle="1011" BuildChildrenFinished="resChoose"><node/></image>
	   <image name="checkBoxF" rect="10,10,58,59" extendstyle="1011" visible="0" style='autosize' src="file://image/tick_f.png" BuildChildrenFinished="resChoose"><node/></image>
	   </button>	
	   <label name="radioName" rect="80,15,500,45" extendstyle="1111"  text=""  color="#FFFFFF"  font-size="30"/>
	   
	   <image name="progressBarBg"  visible="1" enable="1" rect="80,65,200,10" style="maxsize" extendstyle="1111"  src="file://image/progress_bg1.png" />
	   <image name="progressBarImg"  visible="1" enable="1" rect="80,65,400,10" style="maxsize"  extendstyle="1111"  src="file://image/progress_barimg.png" />	
	   
	   <image rect="0,0,0,2" style="autosize" src="file://image/leftlistview_line.png" extendstyle="1570"/>
	  			
	</node>
	
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>  
    </node>	
</body>
</root>
<cms:include filepath="${lua}"/>