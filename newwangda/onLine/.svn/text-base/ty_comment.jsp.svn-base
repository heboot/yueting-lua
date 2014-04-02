<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_comment.wdml" /><%//定义本文件lua部分模板路径%>
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
        <image rect="0,0,720,1280" src="file://image/background.png"   style="autosize" alpha="255" extendstyle="1010" />
		<node  rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
        <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		    <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		    <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		    <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
            <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="评论" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
		</node> 		
		<node rect="17,100,686,950" extendstyle="1011">
		    <image rect="0,0,686,0" style="autosize" src="file://image/commmentbg.png" extendstyle="1017"/>
			<listview name="commentlv" rect="0,0,686,0"  extendstyle="1017" scroll="auto"  OnOverTrail="contentListOnOverTrail" visible="1" enable="1">
            </listview>
		</node>		
		<node rect="17,1050,686,118" extendstyle="1110">
		     <image rect="0,19,550,80" extendstyle="1111" style="autosize" src="file://image/commenteditbg.png"/>
		     <label name="defaultText" rect="10,19,530,80" extendstyle="1010" v-align="center" text="我也来说一句" font-size="32" color="#c8c8c8" />
		     <edit name="editCommentContent" rect="10,19,530,80" v-align="center" extendstyle="1010" OnSetFocus="commentEditFocus" OnLostFocus="commentEditLostFocus" font-size="32" color="#A3A3A3" text=""/>
		     <button name="sendCommentBtn" rect="560,19,130,80" extendstyle="1010"  OnSelect="sendCommentBtnOnSelect">
		         <image rect="0,0,130,80" style="autosize" src="file://image/commentbt.png" extendstyle="1111"/>
		         <label  rect="0,0,130,80" extendstyle="1010" v-align="center" h-align="center" text="发送" font-size="24" color="#c8c8c8" />
		     </button>
		</node>	
		<node name="commentItem" rect="0,0,686,160"  visible="0" extendstyle="1010">   
            <image name="usrdefault" rect="15,18,72,72" src="file://image/dft_headimg_mid.jpg" style="autosize" extendstyle="1000" BuildChildrenFinished="resChoose"><node/></image>
            <image name="usrIcon" rect="15,18,72,72" src="" style="autosize" extendstyle="1000" />
			<image name="usrIconMsak" rect="15,18,72,72" src="file://image/commentmask.png" style="autosize" extendstyle="1000" />
            <label name="usrName" rect="120,16,400,70" text="" color="#000000" font-size="28" h-align="left" alpha ="128" v-align="center" extendstyle="1010"/>
            <textarea name="commentcontent" rect="14,90,672,70" extendstyle="1010" postfix=".." color="#000000" alpha ="128" line-height="40" font-size="30" text="" autoextend="true" />
            <image rect="500,25,32,32" style="autosize" extendstyle="1000" src="file://image/history.png" />
            <label name="beforeTime" rect="538,25,150,32" text="" font-size="22" color="#a4aba2" h-align="left" v-align="center" extendstyle="1010" />
            <shadow name="lineNode" rect="10,0,666,1" color="#CCCCCC" alpha="255" extendstyle="1514"/>       	
		</node>
		<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>	
        </node>		
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />