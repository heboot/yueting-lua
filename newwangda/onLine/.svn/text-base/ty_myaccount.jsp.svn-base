<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/account/ty_account.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="utf-8"?>
<!--
 == ============================================================================
 == | WonderTek [ 网络无处不在，沟通及时到达 ]
 == ============================================================================
 == | Copyright (c) 2013, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Desc: 登录/登出
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
		     <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			     <image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			     <image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		         <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
            <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="登录" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
			<button name="loginBtn" normal="n" sel="s" rect="600,15,104,61" extendstyle="1111" OnSelect="loginBtnOS" visible="1" enable="1">
			     <image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			     <image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		         <label name="loginName" rect="0,0,104,61" extendstyle="1111" text="确定" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
		 </node>
         <panorama name="mainPanorama" rect="0,90,720,0" extendstyle="0017" foreground="foreground">
             <panoramaitem name="foreground" rect="0,0,720,0" extendstyle="0017">
                 <node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
             </panoramaitem>
             <panoramaitem rect="0,0,720,0" extendstyle="0017">
                 <listview name="mainListview" rect="0,0,720,0" extendstyle="1017">
				 <!--<shadow name="n" rect="0,0,0,0" color="#84CD7C" alpha="255" extendstyle="1077"/>-->
                     <list-item rect="0,0,720,105" extendstyle="1010">
                         <node rect="30,17,660,85" extendstyle="1010">
						     <image rect="0,0,0,0" extendstyle="1077" style="autosize" src="file://image/loginedit_bg.png"/>
							 <image rect="40,15,50,55" extendstyle="1010" style="autosize" src="file://image/user_head.png"/>
                             <label name="blankTip" rect="130,0,450,80" extendstyle="1010" text="请输入移动手机号码" font-size="28" color="#C8C8C8" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                             <edit name="accountName" option="numeric" rect="130,0,450,85" v-align="center" extendstyle="1010" color="#BBC0B9" OnTextChanged="editOnTextChanged" font-size="28"/>
                             <label name="loginedNum" rect="130,0,450,85" extendstyle="1010" text="" font-size="30" color="#BBC0B9" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1" visible="false"/>                   
                             <button name="cleanAccountBtn" OnSelect="cleanAccountBtnOnSelect" rect="0,20,45,45" extendstyle="8010">
							 <image rect="0,0,45,45" extendstyle="8010" style="autosize" src="file://image/check.png"/>					  
							 </button>
					     </node>
                     </list-item>
                     <list-item name="item2" rect="0,0,720,205" extendstyle="1010">
                         <node rect="30,0,660,85" extendstyle="1010">
						     <image rect="0,0,0,0" extendstyle="1077" style="autosize" src="file://image/loginedit_bg.png"/>
							 <image rect="40,20,60,48" extendstyle="1010" style="autosize" src="file://image/password_head.png"/>
                             <label name="blankTip" rect="130,0,450,80" extendstyle="1010" text="请输密码" font-size="28" color="#BBC0B9" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                             <edit name="passWord" password="true" rect="130,0,450,85" v-align="center" extendstyle="1010" color="#BBC0B9" OnTextChanged="editOnTextChanged" font-size="28"/>
							 <button name="cleanPasswordBtn" OnSelect="cleanPasswordBtnOnSelect" rect="0,20,45,45" extendstyle="8010">
							 <image rect="0,0,45,45" extendstyle="8010" style="autosize" src="file://image/check.png"/>
							 </button>
					    </node>
                         <button name="autoLoginBtn" rect="60,120,330,60" style="autosize" OnSelect="autoLoginBtnOS" extendstyle="1010" normal="n" sel="s">
                             <image name="checkBoxN" rect="12,9,50,50" extendstyle="1000" style="autosize" src="file://image/setting_radiobox_n.png" />
                             <image name="checkBoxF" rect="12,9,50,50" extendstyle="1000" visible="0" style='autosize' src="file://image/setting_radiobox_f.png" BuildChildrenFinished="resChoose"><node/></image>
                             <label name="n" rect="80,0,250,60" extendstyle="1010" text="自动登录" font-size="24" color="#4F6855" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                             <label name="s" rect="80,0,250,60" extendstyle="1010" text="自动登录" font-size="24" color="#1C9FE3" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                         </button>
                         <button name="remeberPwdBtn" rect="390,120,330,60" style="autosize" OnSelect="remeberPwdBtnOS" extendstyle="1010" normal="n" sel="s">
                             <image name="checkBoxN" rect="12,9,50,50" extendstyle="1000" style="autosize" src="file://image/setting_radiobox_n.png" />
                             <image name="checkBoxF" rect="12,9,50,50" extendstyle="1000" visible="0" style='autosize' src="file://image/setting_radiobox_f.png" BuildChildrenFinished="resChoose"><node/></image>
                             <label name="n" rect="80,0,250,60" extendstyle="1010" text="记住密码" font-size="24" color="#4F6855" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                             <label name="s" rect="80,0,250,60" extendstyle="1010" text="记住密码" font-size="24" color="#1C9FE3" v-align="center" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                         </button>
                     </list-item>
                     <list-item name="item4" rect="0,0,660,85" extendstyle="1010">  
                         <button name="registerBtn" rect="30,0,330,85" style="autosize" data="" OnSelect="registerBtnOS" extendstyle="1010" normal="n" sel="s">
                             <image rect="50,27,29,30" extendstyle="1000" style='autosize' src="file://image/account_reg.png" BuildChildrenFinished="resChoose"><node/></image>
                             <textarea name="n" rect="95,0,330,85" extendstyle="1010" text="<U>账号注册</U>" font-size="28" color="#A0AC9E" v-align="center"/>
                             <textarea name="s" rect="95,0,330,85" extendstyle="1010" text="<U>账号注册</U>" font-size="28" color="#e15e00" v-align="center"/>
                         </button>
						 <button name="getPwdBtn" rect="360,0,330,85" style="autosize" data="" OnSelect="getPwdBtnOS" extendstyle="1010" normal="n" sel="s">
                             <image rect="50,27,29,30" extendstyle="1000" style='autosize' src="file://image/account_getpwd.png" BuildChildrenFinished="resChoose"><node/></image>
                             <textarea  name="n" rect="95,0,330,85" extendstyle="1010" text="<U>找回密码</U>" font-size="28" color="#A0AC9E" v-align="center"/>
                             <textarea name="s" rect="95,0,330,85" extendstyle="1010" text="<U>找回密码</U>" font-size="28" color="#e15e00" v-align="center"/>
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