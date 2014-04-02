<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/search/ty_search.wdml" /><%//定义本文件lua部分模板路径%>
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
	<node name="mainNode" rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">		
		<node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">		
		<node name="searchNode" rect="20,20,450,70" extendstyle="1011">
			<image src="file://image/loginedit_bg.png" extendstyle="1177" style="autosize"/>
			<!--<button name="searchTypeBtn" rect="0,0,120,70" extendstyle="1111">
				<image src="file://image/radiotopbtn_bg.png" rect="0,0,100,0" extendstyle="1117" style="autosize"/>
				<label name="searchTypeName" rect="0,0,80,70" v-align="center" h-align="center" text="内容" extendstyle="1111" color="#FFFFFF"/>
			</button>-->
			<edit name="searchText" font-size="50"  rect="0,0,350,70" color="#CCCCCC" extendstyle="1111">	
			</edit>			
		</node>	
		<node rect="0,20,240,60" extendstyle="5111">
			<button name="searchBtn" normal="n" sel="s" rect="10,0,120,61" extendstyle="1111" OnSelect="searchBtnOnSelect" visible="1" enable="1">
			     <image name="n" rect="0,0,104,0" style="autosize" src="file://image/searchbtn_n.png" extendstyle="1017"/>
			     <image name="s" rect="0,0,104,0" style="autosize" src="file://image/searchbtn_f.png" extendstyle="1017"/>
			     <label rect="0,0,104,61" extendstyle="1111" text="搜索" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
			<button name="backBtn" normal="n" sel="s" rect="10,0,104,65" extendstyle="8111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			     <image name="n" rect="0,0,0,0" style="autosize" src="file://image/searchclose_n.png" extendstyle="1077"/>
			     <image name="s" rect="0,0,0,0" style="autosize" src="file://image/searchclose_f.png" extendstyle="1077"/>
			     <label rect="0,0,104,61" extendstyle="1111" text="关闭" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>		
		</node>
        <!--<label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="加载中" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>-->
	    </node>		
		<image src="file://image/novel_listbg.png" style="autosize" rect="20,100,686,0" padding="0,0,20,0"   extendstyle="1016" />
		<node name="contentNode" rect="20,120,686,0" padding="0,0,20,0"   extendstyle="1116" >
	         <listview name="searchDataListview" rect="0,0,686,0"  extendstyle="1117" limit="false">
		     </listview>		
		     <label name="noHaveResult" rect="0,300,686,100" extendstyle="1111" h-align="center" v-align="center" text="请输入搜索关键字"/>	
	    </node>
	</node>
	<node name="searchDataItem" rect="0,50,686,160" extendstyle="1070"  visible="0" enable="0" active="0">
		    <button name="searchDataItemBtn" normal="n" sel="s" OnSelect="searchDataItemBtnOnSelect" rect="0,0,686,0" extendstyle="1117">					
			<image name="n" rect="0,0,686,0" style="autosize" extendstyle="1117" src="file://image/novel_listitem_bg.png"/>
			<shadow name="s" rect="0,0,686,0" alpha="50" color="#000000" extendstyle="1117"/> 
			<image src="file://image/defaultbg.png" rect="20,15,210,141" style="autosize" extendstyle="1111"/>
			<image name="searchDataImage" src="file://image/defaultbg.png" rect="20,15,210,141" style="autosize" extendstyle="1111"/>
			<image name="filterImage" visible="0" rect="20,15,96,96" style="maxsize" extendstyle="1111" src="file://image/authorfliter.png"/>	
			<label name="searchDataName" rect="250,10,400,55" v-align="center" postfix=".."  extendstyle="1111" color="#FFFFFF"  font-size="35"/>
			<!--<label rect="250,100,70,50" v-align="center" text="作者:" h-align="center"  extendstyle="1111" color="#999999"  font-size="28"/>-->		
			<label name="searchDataAuthor" rect="0,100,80,50" v-align="center" h-align="center" postfix=".."  extendstyle="8111" color="#999999"  font-size="28"/>
			<label name="anchorLbl" rect="250,100,70,40" v-align="center" h-align="center" text="主播:" extendstyle="1111" color="#999999"  font-size="28"/>			
			<label name="novelAnchor" rect="0,100,200,40" v-align="center"  postfix=".."  extendstyle="8111" color="#999999"  font-size="28"/>
			<image name="rimg" rect="600,70,50,50" style="autosize"  extendstyle="1111" src="file://image/arrow.png"/>					
			</button>
	</node>	
	     <node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>		
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />