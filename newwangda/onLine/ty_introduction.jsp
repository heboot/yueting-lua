<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_introduction.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="utf-8"?>
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
        <image rect="0,0,720,1280" src="file://image/background.png"   alpha="255" extendstyle="1177" />
        <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		    <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		    <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		    <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
            <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="个人简介" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
		    <button name="editBtn" normal="n" sel="s" rect="600,15,104,61" extendstyle="1111" OnSelect="editBtnOnSelect" visible="1" enable="1">
		    <image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		    <image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		    <label name="editLabel" rect="0,0,104,61" extendstyle="1111" text="编辑" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		    </button>
		</node> 
		<node  rect="15,120,690,541"  extendstyle="1111">
		    <node name="labelNode" rect="0,0,0,0" extendstyle="1077">
			<textarea  name="contentLabelDesc" option="numeric" rect="0,0,0,0" extendstyle="1077" color="#BBC0B9" font-size="35" line-height="50" autoextend="true"/>
			</node>
			<node name="editNode" rect="0,0,0,0" extendstyle="1077" visible="0" enable="0">
			<image rect="0,0,0,0" style="autosize" src="file://image/settingcontentdesc_bg.png" extendstyle="1077"/>
			<edit name="contentDesc" option="numeric" rect="0,0,0,0" extendstyle="1077" color="#BBC0B9" font-size="35" multiline="true" max-size="120"/>
		    </node>
		</node>
		<node name="noCommentNode" rect="0,0,0,0"  extendstyle="1177">
		<label rect="0,0,0,0" extendstyle="1077"  text="暂无简介" alpha="50" v-align="center" h-align="center" color="#6E6E6E"  font-size="60"/>
		</node>
		<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />