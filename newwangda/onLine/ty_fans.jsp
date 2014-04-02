<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_fans.wdml" /><%//定义本文件lua部分模板路径%>
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
		 <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1010">
		     <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		     <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
		         <image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		         <image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		         <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		     </button>
             <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="粉丝" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    </node>
		<node rect="0,95,720,248"  extendstyle="1010">
		     <image rect="0,0,720,248" style="autosize" src="file://image/checkinbg.png" extendstyle="1010"/>
			 <node rect="0,10,720,100" extendstyle="1010">
			     <label  rect="40,0,150,100" text="昵称" color="#FFFFFF" font-size="30" v-align="center" extendstyle="1010"/>
				 <label name="userName" rect="0,0,350,100" text="" font-size="30" v-align="center" color="#777777" extendstyle="8010"/>
				 <label name="gradeNumber" rect="0,0,180,100" text="LV.0" font-size="30" v-align="center" color="#777777" extendstyle="8010"/>
			 </node>
			 <node rect="0,0,720,138" extendstyle="1810">
                 <label  rect="40,0,150,80" text="经验值" color="#FFFFFF" v-align="center" font-size="30" extendstyle="1010"/>
				 <image  name="progressImg" rect="0,31,250,18" style="autosize" extendstyle="8010" src="file://image/checkinprogress.png">
				     <image  name="progressBarImg"rect="0,0,0,18" style="autosize" extendstyle="1010" src="file://image/checkinprogressbg.png"/>
				 </image>
				 <label  name="empValueName"  rect="190,55,250,25" text="1000/3000" color="#FFFFFF" v-align="center" h-align="center" font-size="20" extendstyle="1010"/>
				 <label  name="todayEmpValue" rect="440,0,280,80" text="" color="#777777" v-align="center" h-align="center" font-size="25" extendstyle="0010"/>
                 <textarea  rect="40,100,680,30" text="每有一个粉丝为您签到可增长<C:fe8300>8<N>点经验值" font-size="25" color="#777777" v-align="center" extendstyle="1010"/>				 
			 </node>
		</node> 
		<node name="contentNode" rect="0,350,720,0"    extendstyle="1017" >
	         <listview name="checkinListview" rect="0,0,720,0"  extendstyle="1117" limit="false">
		     </listview>
	    </node>
	</node>
	
	<!--左侧菜单推荐的电台数据item-->
	<node name="checkinItem" rect="0,0,720,90" extendstyle="1010"  visible="0" enable="0" active="0">
		 <button name="checkinItemBtn" normal="n" sel="s" OnSelect="checkinItemBtnOnSelect" rect="0,0,720,0" extendstyle="1117">					
		     <image rect="0,0,720,3" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>
		     <shadow name="s" rect="0,0,720,0" alpha="50" color="#000000" extendstyle="1117"/> 
		     <image name="checkinImage"  rect="40,10,70,70" style="autosize" extendstyle="1010"/>
		     <image rect="40,10,70,70" src="file://image/chickinfliter.png" style="autosize" extendstyle="1010" />	
		     <label name="checkinName" rect="150,0,150,90" v-align="center" h-align="center" postfix=".."  extendstyle="1111" color="#999999"  font-size="28"/>
             <node name="checkinNode" rect="0,0,200,90" extendstyle="5010" visible="0">
		         <image rect="0,30,29,29"  src="file://image/checkin.png" style="autosize" extendstyle="1010" />
		         <label rect="60,0,150,90" v-align="center"  postfix=".."  text="已签到" extendstyle="1111" color="#777777"  font-size="25"/>
             </node>		
		</button>
	</node>	
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>	
    </node>
</body>
</root>
<cms:include filepath="${lua}" />