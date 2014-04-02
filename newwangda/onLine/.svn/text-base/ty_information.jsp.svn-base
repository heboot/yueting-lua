<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_information.wdml" /><%//定义本文件lua部分模板路径%>
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
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="资料" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    <button name="editBtn" normal="n" sel="s" rect="600,15,104,61" extendstyle="1111" OnSelect="editBtnOnSelect" visible="0" enable="0">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label name="editLabel" rect="0,0,104,61" extendstyle="1111" text="编辑" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
	   </node>			
		<panorama name="mainPanorama" rect="0,0,720,0" extendstyle="0817" foreground="foreground">
        <panoramaitem rect="0,0,720,0" extendstyle="0017">
            <listview name="settingArea" rect="0,0,720,0" extendstyle="1017" auto-adjust="true">
                <list-item rect="0,0,720,125" extendstyle="1010">
                    <label rect="15,0,100,125" extendstyle="1010" font-size="32" v-align="center" color="#FFFFFF" text="昵称"/>
                    <node rect="120,15,600,100" extendstyle="0010">
					<image name="nickNameEditbg" rect="0,0,585,100" extendstyle="1010" style="autosize" src="file://image/loginedit_bg.png" visible="0" enable="0"/>
                    <label name="nickName" rect="15,0,585,100" v-align="center" extendstyle="1010"  font-size="32" color="#A3A3A3" text=""/>
					<edit name="nickNameEdit" rect="15,0,585,100" v-align="center" extendstyle="1010"  OnLostFocus="nameLostFocus" max-size="10" font-size="32" color="#A3A3A3" text="" enable="0" visible="0"/>
                    </node>
                     <image rect="0,0,0,4" style="autosize" src="file://image/leftlistview_line.png" extendstyle="1571" />
                </list-item>
				<list-item rect="0,0,720,125" extendstyle="1010">
                    <label rect="15,0,100,125" extendstyle="1010" font-size="32" v-align="center" color="#FFFFFF" text="年龄"/>
                    <node rect="120,15,600,100" extendstyle="0010">
					<image name="ageNameEditbg" rect="0,0,585,100" extendstyle="1010" style="autosize" src="file://image/loginedit_bg.png" visible="0" enable="0"/>
                    <label name="ageName" rect="15,0,585,100" v-align="center" extendstyle="1010"  font-size="32" color="#A3A3A3" text=""/>
                    <edit name="ageNameEdit" rect="15,0,585,100" v-align="center" extendstyle="1010"  font-size="32" color="#A3A3A3" text="" enable="0" visible="0"/>
					</node>
                     <image rect="0,0,0,4" style="autosize" src="file://image/leftlistview_line.png" extendstyle="1571" />
                </list-item>
				<list-item rect="0,0,720,125" extendstyle="1010">
                    <label rect="15,0,100,125" extendstyle="1010" font-size="32" v-align="center" color="#FFFFFF" text="性别"/>
                    <node rect="120,15,600,110" extendstyle="0010">                    
                    <button name="driverDirGroupbutton1" rect="15,0,60,100" noraml="driverDirGroupbutton1Bg" sel="driverDirGroupbutton1Bg" disabled=="d" OnSelect="driverDirGrouponchange"  enable="0" extendstyle="1010">
                    <image name="driverDirGroupbutton1Bg" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                    <image name="d" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                    <image rect="0,25,50,50" name="driverDirGroupchecked1" visible="0" style="autosize" src="file://image/setting_radiobox_f.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                    </button>
					<label rect="80,0,50,100" v-align="center" extendstyle="1010"  font-size="32" color="#A3A3A3" text="男"/>              
                    <button rect="200,0,60,100" name="driverDirGroupbutton2" OnSelect="driverDirGrouponchange" enable="0"  extendstyle="1010">
                    <image name="driverDirGroupbutton2Bg" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                    <image rect="0,25,50,50" name="driverDirGroupchecked2" visible="0" style="autosize" src="file://image/setting_radiobox_f.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                    </button>
					<label rect="280,0,50,100" v-align="center" extendstyle="1010" font-size="32" color="#A3A3A3" text="女"/>
					<button rect="400,0,60,100" name="driverDirGroupbutton3" OnSelect="driverDirGrouponchange" enable="0"  extendstyle="1010">
                    <image name="driverDirGroupbutton3Bg" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                    <image rect="0,25,50,50" name="driverDirGroupchecked3" visible="0" style="autosize" src="file://image/setting_radiobox_f.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                    </button>
					<label rect="480,0,70,100" v-align="center" extendstyle="1010" font-size="32" color="#A3A3A3" text="保密"/>
                    </node>
                    <image rect="0,0,0,4" style="autosize" src="file://image/leftlistview_line.png" extendstyle="1571" />
                </list-item>
            </listview>
        </panoramaitem>
        </panorama>					
	</node>
	
	<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />