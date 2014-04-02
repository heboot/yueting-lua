<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_personHomePage.wdml" /><%//定义本文件lua部分模板路径%>
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
		<!--背景、头像以及相关资料 node-->
		<node rect="0,0,720,270"  extendstyle="1810">
		     <image name="spaceBg" rect="0,0,720,270" style="autosize" src="file://image/personalhomepagebg.png" extendstyle="1010"/>
		     <button name="spaceBgEdit" rect="0,0,720,270" extendstyle="1010" OnSelect="spaceBgEditOS"/>
		     <button name="msgImgBtn" rect="10,10,176,176" extendstyle="1010" OnSelect="msgImgBtnOnSelect">
		         <image rect="0,0,176,176" style="maxsize" src="file://image/personalhomepageimgbg.png" extendstyle="1010"/>
		         <image name="msgImg" rect="3,3,170,170" style="maxsize" src="file://image/dft_headimg_big.jpg" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		     </button>
		     <label name="gradeName" rect="220,30,120,50" text="LV.0" font-size="36" color="#ffffff" extendstyle="1077"/>
			 <button name="checkInBtn" rect="220,110,270,50"  OnSelect="checkInBtnOnSelect">
		     <label rect="0,0,150,50" text="粉丝数:" font-size="36"  v-align="center" color="#ffffff" extendstyle="1010"/>
		     <label name="fansTotal" rect="0,0,120,50" text="" v-align="center" font-size="36" color="#ffffff" extendstyle="8010"/>
             </button>		 
		     <node rect="480,0,240,84"  extendstyle="1510">
		         <button name="informationBtn" normal="n" sel="s" rect="0,0,240,84" OnSelect="informationBtnOnSelect" color="#000000" extendstyle="1010">
		             <node name="n" rect="0,0,240,84"  extendstyle="1010">
		                 <shadow  rect="0,0,240,84" alpha="125" color="#000000" extendstyle="1010"/>
		                 <label rect="0,0,240,84" text="资料" h-align="center" v-align="center" font-size="36" color="#ffffff" extendstyle="1010"/>
		             </node>
		             <node name="s" rect="0,0,240,84"  extendstyle="1010">
		                 <shadow name="s" rect="0,0,240,84" alpha="75" color="#000000" extendstyle="1010"/>
		                 <label rect="0,0,240,84" text="资料" h-align="center" v-align="center" font-size="36" color="#D2691E" extendstyle="1010"/>
		             </node>	
		         </button>
		     </node>	 
		</node>
		<node  rect="0,0,720,140"  extendstyle="1810">
		    <button name="msgMoodBtn" normal="n" sel="s" OnSelect="msgMoodBtnOnSelect" rect="0,0,720,140" extendstyle="1010">
		         <shadow name="s" rect="0,0,720,140" alpha="50" color="#000000" extendstyle="1010"/>
		         <label name="msgMood" rect="45,0,600,140" text="" postfix="..." v-align="center" font-size="28" color="#999999" extendstyle="1010"/>
		         <image name="rimg" rect="650,50,40,40" style="maxsize"  extendstyle="1111" src="file://image/play_go.png"/>
		         <image rect="0,0,720,4" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>
		    </button>
		</node>
		<node name="contentNode" rect="0,0,720,0"   extendstyle="1817"  >
	         <listview name="personHomeListview" rect="0,0,720,0"  extendstyle="1117" limit="false">
		     </listview>
	    </node>
		<node name="cameraNode" rect="0,0,720,300"   extendstyle="1511" visible="0" >
		     <shadow rect="0,0,720,300" color="#000000" alpha="128" extendstyle="0011"/>
			 <list name="cameraList" rect="47,0,625,300" visible="1" col="1" line="2" auto-adjust="true" extendstyle="1011">
			</list>
		</node>
	</node>
	
	<node name="personHomeItem" rect="0,0,720,90" extendstyle="1010"  visible="0" enable="0" active="0">
		 <button name="personHomeItemBtn" normal="n" sel="s" OnSelect="personHomeItemBtnOnSelect" rect="0,0,686,0" extendstyle="1117">								
			 <shadow name="s" rect="0,0,720,0" alpha="50" color="#000000" extendstyle="1117"/>
             <image name="personHomeWorksimg" rect="45,27,33,35" style="autosize" extendstyle="1010"/>			
			 <label name="personHomeName" rect="100,0,200,90" v-align="center"  postfix=".."  extendstyle="1010" color="#999999"  font-size="28"/>
			 <image name="rimg" rect="650,25,40,40" style="maxsize"  extendstyle="1111" src="file://image/play_go.png"/>	
             <image rect="0,0,720,4" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>			
		</button>
	</node>	
	<node name="cameraItem" rect="0,0,625,150" extendstyle="1010" visible="0" enable="0" active="0">
		 <button name="cameraBtn" rect="0,33,625,84" normal="" sel="s" OnSelect="cameraBtnOnSelect"  extendstyle="1010">
			<node name="n" rec="0,0,625,84" extendstyle="1010" >
				<image name="optImg_n" rect="0,0,625,84" src="file://image/camerartn2.png" style="autosize" extendstyle="1010"/>
				<label name="optName_n" rect="0,0,625,84" text=""  v-align="center" h-align="center" font-size="35"  extendstyle="1010"/>
			</node>
			<node name="s" rec="0,0,625,84" extendstyle="1010" >
				<image name="optImg_s" rect="0,0,625,84" src="" style="autosize" extendstyle="1010"/>
				<label name="optName_s" rect="0,0,625,84" text=""  v-align="center" h-align="center" font-size="35"  extendstyle="1010"/>
			</node>
		</button>			 
	</node>
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
	<node name="popupNode" rect="0,0,720,0" extendstyle="0016" padding="0,0,112,0"/>
    </node>	
</body>
</root>
<cms:include filepath="${lua}"/>