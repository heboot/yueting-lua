<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/registerform/ty_registration.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="UTF-8"?>
<!--
 == ============================================================================
 == | WonderTek [ 网络无处不在，沟通及时到达 ]
 == ============================================================================
 == | Copyright (c) 2013, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Desc: 注册/找回密码
 == ============================================================================
-->
<root>
    <header>
	     <script src="${cpath}/publish/clt${common}?time=${lastModifiedCommon}" /><%//远程加载common模板,实现common修改后下载最新common%>
    </header>
    <body BuildChildrenFinished="bodyBuildChildrenFinished" OnSpriteEvent="bodyOnSpriteEvent" OnPluginEvent="bodyOnPluginEvent" resolution="720,1280">
    <node name="mainNode" rect="0,0,720,1280" extendstyle="1111" layouttype="1" OnKeyUp="mainNodeOnKeyUp">
        <image rect="0,0,720,1280" src="file://image/background.png"   style="autosize" alpha="255" extendstyle="1177" />
        <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		    <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		    <button name="backBtn" rect="10,15,104,61" normal="n" sel="s" extendstyle="1111" OnSelect="backOnSelect" visible="1" enable="1">
			<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		    <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
            <label name="title" rect="0,0,720,77" extendstyle="1110" text="账号注册" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
			<button name="confirmBtn" normal="n" sel="s" rect="600,15,104,61" extendstyle="1111" OnSelect="registerBtnOS" visible="1" enable="1">
			<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
		    <label rect="0,0,104,61" extendstyle="1111" text="确定" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
		</node>
        <panorama name="mainPanorama" rect="0,90,720,0" extendstyle="0017" foreground="foreground">
            <panoramaitem name="foreground" rect="0,0,720,0" extendstyle="0017">
                <node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
            </panoramaitem>
            <panoramaitem rect="0,0,720,0" extendstyle="0017">
                <listview name="mainListview" rect="0,0,720,0" extendstyle="1017">
                    <list-item  rect="0,0,720,105" extendstyle="1010">
                        <node rect="30,17,660,85" extendstyle="1010">
						    <image rect="0,0,0,0" extendstyle="1077" style="autosize" src="file://image/loginedit_bg.png"/>
							<image rect="40,15,50,55" extendstyle="1010" style="autosize" src="file://image/user_head.png"/>
                            <label name="blankTip" rect="130,0,450,80" extendstyle="1010" text="请输入移动手机号码" font-size="28" color="#C8C8C8" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                            <edit name="accountName" option="numeric" rect="130,0,450,85" v-align="center" extendstyle="1010" color="#C8C8C8" OnTextChanged="editOnTextChanged" font-size="28"/>
                            <button name="cleanAccountBtn" OnSelect="cleanAccountBtnOnSelect" rect="0,20,45,45" extendstyle="8010">
							<image rect="0,0,45,45" extendstyle="8010" style="autosize" src="file://image/check.png"/>
							</button>
                        </node>
                    </list-item>
                    
                    <list-item  rect="0,0,720,105" extendstyle="1010">
                        <node rect="30,10,660,85" extendstyle="1010">
						<image rect="0,0,0,0" extendstyle="1077" style="autosize" src="file://image/loginedit_bg.png"/>
                            <image rect="40,20,60,48" extendstyle="1010" style="autosize" src="file://image/password_head.png"/>
							<label name="blankTip" rect="130,0,450,80" extendstyle="1010" text="请输入新密码" font-size="28" color="#C8C8C8" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                            <edit name="passWord" password="true" rect="130,0,450,85" v-align="center" extendstyle="1010" color="#C8C8C8" OnTextChanged="editOnTextChanged" font-size="28"/>
                            <button name="cleanPasswordBtn" OnSelect="cleanPasswordBtnOnSelect" rect="0,20,45,45" extendstyle="8010">
							<image rect="0,0,45,45" extendstyle="8010" style="autosize" src="file://image/check.png"/>
							</button>
                        </node>
                    </list-item>
                    <list-item  rect="0,0,720,105" extendstyle="1010">
                        <node rect="30,10,660,85" extendstyle="1010">
						<image rect="0,0,0,0" extendstyle="1077" style="autosize" src="file://image/loginedit_bg.png"/>
                            <image rect="40,20,60,48" extendstyle="1010" style="autosize" src="file://image/password_head.png"/>
							<label name="blankTip" rect="130,0,450,80" extendstyle="1010" text="请输入确认密码" font-size="28" color="#C8C8C8" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                            <edit name="passWordConfirm" password="true" rect="130,0,450,85" v-align="center" extendstyle="1010" color="#C8C8C8" OnTextChanged="editOnTextChanged" font-size="28"/>
                            <button name="cleanPassword2Btn" OnSelect="cleanPassword2BtnOnSelect" rect="0,20,45,45" extendstyle="8010">
							<image rect="0,0,45,45" extendstyle="8010" style="autosize" src="file://image/check.png"/>
							</button>
                        </node>
                    </list-item>
					<list-item  rect="0,0,720,105" extendstyle="1010">
                        <node rect="30,10,660,85" extendstyle="1010">
						<image rect="0,0,0,0" extendstyle="1077" style="autosize" src="file://image/loginedit_bg.png"/>
                            <image rect="40,20,60,48" extendstyle="1010" style="autosize" src="file://image/checkkey.png"/>
							<label name="blankTip" rect="130,0,450,80" extendstyle="1010" text="请输入验证码" font-size="28" color="#C8C8C8" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                            <edit name="dynamicCode" rect="130,0,450,80" v-align="center" extendstyle="1010" color="#C8C8C8" OnTextChanged="editOnTextChanged"/> 
                            <button name="cleanCheckcodeBtn" OnSelect="cleanCheckcodeBtnOnSelect" rect="0,20,45,45" extendstyle="8010">
							<image rect="0,0,45,45" extendstyle="8010" style="autosize" src="file://image/check.png"/>
							</button>
					   </node>
                    </list-item>
					<list-item  rect="0,0,720,105" extendstyle="1010">
                        <node rect="30,10,660,85" extendstyle="1010">
						<button name="getDynamicCodeBtn" rect="0,0,660,85" normal="n" sel="s" disabled="d" style="autosize" data="" OnSelect="getDynamicCodeBtnOS" extendstyle="1010">
                                <image name="n" rect="0,0,660,85" style='autosize' src="file://image/settingsend_bg.png"  extendstyle="1010">
                                    <label name="normalLbl" rect="0,0,660,85" extendstyle="1010" text="获取验证码" font-size="28" color="#e15e00" v-align="center" h-align="center" />
                                </image>
                                <image name="s" rect="0,0,660,85" style='autosize' src="file://image/settingsend_bg.png"  extendstyle="1010">
                                    <label name="selectLbl" rect="0,0,660,85" extendstyle="1010" text="获取验证码" font-size="28" color="#e15e00" v-align="center" h-align="center" />
                                </image>
                                <image name="d" rect="0,0,660,85" style='autosize' src="file://image/register_bg.png" extendstyle="1010">
                                    <label name="disableLbl" rect="0,0,660,85" extendstyle="1010" text="获取验证码" font-size="28" color="#e15e00" v-align="center" h-align="center" />
                                </image>
                            </button>
						 </node>
                    </list-item>
                    <list-item name="acceptItem" rect="0,0,720,90" extendstyle="1010">
                        <button name="acceptBtn" rect="30,15,660,60" style="autosize" OnSelect="acceptBtnOS" extendstyle="1010">
                            <image name="checkBoxN" rect="0,0,58,58" extendstyle="1000" style="sudoku-tile" sudoku="6,6,6,6" src="file://image/checkbg.png" BuildChildrenFinished="resChoose"><node/></image>
                            <image name="checkBoxF" rect="0,0,58,58" extendstyle="1000" visible="0" style='autosize' src="file://image/downloadcheck.png" BuildChildrenFinished="resChoose"><node/></image>
                            <label rect="80,0,0,60" extendstyle="1010" text="已阅读并且接受" autoextend="true" font-size="28" color="#4F6855" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                            <button rect="0,0,250,60" extendstyle="8010" text="《中国移动服务条款》" autoextend="true" font-size="28" color="#C98204" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1" OnSelect="treatyOnSelect"/>
                        </button>
                    </list-item>
                    <!--<list-item  rect="0,0,720,110" extendstyle="1010" frame="false">
                        <button name="confirmBtn" rect="30,50,660,85" normal="n" sel="s" style="autosize" data="" OnSelect="registerBtnOS" extendstyle="1010">
                            <image name="n" rect="0,0,660,85" style='autosize' src="file://image/settingsend_bg.png" alpha="255" extendstyle="1010">
                                <label name="confirmLblN" rect="0,0,660,85" extendstyle="1010" text="确定" font-size="28" color="#FFFFFF" v-align="center" h-align="center" />
                            </image>
                            <image name="s" rect="0,0,660,85" style='autosize' src="file://image/settingsend_bg.png" alpha="255" extendstyle="1010">
                                <label name="confirmLblS" rect="0,0,660,85" extendstyle="1010" text="确定" font-size="28" color="#ffffff" v-align="center" h-align="center" />
                            </image>
                        </button>
                    </list-item>-->
                </listview>
            </panoramaitem>
        </panorama>
		
	
        <node name="treatyDialog" rect="0,0,720,1280" extendstyle="1111" visible="false" enable="false">
            <button rect="0,0,720,1280" OnSelect="" extendstyle="1111"/>
            <shadow rect="0,0,720,1280" color="#000000" alpha="128" extendstyle="1111"/>
            <node rect="50,170,620,0" padding="0,0,170,0" extendstyle="1016">
                <node rect="0,0,620,35" extendstyle="0510">
                    <image rect="0,0,620,72" src="file://image/dialogShadow.png" style="autosize" extendstyle="1010" />
                </node>
                <image rect="0,0,620,0" src="file://image/orderDialog_border.png" style="sudoku-auto" sudoku="5,5,5,5" extendstyle="1017" BuildChildrenFinished="resChoose"><node/></image>
                <image rect="0,0,620,86" src="file://image/orderDig_head.png"  style="sudoku-auto" sudoku="6,0,6,0" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                <label rect="0,0,620,86" text="手机视频服务协议" color="#212121" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1" font-size="36" v-align="center" h-align="center" extendstyle="1010"/>
                <panorama rect="0,91,620,625" padding="0,0,90,0" extendstyle="1016">
                    <panoramaitem rect="0,0,620,625" extendstyle="1017">
                        <listview name="textareaListview" rect="0,0,620,0" extendstyle="1017">
                            <list-item name="textareaItem" rect="0,0,620,0" extendstyle="1010" frame="false">
                                <textarea name="treatyInfo" rect="40,0,530,620" extendstyle="1010" color="#817b7b" shadow="true" shadow-color="#ffffff" shadow-offset="0,1" font-size="22" text="" autoextend="true" />
                            </list-item>
                        </listview>
                    </panoramaitem>
                </panorama>
                <node rect="0,720,620,90" extendstyle="1510">
                    <button name="announceBtnOk" rect="210,12,200,100" style="autosize" OnSelect="treatyBtnOkOnSelect" extendstyle="1010" normal="n" sel="s">
                        <node name="n" rect="0,0,177,56" extendstyle="1010" >
                            <image rect="0,0,177,56" src="file://image/button_bg_n.png" extendstyle="1010"  style="sudoku-auto" sudoku="6,2,6,2" BuildChildrenFinished="resChoose"><node/></image>
                            <label rect="0,0,177,56" extendstyle="0000" text="知道了" font-size="30" color="#565656" v-align="center" h-align="center"/>
                        </node>
                        <node name="s" rect="0,0,177,56" extendstyle="1010" >
                            <image rect="0,0,177,56" src="file://image/button_bg_s.png"  style="sudoku-auto" sudoku="6,0,6,0" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                            <label rect="0,0,177,56" extendstyle="0000" text="知道了" font-size="30" color="#FFFFFF" v-align="center" h-align="center"/>
                        </node>
                    </button>
                </node>
            </node>
        </node><node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />