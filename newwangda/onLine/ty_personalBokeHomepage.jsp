<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_personalBokeHomepage.wdml" /><%//定义本文件lua部分模板路径%>
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
		<!--顶部node-->
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
		     <image rect="0,0,720,270" style="autosize" src="file://image/personalhomepagebg.png" extendstyle="1010"/>
	         <image name="userImage" rect="10,10,176,176" style="maxsize" src="file://image/personalhomepageimgbg.png" extendstyle="1010"/>
		     <image name="msgImg" rect="13,13,170,170" style="maxsize" src="file://image/dft_headimg_big.jpg" extendstyle="1010"   BuildChildrenFinished="resChoose"><node/></image>		
		     <label name="gradeName" rect="220,30,120,50" text="LV.0" font-size="36" color="#ffffff" extendstyle="1077"/>
		     <label rect="220,110,150,50" text="粉丝数:" font-size="36" v-align="center"  color="#ffffff" extendstyle="1010"/>
		     <label name="fansTotal" rect="0,110,120,50" text="" font-size="36" v-align="center"  color="#ffffff" extendstyle="8010"/>
		<!--加关注-->
		<node rect="582,15,123,63"  extendstyle="1010">
		     <button name="addfocusBtn" rect="0,0,123,63" OnSelect="addfocusBtnOnSelect" color="#000000" extendstyle="1010">
		         <image rect="0,0,123,63" style="autosize" src="file://image/addfocus.png" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		         <label name="addfouseName" rect="0,0,123,63" text="+关注" font-size="30" h-align="center" v-align="center" color="#ffffff" extendstyle="1010"/>
		     </button>
		</node>		
		<node rect="238,0,240,84"  extendstyle="1510">
		     <button name="informationBtn" normal="n" sel="s" rect="0,0,240,84" OnSelect="informationBtnOnSelect" color="#000000" extendstyle="1010">
		         <node name="n" rect="0,0,240,84"  extendstyle="1010">
		             <shadow  rect="0,0,240,84" alpha="125" color="#000000" extendstyle="1010"/>
		             <label rect="0,0,240,84" text="资料" h-align="center" v-align="center" font-size="36" color="#ffffff" extendstyle="1010"/>
		         </node>
		         <node name="s" rect="0,0,240,84"  extendstyle="1010">
		             <shadow  rect="0,0,240,84" alpha="75" color="#000000" extendstyle="1010"/>
		             <label rect="0,0,240,84" text="资料" h-align="center" v-align="center" font-size="36" color="#D2691E" extendstyle="1010"/>
		         </node>	
		    </button>
		</node>
		<node rect="478,0,2,84"  extendstyle="1510">
		     <shadow rect="0,0,2,84" alpha="75" color="#FFFFFF" extendstyle="1010"/>
		</node>
		<node rect="480,0,240,84"  extendstyle="1510">
		     <button name="checkinBtn" normal="n" sel="s" rect="0,0,240,80" OnSelect="checkinBtnOnSelect" color="#000000" extendstyle="1010">
		         <node name="n" rect="0,0,240,84"  extendstyle="1010">
		             <shadow  rect="0,0,240,84" alpha="125" color="#000000" extendstyle="1010"/>
		             <label rect="0,0,240,84" text="签到" h-align="center" v-align="center" font-size="36" color="#ffffff" extendstyle="1010"/>
		         </node>
		         <node name="s" rect="0,0,240,84"  extendstyle="1010">
		             <shadow  rect="0,0,240,84" alpha="75" color="#000000" extendstyle="1010"/>
		             <label rect="0,0,240,84" text="签到" h-align="center" v-align="center" font-size="36" color="#D2691E" extendstyle="1010"/>
		         </node>		
		     </button>
		</node>
	</node>
		
		<!--catalogNode node-->
		 <node name="catalogNode" rect="0,373,720,62"   extendstyle="1010" >
	         <list name="catalogList" rect='16,0,688,62' extendstyle='1010' auto-adjust="true" line='1' col='2'>
		         <image rect="0,0,0,0"  src="file://image/radiotop_bg.png"  style="autosize"  extendstyle="1077" />
                 <list-item  rect="0,0,344,62" extendstyle="1010">
		             <button name="catalogBtn" rect="1,1,343,60"  normal="n" sel="s" disabled ="d" OnSelect="catalogBtnOnSelect" extendstyle="1010"> 
                         <image rect="0,0,340,62" src="file://image/radiotopbtn_bg.png"  style="autosize"  extendstyle="1010" />		
		                 <label rect="0,0,0,0"  name="n" text="$(text)" v-align="center" h-align="center" color="#ffffff" extendstyle="1077"/>
		                 <label rect="0,0,0,0"  name="s" text="$(text)" v-align="center" h-align="center" color="#D2691E" alpha="75" extendstyle="1077"/>
		                 <node name="d" rect="0,0,343,60"  extendstyle="1010">
		                     <label rect="0,0,340,60"  text="$(text)" v-align="center" h-align="center" color="#D2691E" extendstyle="1010"/>
		                </node>
		             </button> 
                 </list-item>
		     <dataset>
		         <set text="作品"/><set text="专辑"/>	 
		     </dataset>
             </list>    
	    </node>
		<!--panorama node-->
		<node name="contentNode" rect="17,445,686,0" padding="0,0,10,0"   extendstyle="1016" >
		     <image src="file://image/novel_listbg.png" style="autosize" rect="0,0,686,0"  extendstyle="1017" />
		     <panorama name="mainPanorama" rect="0,0,686,0" extendstyle="1017" >
                 <panoramaitem rect="0,0,686,0" extendstyle="1017" OnSelect="mainPanoramaOnSel" enable="1">
				     <node name="foreground" rect="0,0,686,0" extendstyle="1017" visbile="0">
					     <image rect="270,200,173,135" style="maxsize" alpha="155" extendstyle="1014" src="file://image/nothingbg.png"/>
		                 <label rect="0,380,686,50" text="空空如也" v-align="center" alpha="75" h-align="center" postfix=".."  extendstyle="1010" color="#CCCCCC"  font-size="35"/>	
					 </node>
                     <listview name="worksListview" visible="1" enable="1" rect="0,10,686,0"  extendstyle="0017" scroll="auto">
                     </listview>
                 </panoramaitem>
                 <panoramaitem  rect="0,0,686,0" extendstyle="1017" OnSelect="mainPanoramaOnSel" enable="1">
                     <listview name="albumListview" visible="1" enable="1" rect="0,10,686,0" extendstyle="0017" scroll="auto">
                     </listview>
                </panoramaitem>
            </panorama>
	    </node>
	</node>
	<!--panorama的作品数据item-->
	<node name="worksItem" rect="0,0,686,172" extendstyle="1010"  visible="0" enable="0" active="0">
			<button name="worksItemBtn" normal="n" sel="s" disabled ="d" OnSelect="worksItemBtnOnSelect" rect="0,0,686,0" extendstyle="1117">								   
			     <shadow name="s" rect="0,0,686,0" alpha="50" color="#000000" extendstyle="1117"/> 
			     <image rect="20,19,237,133" src="file://image/noveldefaultbg.png" style="autosize" extendstyle="1010"  BuildChildrenFinished="resChoose"><node/></image>
			     <image name="worksImage"  rect="20,19,237,133" style="autosize" extendstyle="1010"/>
			     <label name="worksName" rect="270,35,400,55" v-align="center" postfix=".."  extendstyle="1111" color="#FFFFFF"  font-size="35"/>
			     <label rect="270,110,70,40" v-align="center" text="主播:" extendstyle="1111" color="#999999"  font-size="28"/>			
			     <label name="worksAnchor" rect="0,110,200,40" v-align="center"  postfix=".."  extendstyle="8111" color="#999999"  font-size="28"/>
			     <image name="rimg" rect="600,70,50,50" style="maxsize"  extendstyle="1111" src="file://image/arrow.png"/>
                 <image rect="0,0,686,2" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>
                 <shadow name="d" rect="0,0,8,172" alpha="255" color="#fb6c03" extendstyle="1010"/> 				 
			</button>
	</node>	
	
	<!--panorama的专辑数据item-->
	<node name="albumItem" rect="0,0,686,172" extendstyle="1010"  visible="0" enable="0" active="0">
	        <button name="albumItemBtn" normal="n" sel="s" OnSelect="albumItemBtnOnSelect" rect="0,0,686,0" extendstyle="1117">					
			     <image rect="0,0,686,2" style="autosize" extendstyle="1510" src="file://image/leftlistview_line.png"/>
			     <shadow name="s" rect="0,0,686,0" alpha="50" color="#000000" extendstyle="1117"/> 
			     <image rect="20,19,237,133" src="file://image/noveldefaultbg.png" style="autosize" extendstyle="1010"  BuildChildrenFinished="resChoose"><node/></image>	
			     <image name="albumImage"  rect="20,19,237,133" style="autosize" extendstyle="1010"/> 
			     <label name="albumVoltage" rect="270,19,400,45" v-align="center" postfix=".."  text="" extendstyle="1111" color="#FFFFFF"  font-size="30"/>
			     <label name="albumName" rect="270,70,400,45" v-align="center" postfix=".."  extendstyle="1111" color="#999999"  font-size="30"/>
			     <label name="albumAnchorLabel" rect="270,115,70,40" v-align="center" text="主播:" extendstyle="1111" color="#999999"  font-size="28"/>			
			     <label name="albumAnchor" rect="0,115,200,40" v-align="center"  postfix=".."  extendstyle="8111" color="#999999"  font-size="28"/>
			     <image name="rimg" rect="600,70,50,50" style="maxsize"  extendstyle="1111" src="file://image/arrow.png"/>					
			</button>
	</node>	
    <node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>	
    </node>	
</body>
</root>
<cms:include filepath="${lua}" />