<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/uploadworks/ty_uploadworks.wdml" /><%//定义本文件lua部分模板路径%>
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
         <image rect="0,0,720,1280" src="file://image/background.png"    style="autosize"  alpha="255" extendstyle="1177" />
         <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		     <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		     <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			     <image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			     <image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		         <label rect="0,0,104,61" extendstyle="1111" text="放弃" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			 </button>
             <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="作品上传" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
		 </node> 
		 <node rect="0,90,720,0" padding="0,0,250,0"  extendstyle="1016">
		    <node rect="0,0,720,100" padding="0,0,100,0"  extendstyle="1010">
		         <image rect="120,12,598,85" extendstyle="1010" style="autosize" src="file://image/loginedit_bg.png"/>
	             <label rect="20,12,100,85" extendstyle="1111" text="标题" color="#FFFFFF" v-align="center" h-align="center" font-size="25"/>
		         <label name="blankTip" rect="120,12,580,85"extendstyle="1010" text="为你的作品配上响亮的标题吧" font-size="30" color="#525252" v-align="center"/>
		         <edit  name="videoTitleText" rect="120,12,598,85" v-align="center" extendstyle="1010" color="#BBC0B9" OnTextChanged="editOnTextChanged" font-size="30"/>
		    </node>
		    <node rect="0,0,720,357"  extendstyle="1810">
		         <label rect="20,30,100,85" extendstyle="1111" text="封面" color="#FFFFFF" v-align="center" h-align="center" font-size="25"/>
		         <image rect="120,20,598,337" extendstyle="1010" style="autosize" src="file://image/noveldefaultbg.png" BuildChildrenFinished="resChoose"><node/></image>		   
		         <image name="userImg" rect="120,20,598,337" extendstyle="1010" style="autosize" src="" />
			 </node>
		     <node rect="0,0,720,125"  extendstyle="1810">
		         <button name='cameraBtn' rect="122,20,598,85" normal="n" OnSelect="cameraBtnOnSelect" extendstyle="1010">
		         <image name="n" rect="0,0,598,85" style="autosize" src="file://image/camerabtn_n.png" extendstyle="1010"/>
		   <label rect="0,0,598,85" extendstyle="1010" text="拍照" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		   </button>
		   </node>
		   <node rect="0,0,720,125"  extendstyle="1810">
		   <button name='cameraImgBtn' rect="122,20,598,85" normal="n" OnSelect="cameraImgBtnOnSelect" extendstyle="1010">
		   <image name="n" rect="0,0,598,85" style="autosize" src="file://image/cameraimgbtn_n.png" extendstyle="1010"/>
		   <label rect="0,0,598,85" extendstyle="1010" text="从手机相册选择" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		   </button>
		   </node>
		   
		</node>
		<node rect="17,0,686,128"  extendstyle="1810">
		<button name='uploadworksBtn' rect="0,0,686,128" normal="n" disabled ="d" OnSelect="uploadworksBtnOnSelect" extendstyle="1010">
		<image rect="0,10,686,108" style="autosize" src="file://image/settingsend_bg.png" extendstyle="1010" />
		<label rect="0,10,686,108" extendstyle="1010" color="#D2691E" font-size="35" text="上传"  v-align="center"  h-align="center"/>
		</button>
		</node>
		<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>		
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />