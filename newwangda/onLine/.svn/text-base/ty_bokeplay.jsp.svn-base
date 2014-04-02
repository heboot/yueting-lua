<%@ page language="java" contentType="text/plain" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<c:set var="common" value="/resource/mobileaudio3/common/common.wdml" /><%//定义common模板路径%>
<c:set var="lua" value="/resource/mobileaudio3/podcast/ty_bokeplay.wdml" /><%//定义本文件lua部分模板路径%>
<cms:lastModified var="lastModifiedCommon" path="${common}"/><%//取common模板最后发布时间，并作模板存在性检查%>
<cms:lastModified var="lastModifiedLua" path="${lua}"/><%//取本文件lua部分模板最后发布时间，并作模板存在性检查%>
<?xml version="1.0" encoding="utf-8"?>
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
        <shadow rect="0,0,720,1280" color="#FFFFFF" alpha="255" extendstyle="1111" />
        <node name="mianTopNode" rect="0,0,720,90"  extendstyle="1111">
		   <image rect="0,0,0,0" style="autosize" src="file://image/top_bg.png" extendstyle="1077"/>
		   <button name="backBtn" normal="n" sel="s" rect="10,15,104,61" extendstyle="1111" OnSelect="backBtnOnSelect" visible="1" enable="1">
			<image name="n" rect="0,0,0,0"  style="autosize" src="file://image/navigation_bg.png" extendstyle="1077"/>
			<image name="s" rect="0,0,0,0" style="autosize" src="file://image/navigation_s_bg.png" extendstyle="1077"/>
		    <label rect="0,0,104,61" extendstyle="1111" text="返回" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
            <scrolltext name="mainTitle" rect="114,0,400,77"  step="2" scroll="true" extendstyle="1110" text="" color="#FFFFFF" v-align="center" h-align="center" font-size="42"/>
		    <button name="commentBtn" normal="n" sel="s" rect="520,15,96,59" extendstyle="1111" OnSelect="commentBtnOnSelect" visible="1" enable="1">
			<image name="n" rect="0,0,0,0" style="autosize" src="file://image/selectedworks.png" extendstyle="1077" BuildChildrenFinished="resChoose"><node/></image>
			<image name="s" rect="0,0,0,0" style="autosize" src="file://image/selectedworks_s.png" extendstyle="1077" BuildChildrenFinished="resChoose"><node/></image>
			<label rect="0,0,0,0" extendstyle="0077" text="评论" color="#FFFFFF" v-align="center" h-align="center" font-size="35"/>
			</button>
			<button name="moreContentsBtn" normal="n" sel="s" rect="0,15,96,59" extendstyle="8111" OnSelect="moreContentsBtnOnSelect" visible="1" enable="1">
			<image name="n"  rect="0,0,0,0" style="autosize" src="file://image/morecontents.png" extendstyle="1077" BuildChildrenFinished="resChoose"><node/></image>
			<image name="s"  rect="0,0,0,0" style="autosize" src="file://image/morecontents_s.png" extendstyle="1077" BuildChildrenFinished="resChoose"><node/></image>
			</button>
        </node> 
        <node rect="0,0,0,508"  extendstyle="1871" font-family="TianyiDigital">
		  <image rect="0,0,0,0" style="minsize" src="file://image/playyue_bg.png" extendstyle="1077"/>
		  <node rect="0,0,0,150"  extendstyle="1071">
		      <!--<shadow rect="0,0,0,0" color="#FFFFFF" alpha="125" extendstyle="1077"/>-->
			  <image name="wifiFlag" rect="81,0,106,48" style="autosize" src="" extendstyle="1511" BuildChildrenFinished="resChoose"><node/></image>
			  <label  name="audioCurTime"  rect="300,0,245,80" color="#f06a06" text="00:00:00" font-size="55" extendstyle="1511"/>
		  </node>
		  <node rect="0,0,0,170"  extendstyle="1877">
			<node name="playingAnimation" rect="0,0,170,170" extendstyle="1010" visible="0" enable="0">
			 <animate rect="0,0,170,170" delay="15" loop="true" extendstyle="0000">
             <animate-frame start="$(start)" delay="$(delay)">
             <image rect="$(rect)"  alpha="50" style="autosize" src="file://image/playing_1.png" extendstyle="0000"/>
             </animate-frame>
             <dataset>  			
			 <set rect="53,38,150,150" start="0" delay="8" src="file://image/playing_1.png" />
			 <set rect="42,29,170,170" start="4" delay="4" src="file://image/playing_2.png" />
             </dataset>
             </animate>	
			 </node>
			 <button name="playBtn" rect="58,44,138,138" extendstyle="1010"  OnSelect="playBtnOnSelect" visible="1" enable="1">
			 <image rect="0,0,0,0" style="autosize" src="file://image/playbackground.png" extendstyle="1177"/>
			 </button>
			 <button name="pauseBtn" rect="58,44,138,138" extendstyle="1010"  OnSelect="pauseBtnOnSelect" visible="0" enable="0">
			 <image rect="0,0,0,0" style="autosize" src="file://image/pausebackground.png" extendstyle="1177"/>
			 </button>
			 <node name="refreshAnimation" rect="58,44,138,138" extendstyle="1010"  visible="0" enable="0">
			 <animate rect="0,0,138,138" delay="24" loop="true" extendstyle="0000">
             <animate-frame start="$(start)" delay="1">
             <image rect="0,0,138,138" rotate="$(rotate)" style="autosize" src="file://image/refreshbackgroung.png" extendstyle="0000"/>
             </animate-frame>
             <dataset>  			
			 <set start="0" rotate="345"/><set start="1" rotate="330"/><set start="2" rotate="315"/><set start="3" rotate="300"/>
			 <set start="4" rotate="285"/><set start="5" rotate="270"/><set start="6" rotate="255"/><set start="7" rotate="240"/>
			 <set start="8" rotate="225"/><set start="9" rotate="210"/><set start="10" rotate="195"/><set start="11" rotate="180"/>
			 <set start="12" rotate="165"/><set start="13" rotate="150"/><set start="14" rotate="135"/><set start="15" rotate="120"/>
			 <set start="16" rotate="105"/><set start="17" rotate="90"/><set start="18" rotate="75"/><set start="19" rotate="60"/>
			 <set start="20" rotate="45"/><set start="21" rotate="30"/><set start="22" rotate="15"/><set start="23" rotate="360"/>
             </dataset>
             </animate>	
			 </node>
			 <node rect="0,0,520,0" extendstyle="8017">
             <scrolltext  name="audioname" rect="90,70,0,95" step="2" scroll="true" color="#f06a06" text="暂无数据"  font-size="40" extendstyle="1171"/>
			 <node rect="90,200,0,90" extendstyle="1171">
			 <label name="anchor" rect="0,0,120,90" color="#f06a06" text="佚名"  font-size="35" v-align="bottom" h-align="center"  postfix=".." extendstyle="1010"/>
			 <label rect="0,0,60,90" color="#f06a06" text="主播"  font-size="25" v-align="bottom" h-align="center" extendstyle="8010"/>
			 </node>
			 </node>
		  </node>
		</node>
		

		
    <node rect="0,0,0,93"  extendstyle="1871">
	    <image rect="0,0,0,0" style="minsize" src="file://image/progressbg.png" extendstyle="1077"/>
		<node rect="20,20,120,80"  extendstyle="1111">
		  <button rect="0,0,90,60"   extendstyle="1011">
			<image rect="0,0,0,0"  src="file://image/ondemandbg.png" extendstyle="1077" style="maxsize"/>
		    <label rect="0,0,0,0" color="#FFFFFF" text="点播" v-align="center" h-align="center"  font-size="25"  extendstyle="1177"/>
		  </button>
		</node>
		<!--<button name="progressBtn" rect="0,30,480,50" extendstyle="8111" OnMouseDown="progressOnMouseDown" OnMouseMove="progressOnMouseMove" OnMouseUp="progressOnMouseUp">
			<image name="progressBarImg" rect="0,6,0,18" extendstyle="0010"  src="file://image/progress_barimg.png" />	
			<image name="progressBgImg" rect="0,5,480,20" extendstyle="0070"  src="file://image/panoramaItemname_bg.png" />
			<image name="progressPointImg" rect="0,0,30,30" bodyalpha="255" extendstyle="1111" style="sudoku-auto" sudoku="0,0,0,0" src="file://image/progress_point.png"/>
        </button>-->
		<button name="progressBtn" rect="0,30,480,50" extendstyle="8111" OnMouseDown="progressOnMouseDown" OnMouseMove="progressOnMouseMove" OnMouseUp="progressOnMouseUp">
			<image name="progressBarImg" rect="5,8,0,16" style="autosize"  extendstyle="0010"  src="file://image/progress_barimg.png" />	
			<image name="progressBgImg" rect="-10,4,0,26" style="autosize" extendstyle="0070"  src="file://image/progress_bg1.png" />
			<image name="progressPointImg" rect="0,0,20,34"  bodyalpha="255" extendstyle="1111" style="sudoku-auto" sudoku="0,0,0,0" src="file://image/progress_point.png"/>
        </button>
        
		<label name="lblCurtime" color="#FF6600" extendstyle="5111" rect="0,0,90,93" v-align="center" h-align="center"  font-size="28" text="00:00"/>		
   </node>
	
	

	<node rect="0,0,720,0" extendstyle="1817">    
		<image rect="0,0,0,0" src="file://image/gallerbg.png" style="autosize" extendstyle="1177"/>          
		<gallery name="gallery" rect="0,22,0,0" extendstyle="1077" spacing="10" middle-size="720,200" sort="vertical" normal-size="720,200" focus-size="720,176" OnSelect="galleryOnSelect"/>
		<node rect="0,248,143,170" extendstyle="1010">
		<!--<shadow rect="0,0,0,0" color="#8470FF" extendstyle="1077"/>-->
		<button name="collectionBtn" rect="0,0,143,176" extendstyle="1177" OnSelect="collectionBtnOnSelect"/>
		</node>		
	</node>
		 
    <node name="galleryItem" rect="0,0,720,250" normal="sNormal" focus="sFocus" middle="sMiddle" data="" visible="0" enable="0">
		<node name="sNormal" rect="0,0,720,200" extendstyle="1111">
        <label name="lblNormal" rect="67,5,585,100" extendstyle="1111" h-align="center"    v-align="center" text="" color="#606060" font-size="35"/>			 
        </node>               
		<node name="sFocus" rect="0,0,720,176" extendstyle="1111">
		<image  rect="0,0,0,176" src="file://image/gallerFocusbg.png" style="autosize" extendstyle="1171" BuildChildrenFinished="resChoose"><node/></image>
		<image  rect="0,66,577,40" src="file://image/gallery_redline.png" style="autosize" extendstyle="5111" BuildChildrenFinished="resChoose"><node/></image>
        <scrolltext name="lblFocus" rect="125,0,470,176" step="2" scroll="true" extendstyle="1111" h-align="center"   v-align="center"  text="" color="#FFFFFF" font-size="40"/>	
		<label name="lblTypeFocus" rect="67,92,585,88" extendstyle="1010" h-align="center"  text="" color="#FFFFFF" font-size="25"/>
		<node name="collectionNode" rect="0,0,143,176" extendstyle="1111" OnSelect="collectionNodeSelect">
		    <image  name="collection_n" rect="40,45,63,60" src="file://image/collection_n.png" style="autosize" visible="1" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		    <image  name="collection_s" rect="40,45,63,60" src="file://image/collection_s.png" style="autosize" visible="0" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
		    <label  name="click2collect" rect="13,115,130,60" extendstyle="1111" h-align="center"  v-align="center"  text="点击收藏" color="#FFFFFF" font-size="20"/>
        </node>
        </node>				  
        <node name="sMiddle" rect="0,0,720,200" extendstyle="1111">
        <label name="lblMiddle" rect="67,5,585,200" extendstyle="1111" h-align="center" v-align="center" text="" color="#606060" font-size="35"/>	  
        </node>				  
    </node>
		
		
		<node name="progressOption" rect="0,400,380,180" extendstyle="1111" visible="0" enable="0">
			<image rect="0,0,0,0" extendstyle="1177" style="autosize" src="file://image/progressopbg.png"/>
			
			<button name="progressbackBtn" OnSelect="progressbackBtnOnSelect" rect="10,15,180,130" extendstyle="1111">
			<image rect="0,0,70,70" extendstyle="1177"  style="autosize"  src="file://image/progressop_btnbg.png"/>
			<image rect="50,10,50,50" style="maxsize" extendstyle="1111" src="file://image/progress_back.png" BuildChildrenFinished="resChoose"><node/></image>
			<label text="回退30秒" rect="20,60,0,0" extendstyle="1577" color="#FFFFFF"/>
			</button>
			
			<button name="progressforwardBtn"  OnSelect="progressforwardBtnOnSelect" rect="200,15,180,130" extendstyle="8111">
			<image rect="0,0,70,70" extendstyle="1177" style="autosize" src="file://image/progressop_btnbg.png"/>
			<image rect="50,10,50,50"  style="maxsize" extendstyle="1111" src="file://image/progress_forward.png" BuildChildrenFinished="resChoose"><node/></image>
			<label text="前进30秒" rect="20,60,0,0" extendstyle="1577" color="#FFFFFF" />
			</button>
			
		</node>	  
		 <node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>  
    </node>
    </body>
</root>
<cms:include filepath="${lua}" />