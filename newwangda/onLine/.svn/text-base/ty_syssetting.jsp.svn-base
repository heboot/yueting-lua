<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/syssetting/ty_syssetting.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="UTF-8"?>
<!--
 == ============================================================================
 == | WonderTek [ 网络无处不在，沟通及时到达 ]
 == ============================================================================
 == | Copyright (c) 2013, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Desc: 系统设置
 == ============================================================================
-->
<root>
    <header>
	     <script src="${cpath}/publish/clt${common}?time=${lastModifiedCommon}" /><%//远程加载common模板,实现common修改后下载最新common%>
    </header>
    <body PreBuildChildren="bodyPreBuildChildren" BuildChildrenFinished="bodyBuildChildrenFinished" OnSpriteEvent="bodyOnSpriteEvent" OnPluginEvent="bodyOnPluginEvent" resolution="720,1280">
    <node name="mainNode" rect="0,0,720,1280" extendstyle="1111" layouttype="1" OnKeyUp="mainNodeOnKeyUp">
        <image rect="0,0,0,0" style="autosize" src="file://image/background.png"  extendstyle="1177" />
        <node rect="0,0,720,76" extendstyle="1010">
            <shadow rect="0,0,720,4" color="#BADE9E" alpha="255" extendstyle="1510" />
        </node>
        <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		   <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		   <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		    <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
            <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="系统设置" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
        </node> 
        <panorama name="mainPanorama" rect="0,0,720,0" extendstyle="0817" foreground="foreground">
            <panoramaitem name="foreground" rect="0,0,720,0" extendstyle="0017">
            </panoramaitem>
            <panoramaitem rect="0,0,720,0" extendstyle="0017">
                <listview name="settingArea" rect="0,0,720,0" extendstyle="1017" auto-adjust="true">
                   <list-item rect="0,0,720,125" extendstyle="1010">
                        <label rect="15,0,100,125" extendstyle="1010" font-size="32" v-align="center" color="#FFFFFF" text="存储"/>
                        <node rect="120,15,550,110" extendstyle="0010">
                            <label rect="15,0,300,100" v-align="center" extendstyle="1010"  font-size="32" color="#A3A3A3" text="SD卡存储"/>
                            <button name="driverDirGroupbutton1" rect="190,0,60,100" noraml="driverDirGroupbutton1Bg" sel="driverDirGroupbutton1Bg" disabled=="d" OnSelect="driverDirGrouponchange"  extendstyle="1010">
                                <image name="driverDirGroupbutton1Bg" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                                <image name="d" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                                <image rect="0,25,50,50" name="driverDirGroupchecked1" visible="0" style="autosize" src="file://image/setting_radiobox_f.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                            </button>
                            <label rect="300,0,150,100" v-align="center" extendstyle="1010" font-size="32" color="#A3A3A3" text="手机存储"/>
                            <button rect="470,0,60,100" name="driverDirGroupbutton2" OnSelect="driverDirGrouponchange" extendstyle="1010">
                                <image name="driverDirGroupbutton1Bg" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                                <image rect="0,25,50,50" name="driverDirGroupchecked2" visible="0" style="autosize" src="file://image/setting_radiobox_f.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                            </button>
                        </node>
                        <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
                    <list-item rect="0,0,720,125" extendstyle="1010">
                        <label rect="15,0,300,125" extendstyle="0010" v-align="center" autoextend="true" font-size="32" color="#FFFFFF" text="允许2G/3G环境下缓存与上传"/>
                        <button name="switchBtn1" rect="505,35,200,65" extendstyle="1010" data="on" OnSelect="switchOnMouseUp" >
                            <image rect="0,0,200,65" src="file://image/onoffbtn_bg.png" style="autosize" extendstyle="1010" />
							<label name="off" rect="0,0,100,65" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#CD2626" text="关" />
                            <label name="on" rect="100,0,100,65" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#9ACD32" text="开" />
                            <node name="switchNode1" rect="0,0,100,65" extendstyle="1010">
                                <image name="shadow" rect="0,0,100,65" src="file://image/onoffbtn.png" style="autosize" extendstyle="1010" />
                            </node>
                        </button>
                       <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
                    <list-item rect="0,0,720,125" extendstyle="1010">
                        <label rect="15,0,300,125" extendstyle="1010" v-align="center" autoextend="true" font-size="32" color="#FFFFFF" text="睡眠模式" />
                        <button name="switchBtn4" rect="505,35,200,65" extendstyle="1010" data="on" OnSelect="switchOnMouseUp" >
                             <image rect="0,0,200,65" src="file://image/onoffbtn_bg.png" style="autosize" extendstyle="1010" />
							 <label name="off" rect="0,0,100,65" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#CD2626" text="关" />
                            <label name="on" rect="100,0,100,65" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#9ACD32" text="开" />
                            <node name="switchNode4" rect="0,0,100,65" extendstyle="1010">
                               <image name="shadow" rect="0,0,100,65" src="file://image/onoffbtn.png" style="autosize" extendstyle="1010" />
                            </node>
                        </button>
                        <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
                    <list-item rect="0,0,720,125"  extendstyle="1010">
                        <label rect="15,0,300,125" extendstyle="1010" font-size="32" v-align="center" color="#FFFFFF" text="版本更新"/>
                        <label name="versionLbl" rect="170,0,300,125" extendstyle="1010" font-size="25" v-align="center" color="#A3A3A3" alpha="125" autoextend="true" text="当前版本v3.0"/>
                        <button rect="505,40,200,65"  normal="n" sel="s" data="" OnSelect="updateBtnOS" extendstyle="1010">
							<image  rect="0,0,200,65" src="file://image/syssetttingbt.png" style="autosize" extendstyle="1010"/>
                            <label  name="n" rect="0,0,200,65" extendstyle="1010" text="版本检测" font-size="30" color="#FFFFFF" v-align="center" h-align="center" />
							<label  name="s" rect="0,0,200,65" extendstyle="1010" text="版本检测" font-size="30" color="#e15e00" v-align="center" h-align="center" />	
                        </button>
                        <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
                    <list-item rect="0,0,720,125"  extendstyle="1010">
                        <label rect="15,0,250,125" extendstyle="1010" v-align="center" font-size="32" color="#FFFFFF" text="清除缓存碎片"/>
                        <textarea rect="240,15,250,125" extendstyle="1010" font-size="21" line-height="30" autoextend="true" color="#A3A3A3" text="清除客户端缓存到本地的数据，但不包括正在缓存和已缓存的任务"/>
                        <button rect="505,40,200,65"  normal="n" sel="s" data="" OnSelect="cachesetOkOnSelect" extendstyle="1010">
                            <image  rect="0,0,200,65" src="file://image/syssetttingbt.png" style="autosize" extendstyle="1010"/>
                            <label  name="n" rect="0,0,200,65" extendstyle="1010" text="清除碎片" font-size="30" color="#FFFFFF" v-align="center" h-align="center" />
							<label  name="s" rect="0,0,200,65" extendstyle="1010" text="清除碎片" font-size="30" color="#e15e00" v-align="center" h-align="center" />    
                        </button>
                        <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
					<list-item rect="0,0,720,125"  extendstyle="1010">
					    <button name="replaceAccountBtn" normal="n" sel="s"  rect="16,18,688,89"  data="" OnSelect="replaceAccountBtnOnSelect" extendstyle="1010">
                            <image name="n" rect="0,0,688,89" src="file://image/settingsend_bg.png" style="autosize" extendstyle="1010">
                                <label rect="0,0,688,89" extendstyle="1010" text="切换账号" font-size="30" color="#FFFFFF" v-align="center" h-align="center" />
                            </image>
							<image name="s" rect="0,0,688,89" src="file://image/register_bg.png" style="autosize" extendstyle="1010">
                                <label rect="0,0,688,89" extendstyle="1010" text="切换账号" font-size="30" color="#e15e00" v-align="center" h-align="center" />
                            </image>
                        </button>
					</list-item>
                </listview>
            </panoramaitem>
        </panorama>
		<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />