<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_checkin.wdml" /><%//定义本文件lua部分模板路径%>
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
	<node rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
		 <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		     <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		     <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
		         <image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		         <image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		         <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		     </button>
             <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="签到" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    </node>
		<node rect="0,0,720,150"  extendstyle="1810">
		     <label rect="20,0,500,150" extendstyle="1111" text="连续签到，赢取特权奖励" color="#FFFFFF"  v-align="center" font-size="35"/>
		     <image rect="476,25,219,120" style="autosize" src="file://image/checkindays.png" extendstyle="1010">
			     <label name="checkInDaysName" rect="0,0,219,80" extendstyle="1010" text="0" color="#FFFFFF"  h-align="center" v-align="center" font-size="35" visible="0"/>
			 </image>
		</node>
		<node rect="17,0,686,54"  extendstyle="1810">
		     <image  name="progressImg" rect="0,0,686,54" style="autosize" extendstyle="1010" src="file://image/checkinprogress.png">
				 <image  name="progressBarImg"rect="0,0,0,0" style="sudoku-auto" sudoku="5,5,5,5" extendstyle="1010" src="file://image/checkinprogressbg2.png"/>
			 </image>
		</node>
		<node rect="10,0,700,80"  extendstyle="1810">
		     <shadow rect="0,15,100,50" alpha="100" color="#FFFFFF" extendstyle="1010"/>
		     <label name="checkInDaysName1"  rect="0,15,100,50" extendstyle="1010" text="0天" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</node>
		<node rect="0,0,720,110"  extendstyle="1810">
		     <button name="checkinBtn" normal="n" sel="s" rect="199,14,322,82" extendstyle="1111" OnSelect="checkinBtnOnSelect" visible="1" enable="1">
		         <image rect="0,0,322,82" style="autosize" src="file://image/ischeckin.png" extendstyle="1010"/>
		         <label name="checkinName" rect="0,0,322,82" text="今日签到"  alpha="125" color="#fe8300" v-align="center" h-align="center" font-size="35" extendstyle="1010"/>
		     </button>
		</node>
		<node rect="10,485,700,60"  extendstyle="1010">
		     <image rect="0,0,700,60" style="autosize" src="file://image/checkinranklist.png" extendstyle="1010"/>
		     <label rect="0,0,700,60" extendstyle="1111" text="签到排行" color="#FFFFFF" v-align="center" h-align="center" font-size="25"/>
		</node>
		<node name="contentNode" rect="0,549,720,0" padding="0,0,5,0"   extendstyle="1016" >
	         <listview name="checkinListview" rect="0,0,720,0"  extendstyle="1117" limit="false">
		     </listview>
	    </node>
	</node>
	
	<node name="checkinItem" rect="0,0,720,90" extendstyle="1010"  visible="0" enable="0" active="0">
		 <button name="checkinItemBtn" normal="n" sel="s" OnSelect="checkinItemBtnOnSelect" rect="0,0,720,0" extendstyle="1117">					
		     <image rect="0,0,720,3" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>
		     <shadow name="s" rect="0,0,720,0" alpha="50" color="#000000" extendstyle="1117"/> 
		     <label name="checkinRank" rect="40,0,100,90" v-align="center" h-align="center" text="" extendstyle="1111" color="#999999"  font-size="28"/>
		     <image name="checkinImage"  rect="280,10,70,70" style="autosize" extendstyle="1010"/>
			 <image rect="280,10,70,70" src="file://image/chickinfliter.png" style="autosize" extendstyle="1010" />	
		     <label name="checkinName" rect="470,0,150,90" v-align="center" h-align="center" postfix=".."  extendstyle="1111" color="#999999"  font-size="28"/>			
		</button>
	</node>	
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>	
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />