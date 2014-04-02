<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/uploadworks/ty_uploadimgedit.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="utf-8"?>
<!--
 == ============================================================================
 == | WonderTek [ 网络无处不在，沟通及时到达 ]
 == ============================================================================
 == | Copyright (c) 2011, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Author: wangweipeng <wangweipeng@wondertek.com.cn>
 == ============================================================================
 == | Desc: 社区
 == ============================================================================
-->
<root>
    <header>
	     <script src="${cpath}/publish/clt${common}?time=${lastModifiedCommon}" /><%//远程加载common模板,实现common修改后下载最新common%>
      </header>
    <body  BuildChildrenFinished="bodyBuildChildrenFinished" OnSpriteEvent="bodyOnSpriteEvent" OnPluginEvent="bodyOnPluginEvent" resolution="720,1280" OnGestureBegin="bodyOnGestureBegin" OnGestureMove="bodyOnGestureMove" OnGestureEnd="bodyOnGestureEnd">
        <node name="mainNode" rect="0,0,720,1280" OnKeyUp="mainNodeOnKeyUp" layouttype="1" extendstyle="1111">
        <shadow rect="0,0,720,1280" color="#000000" alpha="255" extendstyle="1111" />
        <node rect="0,0,720,76" extendstyle="1010">
            <shadow rect="0,0,720,76" color="#FFFFFF" alpha="255" extendstyle="1010" />
            <shadow rect="0,0,720,4" color="#BADE9E" alpha="255" extendstyle="1510" />
        </node>
		<image rect="0,0,720,0" style="autosize" src="file://image/background.png" extendstyle="1017"/>
		<node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		<image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		<button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backOnSelect" visible="1" enable="1">
		<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		<label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
		</button>
        <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
	    </node>
		
        <node rect="0,76,720,0"  extendstyle="1017" frame="true">
            <image name="imagephoto" rect="0,0,0,0" extendstyle="4444" style="maxsize"/>
            <node name="staticrect" rect="0,0,720,0" extendstyle="1017"/>
            <node name="displaystyle1" rect="0,0,720,0" extendstyle="1017" visible="0">
                <image rect="0,0,720,300" src="file://image/commonmask.png" extendstyle="1010" style="tile" />
                <node name="imgFrame" rect="0,300,720,400" extendstyle="1010">
                    <shadow rect="0,0,720,2" color="#96FF00" alpha="255" extendstyle="1014" />
                    <shadow rect="0,0,2,400" color="#96FF00" alpha="255" extendstyle="1040" />
                    <shadow rect="0,0,720,2" color="#96FF00" alpha="255" extendstyle="1514" />
                    <shadow rect="0,0,2,400" color="#96FF00" alpha="255" extendstyle="5040" />
                </node>
                <image rect="0,0,720,300" src="file://image/commonmask.png" extendstyle="1817" style="tile" />
            </node>
            <node name="displaystyle2" rect="0,0,720,0" extendstyle="1017">
                <shadow rect="0,0,720,220" color="0" alpha="130" extendstyle="1010"/>
                <node rect="0,220,720,636" extendstyle="1010">
                    <shadow rect="0,0,42,636" color="0" alpha="130" extendstyle="1010"/>
                    <node name="imgFrame" rect="42,0,636,636" extendstyle="1010">
                        <shadow rect="0,0,636,2" color="#96FF00" alpha="255" extendstyle="1014" />
                        <shadow rect="0,0,2,636" color="#96FF00" alpha="255" extendstyle="1040" />
                        <shadow rect="0,0,636,2" color="#96FF00" alpha="255" extendstyle="1514" />
                        <shadow rect="0,0,2,636" color="#96FF00" alpha="255" extendstyle="5040" />
                    </node>
                    <shadow rect="0,0,42,636" color="0" alpha="130" extendstyle="8010"/>
                </node>
                <shadow rect="0,0,720,220" color="0" alpha="130" extendstyle="1817"/>
            </node>
            <button rect="0,0,720,300" OnMouseDown="pitemOMD" OnMouseMove="pitemOMM" OnMouseUp="pitemOMU" extendstyle="1017"/>
        </node>
        <node rect="0,0,720,111" extendstyle="0500">
            <image rect="0,0,720,111" extendstyle="0000" style='autosize' src="file://image/bottompannel.png" />
            <button rect="270,21,180,69" style="autosize" OnSelect="clipBtnOS" extendstyle="1010">
                <image rect="0,0,180,69" src="file://image/navigation_s_bg.png" extendstyle="1010"  style="sudoku-auto" sudoku="33,0,33,0"/>
                <label rect="0,0,180,69" extendstyle="1010" text="确定" font-size="25" color="#FFFFFF" v-align="center" h-align="center"/>
            </button>
        </node>
		<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
        </node>
    </body>
</root>