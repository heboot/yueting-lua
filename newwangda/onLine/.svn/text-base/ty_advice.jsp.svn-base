<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_advice.wdml" /><%//定义本文件lua部分模板路径%>
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
            <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="用户反馈" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
		</node> 
		<node rect="38,120,644,541"  extendstyle="1111">
			<image rect="0,0,0,0" style="autosize" src="file://image/settingcontentdesc_bg.png" extendstyle="1077"/>
            <label name="blankTip" rect="0,0,0,80" extendstyle="1070" text="请在此写下您的宝贵意见" v-align="center" h-align="center" font-size="32" alpha="50"color="#BBC0B9"/>
            <edit name="contentDesc" option="numeric" rect="0,0,0,0" extendstyle="1077" color="#BBC0B9" OnTextChanged="editOnTextChanged" font-size="35" multiline="true" max-size="120"/>
		</node>
		<node rect="38,720,644,120"  extendstyle="1111">
		<button style="autosize" OnSelect="sendAdviceOnSelect" extendstyle="0077">
		   <image rect="0,0,0,0" src="file://image/settingsend_bg.png"  style="autosize" extendstyle="1177" />
		   <label rect="0,0,0,0" extendstyle="1177"  text="发送"  color="#D2691E"  v-align="center" h-align="center" font-size="30"/>
	    </button>
		</node>
		<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />