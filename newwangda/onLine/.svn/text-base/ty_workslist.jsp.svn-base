<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_workslist.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="UTF-8"?>
<!--
 == ============================================================================
 == | WonderTek [ 网络无处不在，沟通及时到达 ]
 == ============================================================================
 == | Copyright (c) 2013, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Desc: 帮助
 == ============================================================================
-->
<root>
    <header>
	     <script src="${cpath}/publish/clt${common}?time=${lastModifiedCommon}" /><%//远程加载common模板,实现common修改后下载最新common%>
    </header>
	<body BuildChildrenFinished="bodyBuildChildrenFinished" OnSpriteEvent="bodyOnSpriteEvent" OnPluginEvent="bodyOnPluginEvent" resolution="720,1280">
    <node name="mainNode" rect="0,0,720,1280" extendstyle="1111" layouttype="1" OnKeyUp="mainNodeOnKeyUp">
        <image rect="0,0,720,1280" src="file://image/background.png"  style="autosize"  alpha="255" extendstyle="1177" />
		<node  rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
        <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		    <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		    <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		    <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
            <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="作品" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
		</node> 
		<image src="file://image/novel_listbg.png" style="autosize" rect="20,100,686,0" padding="0,0,20,0"   extendstyle="1016" />
		<node name="contentNode" rect="20,120,686,0" padding="0,0,20,0"   extendstyle="1116" >		
		 <panorama name="mainPanorama" rect="0,0,686,0" extendstyle="1017" foreground="panoramaItem1">
		    <panoramaitem name="panoramaItem1" rect="0,0,686,0" extendstyle="1017">
		      <image rect="270,200,173,135" style="maxsize" alpha="155" extendstyle="1014" src="file://image/nothingbg.png"/>
		      <label rect="0,380,686,50" text="空空如也" v-align="center" alpha="75" h-align="center" postfix=".."  extendstyle="1010" color="#CCCCCC"  font-size="35"/>		      
           </panoramaitem>
		   <panoramaitem name="panoramaItem2" rect="0,0,686,0" extendstyle="1017" visible="1">
		      <listview name="podcastListview" rect="0,0,686,0"  extendstyle="1117" limit="false">
		      </listview>
           </panoramaitem>
		 </panorama>
	    </node>
		<node name="podcastItem" rect="0,0,686,241" extendstyle="1010"  visible="0" enable="0" active="0">
		    <button name="podcastItemBtn" normal="n" sel="s" OnSelect="podcastItemBtnOnSelect" rect="0,0,686,176" extendstyle="1010">								
			   <shadow name="s" rect="0,0,686,176" alpha="50" color="#000000" extendstyle="1010"/> 
			</button>
			<image rect="20,19,237,133" src="file://image/noveldefaultbg.png" style="autosize" extendstyle="1010"  BuildChildrenFinished="resChoose"><node/></image>	
			<image name="podcastImage"  rect="20,19,237,133" style="autosize" extendstyle="1010"/>
			<label name="podcastName" rect="270,35,350,55" v-align="center" postfix=".."  extendstyle="1111" color="#FFFFFF"  font-size="35"/>
			<label rect="270,110,80,40" v-align="center" text="作者:" extendstyle="1111" color="#999999"  font-size="28"/>			
			<label name="podcastAuthor" rect="0,110,150,40" v-align="center"  postfix=".."  extendstyle="8111" color="#999999"  font-size="28"/>
			<label name="podcastIsCheck" rect="510,110,120,40" v-align="center"  postfix=".."  extendstyle="1111" color="#999999"  font-size="35"/>
			<image name="rimg" rect="620,70,50,50" style="maxsize"  extendstyle="1111" src="file://image/ischecked2.png"/>
            <image name="podcastLine" rect="0,0,686,2" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>
            <node name="checkNode" rect="0,176,686,65" extendstyle="1010" visible="0" enable="0">
			    <image name="podcastLine2" rect="0,0,686,2" style="autosize" extendstyle="1010" src="file://image/leftlistview_line.png"/>
				<button name="playTimesBtn" rect="0,0,227,56" normal="n" sel="s" extendstyle="1010" OnSelect="playTimesBtnOnSelect">
				    <shadow name="s" rect="0,0,227,0" alpha="50" color="#000000" extendstyle="1117"/>
					<image rect="20,8,39,39" style="autosize" extendstyle="1010" src="file://image/playtimes2.png" BuildChildrenFinished="resChoose"><node/></image>
					<label name="playCount" rect="70,0,157,56" text="播放数0" v-align="center"  h-align="center" postfix=".."  extendstyle="1010" color="#ffffff"  font-size="30"/>
				</button>
				<shadow rect="0,0,2,50" alpha="50" color="#000000" extendstyle="8010"/>
				<button name="deleteBtn" rect="0,0,227,56" normal="n" sel="s" extendstyle="8010" OnSelect="deleteBtnOnSelect">
				    <shadow name="s" rect="0,0,227,0" alpha="50" color="#000000" extendstyle="1117"/>
					<image rect="20,8,39,39" style="autosize" extendstyle="1010" src="file://image/delete2.png" BuildChildrenFinished="resChoose"><node/></image>
					<label rect="70,0,150,56" text="删除作品" v-align="center"  h-align="center" postfix=".."  extendstyle="1010" color="#ffffff"  font-size="30"/>
				</button>
				<shadow rect="0,0,2,50" alpha="50" color="#000000" extendstyle="8010"/>
				<button name="moveToBtn" rect="0,0,227,56" normal="n" sel="s" extendstyle="8010" OnSelect="moveToBtnOnSelect">
				    <shadow name="s" rect="0,0,227,0" alpha="50" color="#000000" extendstyle="1117"/>
					<image rect="20,8,39,39" style="autosize" extendstyle="1010" src="file://image/moveto2.png" BuildChildrenFinished="resChoose"><node/></image>
					<label rect="70,0,150,56" text="添加至..." v-align="center"  h-align="center" postfix=".."  extendstyle="1010" color="#ffffff"  font-size="30"/>
				</button>
			</node>
	    </node>	
		<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
    </node>		
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />