<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/home/ty_home.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="utf-8"?>
<!--
 == ============================================================================
 == | WonderTek [ 网络无处不在，沟通及时到达 ]
 == ============================================================================
 == | Copyright (c) 2011, WonderTek, Inc. All Rights Reserved.
 == ============================================================================
 == | Author: wangweipeng <wangweipeng@mantis.com>
 == ============================================================================
 == | Desc: 首页
 == ============================================================================
-->
<root>
    <header>
        <script src="${cpath}/publish/clt${common}?time=${lastModifiedCommon}" /><%//远程加载common模板,实现common修改后下载最新common%>
    </header>      
    <body resolution="720,1280" BuildChildrenFinished="bodyBuildChildrenFinished" OnSpriteEvent="bodyOnSpriteEvent" OnPluginEvent="bodyOnPluginEvent">
    <node name="mainNode" rect="0,0,720,1280" enable="true" active="true" OnKeyUp="mainNodeOnKeyUp" layouttype="1" extendstyle="1111">  
        <image rect="0,0,720,0" style="autosize" src="file://image/background.png" extendstyle="1017"/>  
        <panorama name="mainPanorama" rect="0,0,720,1180" extendstyle="1017" foreground="foreground">
            <panoramaitem name="foreground" rect="0,0,720,0" extendstyle="0017">
                <node name="popupNode" rect="0,0,720,1180" extendstyle="1111"/>
                <node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
            </panoramaitem>
            <panoramaitem rect="0,0,720,1180" extendstyle="1017" navigation_l="leftSideguideNode" navigation_r="rightSideguideNode" navigation_auto="true" preview="190"
                OnNavigationL="itemOnNavigationL" OnNavigationC="itemOnNavigationC" frame="false">               
				<!--左部 -->
				<node name="leftSideguideNode" rect="0,0,720,1180" padding="0,0,112,0" extendstyle="1116">
                    <image name="leftBg" rect="0,0,550,0" style="autosize" extendstyle="1117" src="file://image/left_bg.png"/>
					<image name="leftImage" rect="0,0,0,270" style="autosize" extendstyle="1171" src="file://image/left_image.png"/>
					<listview name="leftListview" rect="30,300,480,0" col="1" line="6" auto-adjust="true" offset="0,10" extendstyle="1117">
					
					<list-item name="rightItem" rect="0,10,480,100" extendstyle="1070">					
				    <button name="leftBtn" normal="n" sel="s" OnSelect="leftBtnOnSelect" rect="0,0,480,0" extendstyle="1117">					
					<image rect="0,0,480,0" style="autosize"  extendstyle="1117" src="file://image/right_item_background.png"/>
					<node  name="n" rect="0,0,480,0" extendstyle="1117">
				    <image rect="20,30,50,50" style="maxsize" extendstyle="1111" src="$(lsrc)"/>
					<label rect="100,28,100,50" v-align="center" autoextend="true" extendstyle="1111" text="$(txt)" color="#999999"  font-size="30"/>
					</node>
					<node  name="s" rect="0,0,480,0" extendstyle="1117">
				    <image rect="20,30,50,50" style="maxsize" extendstyle="1111" src="$(lsrc_s)"/>
					<label rect="100,28,100,50" v-align="center" autoextend="true" extendstyle="1111" text="$(txt)" color="#e15e00"  font-size="30"/>
					</node>
					<image name="rimg" rect="$(rrect)" style="maxsize"  extendstyle="111" src="$(rsrc)"/>					
					</button>
					<list name="radioList" rect="0,0,480,0" visible="0" col="2" line="3" auto-adjust="true" offset="0,0" extendstyle="1010">											
			            <button name="allRadioBtn" rect="0,280,480,100" OnSelect="allRadioBtnOnSelect" normal="n" sel="s" extendstyle="1010" >
						<image name="n" rect="0,0,480,100" style="autosize" src="file://image/left_radio_bottom.png"/>
						<image name="s" rect="0,0,480,100" style="autosize" src="file://image/left_radio_bottom_s.png"/>
						<label rect="0,0,480,100" extendstyle="1111" h-align="center" text="查看完整电台分类" color="#fb6c03" v-align="center" font-size="30"/>
						</button>							
					</list>
				    </list-item>
					<dataset>
					<set lsrc="file://image/search_n.png" lsrc_s="file://image/search_f.png" rsrc="file://image/arrow.png" txt="搜索" rrect="400,30,50,50" />
					<set lsrc="file://image/left_collect.png" lsrc_s="file://image/left_collect_s.png" rsrc="file://image/arrow.png" txt="个人收藏" rrect="400,30,50,50" />
                    <set lsrc="file://image/left_home_selection.png" lsrc_s="file://image/left_home_selection_s.png"  rsrc="file://image/arrow.png" txt="首页精选"  rrect="400,30,50,50"/>	
                    <set lsrc="file://image/transceiver_n.png" lsrc_s="file://image/transceiver_n_s.png"  rsrc="file://image/left_radio_arrow.png" txt="网络电台" rrect="405,33,35,40"/>	
                    <set lsrc="file://image/novel_n.png" lsrc_s="file://image/novel_n_s.png"  rsrc="file://image/arrow.png" txt="有声小说"  rrect="400,30,50,50"/>	
                    <set lsrc="file://image/podcast_n.png" lsrc_s="file://image/podcast_n_s.png"  rsrc="file://image/arrow.png" txt="发现播客"  rrect="400,30,50,50"/>	
					</dataset>
				
					</listview>
                </node>			
				<!--main -->
				<node  rect="0,0,720,1168" padding="0,0,112,0" extendstyle="1116">
				     <image rect="0,0,720,0" style="autosize" src="file://image/background.png" extendstyle="1017"/>
				  <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
				    <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
					<button name="leftNavigationBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="leftNavigationBtnOnSelect" visible="1" enable="1">
					<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
					<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
				    <label rect="0,0,104,61" extendstyle="1111" text="导航" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
				    </button>
                    <label name="mainTitle" rect="0,0,720,77" extendstyle="1110" text="首页精选" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
					<button name="rightNavigationBtn" normal="n" sel="s" rect="600,15,104,61" extendstyle="1111" OnSelect="rightNavigationBtnOnSelect" visible="1" enable="1">
					<image name="n" rect="0,0,0,0" style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
					<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
				    <label rect="0,0,104,61" extendstyle="1111" text="功能" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
				    </button>
				</node>  
				<node name="mainPanoramaNode" rect="0,100,720,300"  extendstyle="1111">
				<image rect="17,0,686,300" style="autosize" src="file://image/defaultbg.png" extendstyle="1010"/>
				<!--main 电台头部滑动-->
				  <panorama name="mainRecPanorama"  OnSelect='recmPanoramaItemOnSelect' rect="17,0,686,300" style="circle" foreground="foreground" alpha="255" extendstyle="1110" visible="1" enable="1">
					<panoramaitem name="foreground" rect="0,0,686,300" extendstyle="1110">
					</panoramaitem>
				  </panorama>
				  <!--main 小说头部滑动-->
				  <panorama name="mainRecNovelPanorama" OnKeyUp="mainPanoramaOnKeyup" rect="17,0,686,300" style="circle" foreground="foreground" alpha="255" extendstyle="1110" visible="0" enable="0">
					<panoramaitem name="foreground" rect="0,0,686,300" extendstyle="1110">
					</panoramaitem>
				  </panorama>
				  <!--main 播客头部滑动-->
				  <panorama name="mainRecPodcastPanorama" OnKeyUp="mainPanoramaOnKeyup" rect="17,0,686,300" style="circle" foreground="foreground" alpha="255" extendstyle="1110" visible="0" enable="0">
					<panoramaitem name="foreground" rect="0,0,686,300" extendstyle="1110">
					</panoramaitem>
				  </panorama>
				  
				  <!--left 电台头部滑动-->
				  <panorama name="leftRadioRecPanorama"  rect="17,0,686,300" style="circle" foreground="foreground" alpha="255" extendstyle="1110" visible="0" enable="0">
					<panoramaitem name="foreground" rect="0,0,686,300" extendstyle="1110">
					</panoramaitem>
				  </panorama>
				  
				  <!--left 小说头部滑动-->
				  <panorama name="leftNovelRecPanorama"  rect="17,0,686,300" style="circle" foreground="foreground" alpha="255" extendstyle="1110" visible="0" enable="0">
					<panoramaitem name="foreground" rect="0,0,686,300" extendstyle="1110">
					</panoramaitem>
				  </panorama>
				  
				  <!--left 播客头部滑动-->
				  <panorama name="leftPodcastRecPanorama"  rect="17,0,686,300" style="circle" foreground="foreground" alpha="255" extendstyle="1110" visible="0" enable="0">
					<panoramaitem name="foreground" rect="0,0,686,300" extendstyle="1110">
					</panoramaitem>
				  </panorama>
				  
				  <!--main 电台头部标记当前页-->
				  <node name="listNode" rect="17,315,686,40" visible="0" enable="0" extendstyle="1010">
					  <list name="foregroundList" rect="0,0,686,40" line="1"  auto-adjust="true" offset="0,0" extendstyle="1111"/>
				  </node>
				  <!--main 小说头部标记当前页-->
				  <node name="listNovelNode" rect="17,315,686,40" extendstyle="1010" visible="0" enable="0">
					  <list name="foregroundNovelList" rect="0,0,686,40" line="1" auto-adjust="true" offset="0,0" extendstyle="1111"/>
				  </node>
				  <!--main 播客头部标记当前页-->
				  <node name="listPodcastNode" rect="17,315,686,40" extendstyle="1010">
					  <list name="foregroundPodcastList" rect="0,0,686,40" line="1"  auto-adjust="true" offset="0,0" extendstyle="1111"/>
				  </node>
				  <!--left 电台头部标记当前页-->
				  <node name="leftlistRadioNode" rect="17,315,686,40" extendstyle="1010" visible="0" enable="0">
					  <list name="foregroundLeftRadioList" rect="0,0,686,40" line="1"  auto-adjust="true" offset="0,0" extendstyle="1111"/>
				  </node>
				  
				  <!--left 小说头部标记当前页-->
				  <node name="listleftNovelNode" rect="17,315,686,40" extendstyle="1010" visible="0" enable="0">
					  <list name="foregroundLeftNovelList" rect="0,0,686,40" line="1" auto-adjust="true" offset="0,0" extendstyle="1111"/>
				  </node>
				
				<!--left 播客头部标记当前页-->
				  <node name="listleftPodcastNode" rect="17,315,686,40" extendstyle="1010" visible="0" enable="0">
					  <list name="foregroundLeftPodcastList" rect="0,0,686,40" line="1" auto-adjust="true" offset="0,0" extendstyle="1111"/>
				  </node>
				</node> 
				
				<!--main 电台ListView-->
				<node name="mainListviewRadioNode" rect="17,450,686,0"  padding="0,0,75,0" extendstyle="1016" visible="1" enable="1">
					<listview  name="mainListViewRadio" rect="0,0,0,0" extendstyle="1077">
				    </listview >
				</node>
				<!--main 小说ListView-->
                <node name="mainListviewNovelNode" rect="17,450,686,0"  padding="0,0,75,0" extendstyle="1016" visible="0" enable="0">
					<listview  name="mainListViewNovel" rect="0,0,0,0" extendstyle="1077">
				    </listview >
				</node>
				<!--main 播客ListView-->
                <node name="mainListviewPodcastNode" rect="17,450,686,0"  padding="0,0,75,0" extendstyle="1016" visible="0" enable="0">
					<listview  name="mainListViewPodcast" rect="0,0,0,0" extendstyle="1077">
				    </listview >
				</node>
				<!--left 电台ListView-->
                <node name="leftListviewRadioNode" rect="17,450,686,0" padding="0,0,17,0" extendstyle="1016" visible="0" enable="0">
				   <!-- <shadow  rect="0,0,0,0" color="#FF7F00" extendstyle="1177"/>-->
				<image rect="0,0,0,0" style="autosize" src="file://image/novel_listbg.png"  extendstyle="1077"/>
				<listview  name="leftListViewRadio" rect="3,15,676,0" padding="0,0,3,0" extendstyle="1016">
				</listview>
				</node>	
                <!--left 小说ListView-->
                <node name="leftListviewNovelNode" rect="17,450,686,0" extendstyle="1017" visible="0" enable="0">
				   <!-- <shadow  rect="0,0,0,0" color="#FF7F00" extendstyle="1177"/>-->
				<listview  name="leftListViewNovel" rect="0,0,0,0" extendstyle="1077">
				</listview>
				</node>	
                <!--left 播客ListView-->
                <node name="leftListviewPodcastNode" rect="17,450,686,0" extendstyle="1017" visible="0" enable="0">
				   <!-- <shadow  rect="0,0,0,0" color="#FF7F00" extendstyle="1177"/>-->
				<listview  name="leftListViewPodcast" rect="0,0,0,0" extendstyle="1077">
				</listview>
				</node>				
                <!--main 最底部-->				
				<node name="mainBottomNode" rect="0,0,720,70"  extendstyle="1511">
				    <list name="mainBottomList"rect="0,0,0,0" line="1" col="4" auto-adjust="true" extendstyle="1077">
					<list-item name="functionList" rect="0,0,240,70" extendstyle="1010">
					    <button name="functionBtn" rect="0,0,240,70" normal="n" sel="s" disabled="d" extendstyle="1111" OnSelect="functionBtnOnSelect" visible="1" enable="1">
	                     <node name="n" rect="0,0,240,70"  extendstyle="1111">
						 <image rect="20,0,68,64" src="$(url_n)" style="maxsize" extendstyle="1010"/>
						 <label rect="120,5,68,64" text="$(text)" font-size="25" color="$(color_n)" extendstyle="1010"/>
						 </node>
						 <node name="s" rect="0,0,240,70"  extendstyle="1111">
						 <image rect="20,0,68,64" src="$(url_s)" style="maxsize" extendstyle="1010"/>
						 <label rect="120,5,68,64" text="$(text)" font-size="25"color="#D2691E" extendstyle="1010"/>
						 </node>
						 <node name="d" rect="0,0,240,70"  extendstyle="1111">
						 <image rect="20,0,68,64" src="$(url_s)" style="maxsize" extendstyle="1010"/>
						 <label rect="120,5,68,64" text="$(text)" font-size="25"color="#D2691E" extendstyle="1010"/>
						 </node>
						 <shadow rect="0,0,4,64" color="$(color)" visible="$(visible)" extendstyle="5010"/>
						</button>
                    </list-item>
					<dataset>
	                 <!--<set url_n="file://image/live_n.png" url_s="file://image/live_s.png" color="#000000" color_n="#FFFFFF" color_s="#D2691E" text="直播" visible="true"/> -->
					 <set url_n="file://image/transceiver_n.png" url_s="file://image/transceiver_s.png" color="#000000" color_n="#FFFFFF"  text="电台" visible="true"/> 
					 <set url_n="file://image/novel_n.png"  url_s="file://image/novel_s.png" color="#000000" color_n="#FFFFFF"  text="小说" visible="true"/>
                     <set url_n="file://image/podcast_n.png" url_s="file://image/podcast_s.png" color="" color_n="#FFFFFF"  text="播客" visible="false"/>
                    </dataset>
					</list>
				  </node>  
                </node>			
				<!--右部 -->
				<node name="rightSideguideNode" rect="190,0,720,1168" extendstyle="1111">
                    <image name="rightBg" rect="0,0,720,1168" extendstyle="1111" src="file://image/right_bg.jpg"/>	
					<node name="loginNode" rect="30,20,480,100" extendstyle="1111" visible="1" enable="1">
					   <button name="loginBtn" normal="n" sel="s" OnSelect="loginBtnOnSelect" rect="0,0,480,100" extendstyle="1010">					
					   <image rect="0,0,480,0" style="autosize" extendstyle="1117" src="file://image/right_item_background.png"/>
					   <node  name="n"  rect="0,0,480,0" extendstyle="1117">
				       <image rect="20,30,50,50" style="maxsize" extendstyle="1111" src="file://image/user.png"/>
					   <label rect="100,28,100,50" v-align="center" autoextend="true" extendstyle="1111" text="用户登录" color="#999999"  font-size="30"/>
					   </node>
					   <node name="s" rect="0,0,480,0" extendstyle="1117">
				       <image rect="20,30,50,50" style="maxsize" extendstyle="1111" src="file://image/user_s.png"/>
					   <label rect="100,28,100,50" v-align="center" autoextend="true" extendstyle="1111" text="用户登录" color="#e15e00"  font-size="30"/>
					   </node>
					   <image rect="400,30,50,50" style="autosize"  extendstyle="111" src="file://image/arrow.png"/>					
					   </button>
					</node>   
					<node name="userNode" rect="30,20,480,100" extendstyle="1111" visible="0" enable="0">
					   <button name="userBtn" normal="n" OnSelect="userBtnOnSelect" rect="0,0,480,100" extendstyle="1010">					
					      <image name="n" rect="0,0,480,100" style="autosize" extendstyle="1010" src="file://image/right_item_background.png"/>
				          <image name="userPic" rect="22,22,56,56" style="maxsize" extendstyle="0000" src="file://image/dft_headimg_mid.jpg" BuildChildrenFinished="resChoose"><node/></image>
                          <image rect="18,20,60,60" style="minsize" src="file://image/sg_spacemask.png" extendstyle="0000" />					  
					      <label name="userName" rect="80,28,100,50" v-align="center" autoextend="true" extendstyle="1111" text="欢迎你" color="#D2691E"  font-size="28"/>
					      <image rect="400,30,50,50" style="autosize"  extendstyle="111" src="file://image/arrow.png"/>					
					   </button>
					</node>					
					<list name="rightList" rect="30,135,480,1000" col="1" line="6" auto-adjust="true" offset="0,10" extendstyle="1111">
					<list-item name="rightItem" rect="0,0,480,100">					
				       <button name="rightBtn" normal="n" sel="s" OnSelect="rightBtnOnSelect" rect="0,0,480,0" extendstyle="1117">					
					    <image rect="0,0,480,0" style="autosize" extendstyle="1117" src="file://image/right_item_background.png"/>
				        <node name="n" rect="0,0,480,0" extendstyle="1117">
				           <image rect="20,30,50,50" style="maxsize" extendstyle="1111" src="$(lsrc)"/>
					       <label rect="100,28,100,50" v-align="center" autoextend="true" extendstyle="1111" text="$(txt)" color="#999999"  font-size="30"/>
					    </node>
					    <node name="s" rect="0,0,480,0" extendstyle="1117">
				           <image rect="20,30,50,50" style="maxsize" extendstyle="1111" src="$(lsrc_s)"/>
					       <label rect="100,28,100,50" v-align="center" autoextend="true" extendstyle="1111" text="$(txt)" color="#e15e00"  font-size="30"/>
					     </node>
					     <image rect="400,30,50,50" style="autosize"  extendstyle="111" src="file://image/arrow.png"/>					 
					   </button>
				    </list-item>
					<dataset>
                       <set lsrc="file://image/timing.png" lsrc_s="file://image/timing_s.png" txt="定时关闭"/>	
                       <set lsrc="file://image/set.png" lsrc_s="file://image/set_s.png"  txt="系统设置"/>	
                       <set lsrc="file://image/opinion.png" lsrc_s="file://image/opinion_s.png"  txt="意见反馈"/>					
					</dataset>
					</list>
                </node>             
            </panoramaitem>
        </panorama>
		<node name="timedCloseNode" rect="0,0,0,0" extendstyle="1177" visible="0" enable="0"> 
		<button rect="0,0,0,0" extendstyle="1177" OnSelect="closeBgBtnOnSelect"/>
        <node  rect="100,306,620,410" extendstyle="1010">        
            <image rect="0,0,500,410" src="file://image/dialogbg.png"  style="autosize" extendstyle="1017" BuildChildrenFinished="resChoose"></image>
            <image rect="0,0,500,85" src="file://image/orderDig_head.png"  style="autosize" sudoku="6,0,6,0" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
            <label name="dtitle" rect="15,0,200,85" text="定时关闭" color="#CCCCCC" font-size="30" v-align="center"  extendstyle="1010"/>
            <label name="closeTimeLbl" rect="0,0,120,85" color="#FFFFFF" font-size="30" v-align="center"  extendstyle="8010"/>
			<shadow rect="0,85,500,4" color="#D2691E" alpha="255" extendstyle="1010"/>
            <node rect="0,20,500,65" extendstyle="1111">
			<button name="switchBtn1" rect="0,0,140,65" extendstyle="5010" data="off" OnSelect="switchOnMouseUp" >
                <image rect="0,0,120,50" src="file://image/onoffbtn_bg.png" style="autosize" extendstyle="1010" />
				<label name="off" rect="0,0,60,50" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#CD2626" text="关" />
                <label name="on" rect="60,0,60,50" extendstyle="1010" v-align="center" h-align="center" font-size="25" color="#9ACD32" text="开" />
                <node name="switchNode1" rect="0,0,60,50" extendstyle="1010"> 
                <image name="shadow" rect="0,0,60,50" src="file://image/onoffbtn.png" style="autosize" extendstyle="1010" />
                </node>
            </button>
			</node>
			<node name="btnNode" rect="0,105,500,500" extendstyle="1111">
				<list name="btnList" rect="15,0,0,0" extendstyle="1177" line="2" col="3" auto-adjust="true" offset="2,6">
					<list-item name="item1" rect="0,0,160,150">
						<button name="timedCloseBtn" OnSelect="timedCloseBtnOnSelect" rect="0,0,160,150" extendstyle="1111">
						<image rect="0,0,150,0" extendstyle="1117" src="file://image/progressop_btnbg.png" style="autosize"/>
						<label text="$(minuteTxt)" rect="$(mrect)" extendstyle="1111" autoextend="true" color="#CCCCCC" font-size="55" h-align="left" v-align="center"/>
						<label text="分钟" rect="58,0,50,50" extendstyle="1811"  autoextend="true" color="#CCCCCC" font-size="20"/>
						</button>
					</list-item>
					<dataset>
						<set minuteTxt="10" mrect="45,30,60,50" />
						<set minuteTxt="20" mrect="45,30,60,50"/>
						<set minuteTxt="30" mrect="45,30,60,50"/>
						<set minuteTxt="60" mrect="45,30,60,50"/>
						<set minuteTxt="90" mrect="45,30,60,50"/>
						<set minuteTxt="120" mrect="30,30,100,50"/>
					</dataset>
				</list>
			</node>
        </node>	
		</node>
		<!-- panorama电台的item-->
       <node name="mainPanoramaItem" rect="0,0,686,300" visible="false" enable="false" active="false" >
            <button name="radioRecommendBtn"  OnSelect="radioRecommendBtnOnSelect" rect="0,0,686,300" extendstyle="1110">
			<image name="recommendImg" rect="0,0,686,300" style="autosize" src="" extendstyle="1110"/>
			<shadow rect="0,0,0,74" alpha="125" color="#000000" extendstyle="1571"/>  
			<label rect="20,0,150,74" extendstyle="1511"  text="01/27"  color="#FFFFFF"  font-size="40"/>
			<label rect="0,0,150,74" extendstyle="8511"  text="12:00"  color="#FFFFFF"  font-size="40"/>
			<label rect="0,0,386,74" name="mainPanoramaItemname" extendstyle="8511"  text="" postfix=".." color="#FFFFFF"  font-size="40"/>
			</button>
	   </node>
       <!-- panorama小说的item-->
       <node name="mainPanoramaNovelItem" rect="0,0,686,300" visible="false" enable="false" active="false" >
            <button name="novelRecommendBtn" OnSelect="novelRecommendBtnOnSelect" rect="0,0,686,300" extendstyle="1110">
			<image name="recommendImg" rect="0,0,686,300" style="autosize" src="" extendstyle="1110"/>
			<shadow rect="0,0,0,74" alpha="125" color="#000000" extendstyle="1571"/>  
			<label rect="20,0,150,74" extendstyle="1511"  text="01/27"  color="#FFFFFF"  font-size="40"/>
			<label rect="0,0,150,74" extendstyle="8511"  text="21:00"  color="#FFFFFF"  font-size="40"/>
			<label rect="0,0,386,74" name="mainPanoramaItemname" extendstyle="8511"  text="" postfix=".." color="#FFFFFF"  font-size="40"/>
			</button>
	   </node>
      <!-- panorama播客的item-->
       <node name="mainPanoramaPodcastItem" rect="0,0,686,300" visible="false" enable="false" active="false" >
	        <button name="podcastRecommendBtn" OnSelect="podcastRecommendBtnOnSelect" rect="0,0,686,300" extendstyle="1110">
            <image name="recommendImg" rect="0,0,686,300" style="autosize" src="" extendstyle="1110"/>
			<shadow rect="0,0,0,74" alpha="125" color="#000000" extendstyle="1571"/>  
			<label rect="20,0,150,74" extendstyle="1511"  text="01/27"  color="#FFFFFF"  font-size="40"/>
			<label rect="0,0,150,74" extendstyle="8511"  text="21:00"  color="#FFFFFF"  font-size="40"/>
			<label rect="0,0,386,74" name="mainPanoramaItemname" extendstyle="8511"  text="" postfix=".." color="#FFFFFF"  font-size="40"/>
            </button>
	   </node>
	    <!--left panorama电台的item  --> 
       <node name="leftRadioPanoramaItem" rect="0,0,686,300" visible="false" enable="false" active="false" >
			<button name="leftradioRecommendBtn" OnSelect="leftradioRecommendBtnOnSelect" rect="0,0,686,300" extendstyle="1110">
            <image name="recommendImg" rect="0,0,686,300" style="autosize" src="" extendstyle="1110"/>
			<shadow rect="0,0,0,74" alpha="125" color="#000000" extendstyle="1571" visible="false" enable="false"/>  
			<label rect="20,0,150,74" extendstyle="1511"  text="01/27"  color="#FFFFFF"  font-size="40" visible="false" enable="false"/>
			<label rect="0,0,150,74" extendstyle="8511"  text="21:00"  color="#FFFFFF"  font-size="40" visible="false" enable="false"/>
			<label rect="0,0,386,74" name="leftPanoramaItemname" extendstyle="8511"  text="" postfix=".." color="#FFFFFF"  font-size="40" visible="false" enable="false"/>
			</button>
	  </node>	
	   
       <!--left panorama小说的item  --> 
       <node name="leftNovelPanoramaItem" rect="0,0,686,300" visible="false" enable="false" active="false" >
			<button rect="0,0,686,300" name="novelPanoramaItemBtn" extendstyle="1110" OnSelect="novelPanoramaItemBtnOnSelect">
            <image name="recommendImg" rect="0,0,686,300" style="autosize" src="" extendstyle="1110"/>
			<shadow rect="0,0,0,74" alpha="125" color="#000000" extendstyle="1571" visible="false" enable="false"/>  
			<label rect="20,0,150,74" extendstyle="1511"  text="01/27"  color="#FFFFFF"  font-size="40" visible="false" enable="false"/>
			<label rect="0,0,150,74" extendstyle="8511"  text="21:00"  color="#FFFFFF"  font-size="40" visible="false" enable="false"/>
			<label rect="0,0,386,74" name="leftPanoramaItemname" extendstyle="8511"  text="" postfix=".." color="#FFFFFF"  font-size="40" visible="false" enable="false"/>
			</button>
	   </node>

       <!--left panorama播客的item  --> 
       <node name="leftPodcastPanoramaItem" rect="0,0,686,300" visible="false" enable="false" active="false" >
			<button rect="0,0,686,300" name="podcastPanoramaItemBtn" extendstyle="1110" OnSelect="podcastPanoramaItemBtnOnSelect">
            <image name="recommendImg" rect="0,0,686,300" style="autosize" src="" extendstyle="1110"/>
			<shadow rect="0,0,0,74" alpha="125" color="#000000" extendstyle="1571" visible="false" enable="false"/>  
			<label rect="20,0,150,74" extendstyle="1511"  text="01/27"  color="#FFFFFF"  font-size="40" visible="false" enable="false"/>
			<label rect="0,0,150,74" extendstyle="8511"  text="21:00"  color="#FFFFFF"  font-size="40" visible="false" enable="false"/>
			<label rect="0,0,386,74" name="leftPanoramaItemname" extendstyle="8511"  text="" postfix=".." color="#FFFFFF"  font-size="40" visible="false" enable="false"/>
			</button>
	   </node>	
	   
       <!-- 推荐列表电台的item-->
        <node name="recommendItem" rect="0,0,686,510" extendstyle="1010" visible="0" enable="0" active="0"> 
			 <node name="imgNode1" rect="0,0,407,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,407,192" style="minsize" alphaeffect="true" src="" extendstyle="0011">
                     <image rect="0,0,407,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect" extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
			 <node name="imgNode2" rect="416,0,271,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,271,192" style="minsize" alphaeffect="true" src=""  extendstyle="0011">
                     <image rect="0,0,271,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect"  extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
			 <node name="imgNode3" rect="0,256,271,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,271,192" style="minsize" alphaeffect="true" src="" extendstyle="0011">
                     <image rect="0,0,271,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect" extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
			 <node name="imgNode4" rect="280,256,407,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,407,192" style="minsize" alphaeffect="true" src=""  extendstyle="0011">
                     <image rect="0,0,407,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect" extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
        </node>
        <!-- 推荐列表小说的item-->
        <node name="recommendNovelItem"  rect="0,0,686,510" extendstyle="1010" visible="0" enable="0" active="0"> 
			 <node name="imgNode1" rect="0,0,407,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,407,192" style="minsize" alphaeffect="true" src="" extendstyle="0011">
                     <image rect="0,0,407,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect" extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
			 <node name="imgNode2" rect="416,0,271,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,271,192" style="minsize" alphaeffect="true" src=""  extendstyle="0011">
                     <image rect="0,0,271,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect"  extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
			 <node name="imgNode3" rect="0,256,271,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,271,192" style="minsize" alphaeffect="true" src="" extendstyle="0011">
                     <image rect="0,0,271,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect" extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
			 <node name="imgNode4" rect="280,256,407,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,407,192" style="minsize" alphaeffect="true" src=""  extendstyle="0011">
                     <image rect="0,0,407,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect" extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
         </node>
 
        <!-- 推荐列表播客的item-->
        <node name="recommendPodcastItem"  rect="0,0,686,510" extendstyle="1010" visible="0" enable="0" active="0"> 
			 <node name="imgNode1" rect="0,0,407,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,407,192" style="minsize" alphaeffect="true" src="" extendstyle="0011">
                     <image rect="0,0,407,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect" extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
			 <node name="imgNode2" rect="416,0,271,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,271,192" style="minsize" alphaeffect="true" src=""  extendstyle="0011">
                     <image rect="0,0,271,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect"  extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
			 <node name="imgNode3" rect="0,256,271,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,271,192" style="minsize" alphaeffect="true" src="" extendstyle="0011">
                     <image rect="0,0,271,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect" extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
			 <node name="imgNode4" rect="280,256,407,245" extendstyle="1111">
                 <image name="fallImg" rect="0,0,407,192" style="minsize" alphaeffect="true" src=""  extendstyle="0011">
                     <image rect="0,0,407,192" style="autosize" src="file://image/shadow_content.png" extendstyle="0011"/>
                 </image>
				 <label name="recommendItemname" rect="0,0,0,44" extendstyle="1571"  text="" v-align="center" h-align="center" postfix=".." color="#FFFFFF"  font-size="30"/>
                 <button name="contentBtn" rect="0,0,0,0" OnSelect="contentOnSelect" extendstyle="0077" sel="s">
                     <shadow name="s" rect="0,0,0,0" color="#000000" alpha="125" extendstyle="0077"/>
                 </button>
             </node>
         </node>
		 
		  <!-- left电台ListView的item-->
		  <node name="leftRadioListviewItem" rect="0,0,687,90" extendstyle="1010" visible="0" enable="0" active="0"> 
			  <node rect="0,0,0,0" extendstyle="1077">
			  <button name="leftRadioItemBtn"   sel="s" rect="0,0,0,0"  OnSelect="leftRadioItemBtnOnSelect" style="autosize" extendstyle="1077">
			  <shadow name="s" rect="0,0,0,90" alpha="50" color="#000000" extendstyle="1070"/>
			  <image name="radioimg" rect="40,30,41,34" style="maxsize" src=""  extendstyle="1011"/>
			  <label name="radioname" rect="120,0,250,0" text="" v-align="center" extendstyle="1017" color="#FFFFFF" font-size="30"/>
			  <image rect="600,20,55,55" style="maxsize" src="file://image/arrow.png"  extendstyle="1011"/>
			  </button>
			  </node>
			  <image rect="0,0,0,2" style="autosize" src="file://image/leftlistview_line.png" extendstyle="1570"/>
		  </node> 
		 
		 <!-- left小说ListView的item-->
		  <node name="leftNovelListviewItem" rect="0,0,686,400" extendstyle="1010" visible="0" enable="0" active="0"> 
		      <image rect="0,0,0,90" style="autosize" src="file://image/leftlistview_topbg.png"  extendstyle="1070">
			  <label name="leftNovelRecTitle" rect="20,0,250,0" text="" v-align="center" extendstyle="1017" color="#FF7F00" font-size="30"/>
			  </image>
			  <node rect="0,0,0,90" extendstyle="1070">
			  <button name="leftNovelRecMoreBtn"  normal="n" sel="s" rect="530,15,150,60"  OnSelect="leftNovelRecMoreBtnOnSelect" style="autosize" extendstyle="1011">
			  <image name="n" rect="0,0,0,90" style="autosize" src="file://image/leftlistview_topbt.png"  extendstyle="1077"/>
			  <image name="s" rect="0,0,0,90" style="autosize" src="file://image/leftlistview_topbt_s.png"  extendstyle="1077"/>
			  <label name="leftNovelRecMoreText"  rect="0,0,0,0" text="查看更多" h-align="center" v-align="center" extendstyle="1077" color="#FFFFFF" font-size="25"/>
			  </button>
			  </node>
			  <list name="leftNovelChildList" line="2" col="1" rect="0,0,0,344" extendstyle="1870"/>
		  </node> 
		  <!-- left小说ListView的item的childlist的Item-->
		  <node name="leftNovelChildListItem" rect="0,0,686,172" extendstyle="1070" visible="0" enable="0" active="0"> 
		  <button rect="0,0,0,0" name="leftNovelChildBtn" normale="n" sel="s" style="autosize" src="file://image/leftlistview_itembg.png"  OnSelect="leftNovelListViewChildListOnSelect" extendstyle="1177">
		   <image name="n" rect="0,0,0,172" style="autosize" src="file://image/leftlistview_itembg.png"  extendstyle="1070">
            <image rect="20,19,237,133"  src="file://image/noveldefaultbg.png" style="autosize" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>		   
			<image name="novelImage"  rect="20,19,237,133"  style="autosize" extendstyle="1010"/>
			<label name="leftNovelRecName"  rect="275,15,411,45" text="" extendstyle="1010" color="#FFFFFF" font-size="35"/>
			<node  rect="275,0,0,45" extendstyle="1810">
			<label name="leftNovelRecHost"  rect="0,20,80,45" text="主播:"   v-align="center" extendstyle=8110" color="#a3a3a3" font-size="30"/>
			<label name="leftNovelRecHostName" rect="0,20,150,45" text=""   v-align="center" extendstyle="8110" color="#a3a3a3" font-size="30"/>
			</node>
		  </image>
		  <image name="s" rect="0,0,0,172" style="autosize" extendstyle="1070">
			<shadow rect="0,0,0,172" alpha="50" color="#000000" extendstyle="1170"/> 
			<image name="novelImage_s"  rect="20,19,237,133"  style="autosize" extendstyle="1010"/>
			<label name="leftNovelRecName_s"  rect="275,15,411,45" text="" extendstyle="1010" color="#FFFFFF" font-size="35"/>
			<node  rect="275,0,0,45" extendstyle="1810">
			<label name="leftNovelRecHost_s"  rect="0,20,80,45" text="主播:"   v-align="center" extendstyle=8110" color="#a3a3a3" font-size="30"/>
			<label name="leftNovelRecHostName_s" rect="0,20,150,45" text=""   v-align="center" extendstyle="8110" color="#a3a3a3" font-size="30"/>
			</node>
		  </image>
		  <image rect="0,0,0,2" style="autosize" src="file://image/leftlistview_line.png"  extendstyle="1571"/>
		   </button>
		   </node>
		   
		   <!-- left播客ListView的item-->
		  <node name="leftPodcastListviewItem" rect="0,0,686,400" extendstyle="1010" visible="0" enable="0" active="0"> 
		      <image rect="0,0,0,90" style="autosize" src="file://image/leftlistview_topbg.png"  extendstyle="1070">
			  <label name="leftPodcastRecTitle" rect="20,0,350,0" text="" v-align="center" extendstyle="1017" color="#FF7F00" font-size="30"/>
			  </image>
			  <node rect="0,0,0,90" extendstyle="1070">
			  <button name="leftPodcastRecMoreBtn"  normal="n" sel="s" rect="530,15,150,60"  OnSelect="leftPodcastRecMoreBtnOnSelect" style="autosize" extendstyle="1011">
			  <image name="n" rect="0,0,0,90" style="autosize" src="file://image/leftlistview_topbt.png"  extendstyle="1077"/>
			  <image name="s" rect="0,0,0,90" style="autosize" src="file://image/leftlistview_topbt_s.png"  extendstyle="1077"/>
			  <label name="leftPodcastRecMoreText"  rect="0,0,0,0" text="查看更多" h-align="center" v-align="center" extendstyle="1077" color="#FFFFFF" font-size="25"/>
			  </button>
			  </node>
			  <list name="leftPodcastChildList" line="2" col="1" rect="0,0,0,344" extendstyle="1870"/>
		  </node> 
		  <!-- left播客ListView的item的childlist的Item-->
		  <node name="leftPodcastChildListItem" rect="0,0,686,172" extendstyle="1070" visible="0" enable="0" active="0"> 
		  <button rect="0,0,0,0" name="leftPodcastChildBtn" normale="n" sel="s" style="autosize" src="file://image/leftlistview_itembg.png"  OnSelect="leftPodcastListViewChildListOnSelect" extendstyle="1177">
		   <image name="n" rect="0,0,0,172" style="autosize" src="file://image/leftlistview_itembg.png"  extendstyle="1070">
            <image rect="20,19,237,133"  src="file://image/noveldefaultbg.png" style="autosize" extendstyle="1010"  BuildChildrenFinished="resChoose"><node/></image>			   
			<image name="podcastImage"  rect="20,19,237,133"  style="autosize" extendstyle="1010"/>
			<label name="leftPodcastRecName"  rect="275,15,411,45" text="" extendstyle="1010" color="#FFFFFF" font-size="35"/>
			<node  rect="275,0,0,45" extendstyle="1810">
			<label name="leftPodcastRecHost"  rect="0,20,80,45" text="主播:"   v-align="center" extendstyle=8110" color="#a3a3a3" font-size="30"/>
			<label name="leftPodcastRecHostName" rect="0,20,150,45" text=""   v-align="center" extendstyle="8110" color="#a3a3a3" font-size="30"/>
			</node>
		  </image>
		  <image name="s" rect="0,0,0,172" style="autosize" extendstyle="1070">
			<shadow rect="0,0,0,172" alpha="50" color="#000000" extendstyle="1170"/> 
			<image name="podcastImage_s"  rect="20,19,237,133"  style="autosize" extendstyle="1010"/>
			<label name="leftPodcastRecName_s"  rect="275,15,411,45" text="" extendstyle="1010" color="#FFFFFF" font-size="35"/>
			<node  rect="275,0,0,45" extendstyle="1810">
			<label name="leftPodcastRecHost_s"  rect="0,20,80,45" text="主播:"   v-align="center" extendstyle=8110" color="#a3a3a3" font-size="30"/>
			<label name="leftPodcastRecHostName_s" rect="0,20,150,45" text=""   v-align="center" extendstyle="8110" color="#a3a3a3" font-size="30"/>
			</node>
		  </image>
		  <image rect="0,0,0,2" style="autosize" src="file://image/leftlistview_line.png"  extendstyle="1571"/>
		   </button>
		   </node>
		 
		<!--左侧菜单推荐的电台数据item-->
		<node name="leftRadioItem" rect="0,0,240,100" padding="0,2,0,2" extendstyle="0000" visible="0" enable="0" active="0">
		    <button name="leftRadioBtn" rect="0,0,240,100" sel="s" OnSelect="leftRadioBtnOnSelect" extendstyle="0000">
			<image rect="0,0,240,100" src="file://image/left_radio_child.png" style="autosize" extendstyle="1010"/>
			<shadow name="s" rect="0,0,240,100" alpha="50" color="#000000" extendstyle="1010"/>
			<image rect="20,35,20,30" src="file://image/left_radio_child_arrow.png" style="autosize"/>
			<label name="leftRadioName" rect="60,0,200,100" extendstyle="1111" text="$(text)" h-align="left" color="#999999" v-align="center" font-size="30"/>
			</button>
		 </node>
		 <node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>
		
    </node>
</body>
</root>
<cms:include filepath="${lua}" />