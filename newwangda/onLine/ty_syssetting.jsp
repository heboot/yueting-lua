<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//����commonģ��·��%>
<c:set var="lua" value="/resource/mobileaudio3/syssetting/ty_syssetting.wdml" /><%//���屾�ļ�lua����ģ��·��%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//ȡcommonģ����󷢲�ʱ�䣬����ģ������Լ��%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//ȡ���ļ�lua����ģ����󷢲�ʱ�䣬����ģ������Լ��%>
<?xml version="1.0" encoding="UTF-8"?>
<!--
 == ============================================================================
 == | WonderTek [ �����޴����ڣ���ͨ��ʱ���� ]
 == ============================================================================
 == | Copyright (c) 2013, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Desc: ϵͳ����
 == ============================================================================
-->
<root>
    <header>
	     <script src="${cpath}/publish/clt${common}?time=${lastModifiedCommon}" /><%//Զ�̼���commonģ��,ʵ��common�޸ĺ���������common%>
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
		    <label rect="0,0,104,61" extendstyle="1111" text="����" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
            <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="ϵͳ����" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
        </node> 
        <panorama name="mainPanorama" rect="0,0,720,0" extendstyle="0817" foreground="foreground">
            <panoramaitem name="foreground" rect="0,0,720,0" extendstyle="0017">
            </panoramaitem>
            <panoramaitem rect="0,0,720,0" extendstyle="0017">
                <listview name="settingArea" rect="0,0,720,0" extendstyle="1017" auto-adjust="true">
                   <list-item rect="0,0,720,125" extendstyle="1010">
                        <label rect="15,0,100,125" extendstyle="1010" font-size="32" v-align="center" color="#FFFFFF" text="�洢"/>
                        <node rect="120,15,550,110" extendstyle="0010">
                            <label rect="15,0,300,100" v-align="center" extendstyle="1010"  font-size="32" color="#A3A3A3" text="SD���洢"/>
                            <button name="driverDirGroupbutton1" rect="190,0,60,100" noraml="driverDirGroupbutton1Bg" sel="driverDirGroupbutton1Bg" disabled=="d" OnSelect="driverDirGrouponchange"  extendstyle="1010">
                                <image name="driverDirGroupbutton1Bg" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                                <image name="d" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                                <image rect="0,25,50,50" name="driverDirGroupchecked1" visible="0" style="autosize" src="file://image/setting_radiobox_f.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                            </button>
                            <label rect="300,0,150,100" v-align="center" extendstyle="1010" font-size="32" color="#A3A3A3" text="�ֻ��洢"/>
                            <button rect="470,0,60,100" name="driverDirGroupbutton2" OnSelect="driverDirGrouponchange" extendstyle="1010">
                                <image name="driverDirGroupbutton1Bg" rect="0,25,50,50" style="autosize" src="file://image/setting_radiobox_n.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                                <image rect="0,25,50,50" name="driverDirGroupchecked2" visible="0" style="autosize" src="file://image/setting_radiobox_f.png"  extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                            </button>
                        </node>
                        <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
                    <list-item rect="0,0,720,125" extendstyle="1010">
                        <label rect="15,0,300,125" extendstyle="0010" v-align="center" autoextend="true" font-size="32" color="#FFFFFF" text="����2G/3G�����»������ϴ�"/>
                        <button name="switchBtn1" rect="505,35,200,65" extendstyle="1010" data="on" OnSelect="switchOnMouseUp" >
                            <image rect="0,0,200,65" src="file://image/onoffbtn_bg.png" style="autosize" extendstyle="1010" />
							<label name="off" rect="0,0,100,65" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#CD2626" text="��" />
                            <label name="on" rect="100,0,100,65" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#9ACD32" text="��" />
                            <node name="switchNode1" rect="0,0,100,65" extendstyle="1010">
                                <image name="shadow" rect="0,0,100,65" src="file://image/onoffbtn.png" style="autosize" extendstyle="1010" />
                            </node>
                        </button>
                       <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
                    <list-item rect="0,0,720,125" extendstyle="1010">
                        <label rect="15,0,300,125" extendstyle="1010" v-align="center" autoextend="true" font-size="32" color="#FFFFFF" text="˯��ģʽ" />
                        <button name="switchBtn4" rect="505,35,200,65" extendstyle="1010" data="on" OnSelect="switchOnMouseUp" >
                             <image rect="0,0,200,65" src="file://image/onoffbtn_bg.png" style="autosize" extendstyle="1010" />
							 <label name="off" rect="0,0,100,65" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#CD2626" text="��" />
                            <label name="on" rect="100,0,100,65" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#9ACD32" text="��" />
                            <node name="switchNode4" rect="0,0,100,65" extendstyle="1010">
                               <image name="shadow" rect="0,0,100,65" src="file://image/onoffbtn.png" style="autosize" extendstyle="1010" />
                            </node>
                        </button>
                        <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
                    <list-item rect="0,0,720,125"  extendstyle="1010">
                        <label rect="15,0,300,125" extendstyle="1010" font-size="32" v-align="center" color="#FFFFFF" text="�汾����"/>
                        <label name="versionLbl" rect="170,0,300,125" extendstyle="1010" font-size="25" v-align="center" color="#A3A3A3" alpha="125" autoextend="true" text="��ǰ�汾v3.0"/>
                        <button rect="505,40,200,65"  normal="n" sel="s" data="" OnSelect="updateBtnOS" extendstyle="1010">
							<image  rect="0,0,200,65" src="file://image/syssetttingbt.png" style="autosize" extendstyle="1010"/>
                            <label  name="n" rect="0,0,200,65" extendstyle="1010" text="�汾���" font-size="30" color="#FFFFFF" v-align="center" h-align="center" />
							<label  name="s" rect="0,0,200,65" extendstyle="1010" text="�汾���" font-size="30" color="#e15e00" v-align="center" h-align="center" />	
                        </button>
                        <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
                    <list-item rect="0,0,720,125"  extendstyle="1010">
                        <label rect="15,0,250,125" extendstyle="1010" v-align="center" font-size="32" color="#FFFFFF" text="���������Ƭ"/>
                        <textarea rect="240,15,250,125" extendstyle="1010" font-size="21" line-height="30" autoextend="true" color="#A3A3A3" text="����ͻ��˻��浽���ص����ݣ������������ڻ�����ѻ��������"/>
                        <button rect="505,40,200,65"  normal="n" sel="s" data="" OnSelect="cachesetOkOnSelect" extendstyle="1010">
                            <image  rect="0,0,200,65" src="file://image/syssetttingbt.png" style="autosize" extendstyle="1010"/>
                            <label  name="n" rect="0,0,200,65" extendstyle="1010" text="�����Ƭ" font-size="30" color="#FFFFFF" v-align="center" h-align="center" />
							<label  name="s" rect="0,0,200,65" extendstyle="1010" text="�����Ƭ" font-size="30" color="#e15e00" v-align="center" h-align="center" />    
                        </button>
                        <image rect="0,0,720,4" style="autosize"  src="file://image/leftlistview_line.png" extendstyle="1510" />
                    </list-item>
					<list-item rect="0,0,720,125"  extendstyle="1010">
					    <button name="replaceAccountBtn" normal="n" sel="s"  rect="16,18,688,89"  data="" OnSelect="replaceAccountBtnOnSelect" extendstyle="1010">
                            <image name="n" rect="0,0,688,89" src="file://image/settingsend_bg.png" style="autosize" extendstyle="1010">
                                <label rect="0,0,688,89" extendstyle="1010" text="�л��˺�" font-size="30" color="#FFFFFF" v-align="center" h-align="center" />
                            </image>
							<image name="s" rect="0,0,688,89" src="file://image/register_bg.png" style="autosize" extendstyle="1010">
                                <label rect="0,0,688,89" extendstyle="1010" text="�л��˺�" font-size="30" color="#e15e00" v-align="center" h-align="center" />
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