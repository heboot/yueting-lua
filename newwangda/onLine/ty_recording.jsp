<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/recording/ty_recording.wdml" /><%//定义本文件lua部分模板路径%>
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
         <image rect="0,0,720,1280" src="file://image/background.png"   style="autosize"   alpha="255" extendstyle="1111" />
         <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		     <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		     <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			     <image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			     <image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		         <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			 </button>
             <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="录音" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>	    
		 </node> 		
		 <node rect="0,320,720,150"  extendstyle="1010" font-family="TianyiDigital">
		     <label  name="audioCurTime"  rect="0,0,466,150" color="#FFFFFF" text="00:00" font-size="145" v-align="center" h-align="right" extendstyle="1010"/>
		     <label  name="audioCurTimeSS"  rect="0,0,254,85" color="#FFFFFF" text=":00" font-size="80" v-align="center" h-align="left" extendstyle="8510"/>
	     </node>
		 <node  rect="0,0,720,600"  extendstyle="1511">
		     <label name="recordingLabel" rect="0,40,720,50" text="录音"  font-size="35" h-align="center" color="#FFFFFF" extendstyle="1010"/>
		     <button name="tryListenBtn" nornal="n" sel="s" rect="0,30,130,95" extendstyle="1010"  OnSelect="tryListenBtnOnSelect" visible="1" enable="1">
		         <image name="n" rect="0,0,130,95" style="autosize" src="file://image/recording2_n.png" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		         <image name="s" rect="0,0,130,95" style="autosize" src="file://image/recording2_s.png" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		         <label rect="0,0,130,95" text="试听"  v-align="center" h-align="center" font-size="28" color="#000000" extendstyle="1010"/>
		     </button>	
		     <button name="reRecordingBtn" nornal="n" sel="s" rect="0,340,130,95" extendstyle="1010"  OnSelect="reRecordingBtnOnSelect" visible="1" enable="1">
		         <image name="n" rect="0,0,130,95" style="autosize" src="file://image/recording2_n.png" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		         <image name="s" rect="0,0,130,95" style="autosize" src="file://image/recording2_s.png" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		         <label rect="0,0,130,95" text="重录"  v-align="center" h-align="center" font-size="28" color="#000000" extendstyle="1010"/>
		     </button>
		         <button name="recordingBtn" nornal="n" sel="s" rect="156,0,407,413" extendstyle="1510"  OnSelect="recordingBtnOnSelect" visible="1" enable="1">
		         <image name="n" rect="0,0,407,413" style="maxsize" src="file://image/recording_n.png" extendstyle="1010"/>
		         <image name="s" rect="0,0,407,413" style="maxsize" src="file://image/recording_s.png" extendstyle="1010"/>
		     </button>
		     <button name="uploadBtn" nornal="n" sel="s" rect="0,340,130,95" extendstyle="5010"  OnSelect="uploadBtnOnSelect" visible="1" enable="1">
		         <image name="n" rect="0,0,130,95" style="autosize" src="file://image/recording1_n.png" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		         <image name="s" rect="0,0,130,95" style="autosize" src="file://image/recording1_s.png" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		         <label rect="0,0,130,95" text="上传"  v-align="center" h-align="center" font-size="28" color="#000000" extendstyle="1010"/>
		     </button>
		 </node>
		<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />