-- -----------------------------------------------------------------------------
-- | Desc: 框架包含
-- -----------------------------------------------------------------------------

require 'framework.common'
require 'framework.download'
require 'framework.des'
require 'framework.player'

-- -----------------------------------------------------------------------------
-- @class Defines - Msg、 Reg、 Key、Alias
-- @note  常量注册列表
-- -----------------------------------------------------------------------------

Reg.com_wondertek_mobileaudio = {
    config = 'com_wondertek_mobileaudio_config', -- 配置文件数据仓库
    dialog = 'com_wondertek_mobileaudio_dialog', -- dialog数据仓库
    wlan = 'com_wondertek_mobileaudio_wlan', -- wlan相关数据仓库
    index = 'com_wondertek_mobileaudio_index', -- 入口文件数据仓库标识
    home = 'com_wondertek_mobileaudio_home', -- 入口文件数据仓库标识
    player = 'com_wondertek_mobileaudio_player', -- 播放文件数据仓库标识
    orderdetail = 'com_wondertek_mobileaudio_orderdetail', -- 退订文件数据仓库标识
    history = 'com_wondertek_mobileaudio_history', -- 播放历史文件数据仓库标识
    playerlocal = 'com_wondertek_mobileaudio_playlocal', -- 离线播放页数据仓库
    download = 'com_wondertek_mobileaudio_download',  -- 下载管理页数据仓库
    search = 'com_wondertek_mobileaudio_search',  -- 搜索页页数据仓库
    order = 'com_wondertek_mobileaudio_order',  -- 订购页数据仓库
    fav = 'com_wondertek_mobileaudio_fav',  -- 收藏数据仓库
    detail = 'com_wondertek_mobileaudio_detail', -- 详情数据仓库
    livelist = 'com_wondertek_mobileaudio_livelist',  -- 直播页数据仓库
    reservelist = 'com_wondertek_mobileaudio_reservelist',  -- 预约列表数据仓库
    widgetConfig = 'com_wondertek_mobileaudio_widgetConfig',  -- widget配置文件数据仓库
    community = 'com_wondertek_mobileaudio_community',  -- 频道列表
    upload = 'com_wondertek_mobileaudio_upload',  -- 上传
    detail = 'com_wondertek_mobileaudio_detail',  -- 详情页数据仓库
    detail_h = 'com_wondertek_mobileaudio_detail_h',  -- 横排详情页数据仓库
    detail_v = 'com_wondertek_mobileaudio_detail_v',  -- V+详情页数据仓库
    myaccount = 'com_wondertek_mobileaudio_myaccount',  -- 我的账号
    playeryue = 'com_wondertek_mobileaudio_playeryue',-- 悦听仓库
    ranklist = 'com_wondertek_mobileaudio_ranklist' , -- 排行榜数据仓库
    audiolive = 'com_wondertek_mobileaudio_audiolive',--电台播放数据仓库
	personalBoke='com_wondertek_mobileaudio_podcast',--播客数据仓库
}

-- 编译开发验证
Alias = {
    sdcfg           = '/publish/clt/resource/mobileaudio3/common/sdcfg.jsp', -- sd卡路径配置模板
    tipfile         = '/publish/clt/resource/mobileaudio3/common/tipfile.jsp',  --tips提示语数据页
    sceneModifiedData =  '/publish/clt/resource/mobileaudio3/common/sceneModifiedData.jsp',
    phonenumber     = '/publish/clt/resource/mobileaudio3/common/phonenumber.jsp', --登录状态与手机号数据

    index           = 'MODULE:\\com_wondertek_mobileaudio\\index.wdml', -- 起始页

    --home            = '/publish/clt/resource/mobileaudio3/home/home.jsp', -- 首页
    homeData        = '/publish/clt/resource/mobileaudio3/home/homeData.jsp', -- 首页
    channelData     = '/publish/clt/resource/mobileaudio3/home/channelData.jsp', -- 首页

    myaccount       = '/publish/clt/resource/mobileaudio3/account/myaccount.jsp', --我的账号
    registration    = '/publish/clt/resource/mobileaudio3/account/registration.jsp', --账号注册
    signup          = '/publish/clt/resource/mobileaudio3/signup/signup.jsp', --报名参赛

    uploadworks     = '/publish/clt/resource/mobileaudio3/upload/uploadworks.jsp', --上传
    uploadimgedit   = '/publish/clt/resource/mobileaudio3/upload/uploadimgedit.jsp', --编辑头像
    uploadrecording = '/publish/clt/resource/mobileaudio3/upload/uploadrecording.jsp', --录音
    uploadlocalsearch= '/publish/clt/resource/mobileaudio3/upload/uploadlocalsearch.jsp', --录音

    playeryue       = '/publish/clt/resource/mobileaudio3/audioplay/playeryue.jsp', -- 悦听直播页
    playerData      = '/publish/clt/resource/mobileaudio3/audioplay/playerData.jsp', -- 播放页面json数据
    catalogueAudioData = '/publish/clt/resource/mobileaudio3/audioplay/catalogueAudioData.jsp', --悦听分类栏目-直播-一级直播列表数据
    catalogueAudioData2 = '/publish/clt/resource/mobileaudio3/audioplay/catalogueAudioData2.jsp', --悦听分类栏目-直播-二级直播列表json数据

    --audioplay       = '/publish/clt/resource/mobileaudio3/audioplay/Exaudioplay.jsp',-- 点播
    audioplayData   = '/publish/clt/resource/mobileaudio3/audioplay/audioplayData.jsp', -- 点播数据
    audioplayblogData   = '/publish/clt/resource/mobileaudio3/audioplay/audioplayblogData.jsp', -- 点播数据
    userinfoData    = '/publish/clt/resource/mobileaudio3/mycommunity/userinfoData.jsp',
    commentPageData = '/publish/clt/resource/mobileaudio3/audioplay/commentPageData.jsp',
    userboxData     = '/publish/clt/resource/mobileaudio3/mycommunity/userboxData.jsp',
    usernetworkData = '/publish/clt/resource/mobileaudio3/mycommunity/usernetworkData.jsp',
    -- userworksData   = '/publish/clt/resource/mobileaudio3/mycommunity/userboxData.jsp',

    mycommunity     = '/publish/clt/resource/mobileaudio3/mycommunity/mycommunity.jsp',  --我的空间
    mycommunitysetting = '/publish/clt/resource/mobileaudio3/mycommunity/mycommunitysetting.jsp',  --空间设置
    communityFavoriteData = 'publish/clt/resource/mobileaudio3/mycommunity/communityFavoriteData.jsp', --社区收藏数据
    gatewayCheckFavData = 'publish/clt/resource/mobileaudio3/mycommunity/gatewayCheckFavData.jsp', --门户收藏数据

    competition     = '/publish/clt/resource/mobileaudio3/competition/competition.jsp', --DJ大赛
    competitionData = '/publish/clt/resource/mobileaudio3/competition/competitionData.jsp',  --大赛空间数据
    registerform    = '/publish/clt/resource/mobileaudio3/registerform/registerform.jsp',   --报名页
    ranklist        = '/publish/clt/resource/mobileaudio3/ranklist/ranklist.jsp',   --排行榜
    ranklistData    = '/publish/clt/resource/mobileaudio3/ranklist/ranklistData.jsp',   --排行榜数据

    syssetting      = '/publish/clt/resource/mobileaudio3/syssetting/syssetting.jsp',   --设置页
    myorderproduct  = '/publish/clt/resource/mobileaudio3/syssetting/myorderproduct.jsp', -- 我的订购json数据
    advice          = '/publish/clt/resource/mobileaudio3/syssetting/advice.jsp', -- 意见反馈

    audiolocallive ='/publish/clt/resource/mobileaudio3/radiolive/audiolocallive.jsp',--悦听电台数据列表
    audioliveplay ='/publish/clt/resource/mobileaudio3/radiolive/audioliveplay.jsp',--悦听电台播放页面
	 audioplay       = 'MODULE:\\com_wondertek_mobileaudio\\audioplay.wdml',  -- 点播
	 home       = 'MODULE:\\com_wondertek_mobileaudio\\home.wdml',  -- 首页推荐
	 
	nodeImgData     = '/publish/clt/resource/mobileaudio3/common/nodeImgData.jsp', --获取栏目图

	setting = 'MODULE:\\com_wondertek_mobileaudio\\mycommunitysetting.wdml', 
	}

Msg = {
    scene          = 1001,
    token          = 1002,
    fav            = 1003,
    sms            = 1004,
    refresh        = 1005,
    download       = 1006,
    back           = 1007,
    download2      = 1008,
    playerDownload = 1009,
    localplayer    = 1010,
    installPlugin  = 1011,
    backScene      = 1012,
    nextScene      = 1013,
    dialogShow     = 1014,
    dialogClose    = 1015,
    loadingShow    = 1016,
    loadingClose   = 1017,
    runTimeError   = 1018,
    engineError    = 1019,
    fileCover      = 1020,
    getJsonPlayer  = 1021,
    tipsShow       = 1022,
    tipsClose      = 1023,
    vote           = 1024,
    cmccLogin      = 1025,
    tipKeyWords    = 1026,
    errorReport    = 1027,
    order          = 1028,
    monthly        = 1029,
    connectionChange = 1030,
    communityPlayer  = 1031,
    newToken       = 1032,
    register       = 1033,
    dynPwd         = 1034,
    login          = 1035,
    reset          = 1036,
    logout         = 1037,
    phoneNumber    = 1038,
    longConnect    = 1039,
    sceneCache     = 1040,
    sdcfg          = 1041,
    stopAudioTimer = 1042,
    homeData       = 1043,
    homeDataReceive = 1044,
    hiddenlogin    = 1045,

    downloadretry  = 30000,
}
local dialogTitle=''
local dialogContent=''
local msgDivider = '_div_'    --  多返回值（标题，内容，选项）的分隔符
usrMsgFileName =
{
    localTipsMsg = 'localTipsPop',
    localDialogMsg = 'localDialogPop',
    uploadMsg = 'uploadPop',
    normalMsg = 'normalPop',
    floatMsg = 'floatPop',
    singleMsg = 'singlePop',
    pageMsg = 'pagePop',
}

TimerId = {
    once         = 1,
    once2        = 2,
    status       = 10,
	
    timeBattery  = 11,
    screenHide   = 12,
    wlanStrength = 13,
	radiostatus  = 14,
    tipsshow     = 100,
    tipsclose    = 101,
    goToLocal    = 102,
    sendSMS      = 103,
    longConnect  = 104,
    getToken     = 105,
}

-- -----------------------------------------------------------------------------
-- Desc:

-- -----------------------------------------------------------------------------
ErrTableUpload =
{
   [1]  = '没有获取到TOKEN',
   [2]  = '登录失败',
   [3]  = '没有获取到服务器时间',
   [4]  = '没有获取到UUID',
   [5]  = '没有获取到渠道首页地址',
   [6]  = '没有获取到升级地址',
   [7]  = '客户端处于没有SIM卡状态',
   [8]  = '客户端处于飞行模式状态',
   [9]  = '打开网络数据连接失败，或者属于无信号覆盖',
   [10] = 'WLAN状态下，连接异常，无法正常连接Internet',
   [11] = '好友推荐短信没有内容ID标识',
   [12] = '业务功能请求失败,返回XML中状态码为002',
   [13] = '无法与服务器正常HTTP交互,详细根据HTTP RESPONSE CODE来判断',
   [14] = '没有获取到播放地址',
   [15] = '滑动进度调，播放器出错',
   [16] = '媒体格式错误',
   [17] = '播放器未知异常',
   [18] = '连接流媒体失败',
   [19] = '播放器无法加载.SO文件',
   [20] = '向服务平台发送业务数据请求，没有获取到相关的内容数据或者该内容数据尚未发布',
   [21] = '登录背景图未发布，或者获取失败',
   [22] = '服务器返回的数据格式错误',
   [23] = '客户端没有多余空间，本地存储容量不足时下载视频',
   [24] = '创建文件失败',
   [25] = '获取图片失败，或者平台未配置发布',
   [26] = '客户端运行时 runtime 错误,主要以使用客户端过程中出现的一些系统级别的异常，未知异常，以及一些导致客户端操作错误的异常',
   [27] = '订购失败',
   [28] = '收藏失败',
   [29] = '取消收藏失败',
   [30] = '好友推荐失败',
   [31] = '投票失败',
   [32] = '没有相关推荐内容',
   [33] = '没有获取到下载地址',
   [34] = '退订失败',
   [35] = '预约失败',
   [36] = '下载视频过程中，用户拔掉存储卡',
   [37] = 'OPHONE用户，未打开自动连接功能，WLAN无法正常进行热点连接',
   [38] = 'WLAN-CMCC静态密码认证失败',
   [39] = 'WLAN-CMCC动态密码认证失败',
   [40] = 'WLAN-CMCC跳转portal返回数据，解析错误',
   [41] = 'WLAN-CMCC获取动态密码请求失败',
   [42] = 'WLAN-CMCC跳转portal，HTTP未成功，请求异常',
   [43] = '上传，不支持的文件格式',
   [44] = '上传文件超过容量限制',
   [45] = '客户端数据库操作异常',
   [46] = 'clinetPortal异常，造成请求无法正常建立(包括socket异常，IO等)',
   [47] = '客户端登录时，手机剩余空间不足',
   [48] = '非中国移动用户',
   [49] = '未找到可下载的播放器插件',
   [50] = '第三方WLAN热点认证失败',
   [51] = '节目下载过程中突然下载失败',
   [52] = '客户端版本过旧，必须强制升级，否则无法使用',
   [53] = '客户端内搜索不到WLAN热点',
   [54] = '客户端收取推荐短信失败',
   [55] = '获取数据请求发出后，长时间无法获取响应数据',
   [56] = '客户端插件升级或下载失败',
   [57] = '客户端插件启用或禁用失败',
   [58] = '客户端插件安装或卸载失败',
   [59] = '客户端皮肤下载失败',
   [60] = '未知错误',
   [61] = '播放器本身出错',
   [62] = '网络出错',
   [63] = '媒体流出错',
   [64] = '与服务器断开连接',
   [65] = '空间不足',
   [66] = '音频初始化错误',
   [67] = '音频打开错误',
   [68] = '视频初始化错误',
   [69] = '视频打开错误',
   [70] = '创建264解码器错误',
   [71] = '流初始化错误',
   [72] = '媒体格式错误',
   [73] = '没有找到音频解码库',
   [74] = '没有找到视频解码库',
   [75] = '没有播放对象',
   [76] = '播放地址为空',  --加载插件错误
   [77] = '插件错误',
   [78] = '插件打开错误',
   [79] = '启动插件错误',
   [80] = '打开视频请求被拒绝',
   [81] = '未找到视频',
   [82] = '打开视频请求数据错误',
   [83] = '打开视频请求网络错误',
   [84] = '打开视频请求服务端错误',
   [85] = '打开视频请求错误',
   [86] = '打开不支持的音频解码库错误',
   [87] = '打开不支持的视频解码库错误',
   [88] = '打开不支持的媒体错误',
   [89] = '打开不支持的媒体大小错误',
   [90] = '传输错误',
   [91] = '传输超时',
   [92] = '移动网络配置错误 ',
   [93] = '获取动态码失败',
   [110] = '移动网络配置错误 ',
   [111] = '获取动态码失败',
   [112] = '删除播放历史失败',
}

-- -----------------------------------------------------------------------------


-- -----------------------------------------------------------------------------
-- | Desc: 常用功能函数
-- -----------------------------------------------------------------------------
 ------------------------------------------------------------
 -- @function System:getAlreadyBufferTime
 ------------------------------------------------------------
 -- @brief 获取播放器缓冲时间
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return 视频当前缓冲时间, 单位：毫秒
 ------------------------------------------------------------
 --]]
function System:getAlreadyBufferTime()
    return pluginInvoke(Player:_getHandle(), 'GetAlreadyBufferTime')
end

 ------------------------------------------------------------
 -- @function System:setBufferTime
 ------------------------------------------------------------
 -- @brief 设置播放器缓冲时间
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return 视频当前缓冲时间, 单位：毫秒
 ------------------------------------------------------------
 --]]
function System:setBufferTime(bufferTime)
    return pluginInvoke(Player:_getHandle(), 'SetBufferTime',tonumber(bufferTime)*1000)
end

--[[
 ------------------------------------------------------------
 -- @function System:setResizeFormat(n)
 ------------------------------------------------------------
 -- @brief 设置缩放比例
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param modeSelect: number, -- 0：等比缩放 1:全屏缩放
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function System:setResizeFormat(modeSelect)
    return pluginInvoke(Player:_getHandle(), 'SetResizeFormat', modeSelect)
end


-- -----------------------------------------------------------------------------
-- @class widgetConfig
-- @note  配置文件操作
-- -----------------------------------------------------------------------------

widgetConfig = {}

--[[
 ------------------------------------------------------------
 -- @function Config:load(appId)
 ------------------------------------------------------------
 -- @brief 加载配置文件到数据仓库
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param appId: string, 应用唯一标识
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function widgetConfig:load(appId)
    local reg, result = registerCreate(Reg[appId].widgetConfig)
    -- 设置当前应用的唯一标识
    Util:setCurAppId(appId)
    if not result then -- 避免重复加载
        local confFilePath = Util:getDefaultFolder(WDFIDL_MMS) .. 'widgetConfig.xml'
        -- 创建数据仓库 todo:当registerCreate(Reg[appId].config)不存在时打印错误提示
        -- 从配置文件读取所有配置信息到数据仓库
        registerLoad(reg, confFilePath)
        -- app start设置
        if 'com_wondertek_manto' == appId then
            registerSetString(registerCreate(Reg.g_appstart), 'appstart', appId)
        elseif 'com_wondertek_dev' == appId then
            registerSetString(registerCreate(Reg.g_appstart), 'appstart', appId)
        end
    end
end

--[[
 ------------------------------------------------------------
 -- @function Config:get(keyStr)
 ------------------------------------------------------------
 -- @brief 根据键，获取一个值
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param keyStr: string, 键字符串
 ------------------------------------------------------------
 -- @return string 值字符串， 返回''时不在config中
 ------------------------------------------------------------
 --]]
function widgetConfig:get(keyStr)
    local appId = Util:getCurAppId()
    -- 获取配置项
    return registerGetString(registerCreate(Reg[appId].widgetConfig), keyStr)
end

--[[
 ------------------------------------------------------------
 -- @function Config:set(keyStr, valueStr)
 ------------------------------------------------------------
 -- @brief 设置一个键值对（修改、增加一个配置项）
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param keyStr: string, 键字符串
 -- @param valueStr: string, 值字符串
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function widgetConfig:set(keyStr, valueStr)
    local appId = Util:getCurAppId()
    -- 增加新的配置信息
    registerSetString(registerCreate(Reg[appId].widgetConfig), keyStr, valueStr)
    -- 重新保存到widgetConfig.xml
    local confFilePath = Util:getDefaultFolder(WDFIDL_MMS) .. 'widgetConfig.xml'
    local dirPath = Util:getDefaultFolder(WDFIDL_MMS)
    if not IO:dirExist(dirPath) then
        IO:dirCreate(dirPath)
    end
    registerSave(registerCreate(Reg[appId].widgetConfig), confFilePath)
end

--[[
 ------------------------------------------------------------
 -- @function Config:delete(keyStr)
 ------------------------------------------------------------
 -- @brief 删除一个键值对（删除一个配置项）
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param keyStr: string, 键字符串
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function widgetConfig:delete(keyStr)
    local appId = Util:getCurAppId()
    local confReg = registerCreate(Reg[appId].widgetConfig)
    -- 删除指定keyStr的配置项
    registerRemove(confReg, keyStr)
    -- 重新保存到config.xml
    local confFilePath = Util:getDefaultFolder(WDFIDL_MMS) .. 'widgetConfig.xml'
    registerSave(confReg, confFilePath)
end

--[[
 ------------------------------------------------------------
 -- @function errorUpload()
 ------------------------------------------------------------
 -- @brief 错误信息上报
 ------------------------------------------------------------
 -- @access private
 ------------------------------------------------------------
 -- @param
 ------------------------------------------------------------
 -- @return 无
 ------------------------------------------------------------
 --]]
function errorUpload(errorInfo)
    Http:request('errorReport_Upload', Util:getServer() .. 'msp/upError.msp', Msg.errorReport, {method = 'post', useCache=0, postData = 'msg=' .. errorInfo })
end

-----------------------------------------------------------------
-- --@function errorDispose
-- -- Desc :  出错信息处理：保存或直接上传
-- -- @access public
-- -- @param errorIndex - 错误码
-- --        errorLog   - 错误日志
-- -- @return 无
-----------------------------------------------------------------
lastErrorLog = ''
function errorDispose(errorIndex , errorLog)
    if lastErrorLog and lastErrorLog == errorLog then
        return
    else
        lastErrorLog = errorLog
    end

    Log:write('---keivn--- errorIndex=' , errorIndex)
    local errReportOnOff = 0
    local errRepStatus = Config:get('errReportFlag')
    Log:write('--kevin---errRepStatus = ' ,errRepStatus)
    if errRepStatus and errRepStatus ~= '' then
        errReportOnOff = tonumber(errRepStatus)
    end
    if errReportOnOff == 0 then
        Log:write('---kevin--- user forbidden upload error infomation')
        return
    else
        Log:write('---kevin--- user allows upload error infomation')
    end

--    if errorIndex == nil or errorIndex =='' or errorIndex < 0 or errorIndex > #ErrTableUpload then
--        return
--    end

    local uploadMsg,uploadType = Util:getTipsMsg(usrMsgFileName.uploadMsg ,errorIndex )

    --kevin 需要保存到本地定时上传的异常信息 序号表
    local writeFileIndex = '-1-2-3-4-5-6-7-8-9-10-12-13-23-24-26-36-37-38-39-40-41-42-43-44-45-46-47-48-49-50-51-52-53-54-55-56-57-58-59-92-93-110-111-'

    local errDate = os.date('*t', System:getTickTime() / 1000)
--    local errDateStr = errDate.year .. '_' .. errDate.month ..'_' .. errDate.day .. 'T' .. errDate.hour ..':' ..errDate.min ..':'.. errDate.sec
    local year = errDate.year
    local month = errDate.month < 10 and '0'..errDate.month or errDate.month
    local day = errDate.day < 10 and '0' .. errDate.day or errDate.day
    local hour = errDate.hour < 10 and '0' .. errDate.hour or errDate.hour
    local minute = errDate.min < 10 and '0' .. errDate.min or errDate.min
    local second = errDate.sec < 10 and '0' .. errDate.sec or errDate.sec
    local errDateStr = year .. month .. day .. hour .. minute .. second

--    local errorInfo = errorIndex .. '<|>' .. ErrTableUpload[errorIndex] .. '<|>' .. errorLog .. '<|>' .. errDateStr
    local errorInfo = errorIndex .. '<|>' .. uploadMsg .. '<|>' .. errorLog .. '<|>' .. errDateStr

    Log:write('---kevin--- errDateStr = '.. errDateStr)

    local uploadImmediately = 0
--    if string.find(writeFileIndex,'%-'..errorIndex..'%-')  then
    if uploadType == '1'  then
        -- 保存到本地
        local errRep = IO:fileRead('WONDER:\\temp\\errorReport.err')
        if errRep ~= nil and errRep ~='' then
            if string.find('<:>' .. errRep , '<:>' .. errorIndex .. '<|>')  then
                -- 同类型的异常已经存在， 替换
                local startIndex = string.find('<:>' .. errRep , '<:>' .. errorIndex .. '<|>')
                local endIndex = string.find(string.sub(errRep,startIndex + 3) , '<:>')
                if endIndex then
                    local errStr = string.sub(errRep,startIndex , endIndex + startIndex + 1 )
                    errRep = string.gsub(errRep,errStr,errorInfo)
                    errorInfo = errRep
                else
--                    local errStr = string.sub(errRep , startIndex + 3)
                    errorInfo = string.sub(errRep ,1, startIndex -1) .. errorInfo
                end

            else
                errorInfo = errRep .. '<:>' .. errorInfo
            end

            local _,errorNum = string.gsub(errorInfo, '<:>','<:>')
            errorNum = errorNum + 1
            if errorNum > 9 then
                errorUpload(errorInfo )
            end
--            Log:write('---kevin   errRep = ' , string.sub( errRep ,0,100))
        end
        local writeRes = IO:fileWrite('WONDER:\\temp\\errorReport.err', errorInfo)
        if writeRes == false then
            Log:write('---kevin---  error report write file failured ')
        end
        uploadImmediately =0
    else  -- if uploadType == 2  直接上传 realtime
--        errorUpload(errorInfo)

    end
    Config:set('uploadImmediately', uploadImmediately)

end

-----------------------------------------------------------------
-- --@function errorUploadTiming
-- -- Desc :  出错信息定时上传
-- -- @access public
-- -- @param 无
-- -- @return 无
-----------------------------------------------------------------
function errorUploadTiming()

    local errRep = IO:fileRead('WONDER:\\temp\\errorReport.err')
--    Log:write('---kevin--- errRep = ',errRep )
    if errRep ~= nil and errRep ~='' then
        local _, errNum = string.gsub(errRep,'<:>','<:>')
        if errNum > 8 then
            errorUpload(errRep)
            Config:set('uploadImmediately', 0)
        end
        Log:write('--kevin-- errorUploadTiming()  errNum  = ' .. errNum )
--        IO:fileRemove('WONDER:\\temp\\errorReport.err')
    else
        Log:write('---kevin--- no error data need to be reported')
    end
end


--[[
 ------------------------------------------------------------
 -- @function Util:getTipsMsg()
 ------------------------------------------------------------
 -- @brief 从本地文件读取指定提示信息
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param name：本地文件名
 -- @param index：提示语序号
 -- @param ...：可变参数，依次替换字符串 XXX
 ------------------------------------------------------------
 -- @return 提示语内容信息和标题,
 --         其中，错误码上报返回内容信息和上传类型，单选弹出框返回数组类型，内容依次为标题，选项1，选项2等
 ------------------------------------------------------------
 --]]
function Util:getTipsMsg(name,index , ... )
    Log:write('-------------kevin0919----------commonlocal getTipsMsg : ' .. name .. '  index:' ..index)

    local msgPath = 'MODULE:\\com_wondertek_mobileaudio\\tips.dat'
    local msgtitle ='提示'
    local msgcontent=''
    local tipsData
    if IO:fileExist(msgPath) == true then        --tipsData and type(tipsData) == 'table' and tipsData.floatPop and tipsData.floatPop[0].content
        tipsData = jsonLoadFile(msgPath)
        if tipsData and type(tipsData) == 'table' and tipsData.floatPop and tipsData.floatPop[0].content then
            Log:write('-----kevin0924-----commonlocal  use new http requst data.')
        else
            tipsData = jsonLoadFile(Alias.tipsdata )
            Log:write('-----kevin0924-----commonlocal1  use package data' )
            IO:fileRemove(msgPath)
        end
    else
        msgPath = Alias.tipsdata -- 'MODULE:\\com_wondertek_mobileaudio\\tips.dat'   --'WONDER:\\temp\\tips.msg'
        tipsData = jsonLoadFile(msgPath)
        Log:write('-----kevin0924-----commonlocal2  use package data' )
    end

    if tipsData == nil then
        Log:write('------kevin0921-----------commonlocal getTipsMsg . read tips.dat errorrrrrr ')
    end
    if tipsData and type(tipsData) == 'table' and index > 0 then
        Log:write('-----kevin0921----commonlocal- read tips.dat file successssssss')
        index = index - 1
        if name == usrMsgFileName.localDialogMsg and tipsData.localDialogPop and index <= #tipsData.localDialogPop then
            msgcontent = tipsData.localDialogPop[index].content
            msgtitle = tipsData.localDialogPop[index].title

        elseif name == usrMsgFileName.localTipsMsg and tipsData.localTipsPop and index <= #tipsData.localTipsPop then
            msgcontent = tipsData.localTipsPop[index].content

        elseif name == usrMsgFileName.floatMsg and tipsData.floatPop and index <= #tipsData.floatPop then
            msgcontent = tipsData.floatPop[index].content

        elseif name == usrMsgFileName.normalMsg and tipsData.normalPop and index <= #tipsData.normalPop then
            msgcontent = tipsData.normalPop[index].content
            msgtitle = tipsData.normalPop[index].title

        elseif name == usrMsgFileName.singleMsg and tipsData.singlePop and index <= #tipsData.singlePop then
            msgcontent = tipsData.singlePop[index].content
            msgtitle = tipsData.singlePop[index].title

        elseif name == usrMsgFileName.pageMsg and tipsData.pagePop and index <= #tipsData.pagePop then
            msgcontent = tipsData.pagePop[index].content

        elseif name == usrMsgFileName.uploadMsg and tipsData.uploadPop and index <= #tipsData.uploadPop then
            msgcontent = tipsData.uploadPop[index].content
            msgtitle = tipsData.uploadPop[index].uploadType
        end
        if msgcontent and msgtitle then
            Log:write('----kevin0921------ msgcontent:' .. msgcontent .. ',   msgtitle:' .. msgtitle)
        else
            Log:write('-----kevin0921-------  content or title is empty')
        end
        --参数替换
        if msgcontent then
            for k=1,arg.n do
                if arg[k] then
                    msgcontent = string.gsub(msgcontent,'XXX',arg[k],1)
                else
                    msgcontent = string.gsub(msgcontent,'XXX','',1)
                end
            end
            msgcontent = string.gsub(msgcontent,'XXX','')
            Log:write('----kevin0921------ replaced param, msgcontent:' .. msgcontent .. ',   msgtitle:' .. msgtitle)
            return msgcontent , msgtitle
        end
    end

    return '提示信息暂未获取到','提示'
end


--[[
 ------------------------------------------------------------
 -- @function Util:saveTipsMsgToFile()
 ------------------------------------------------------------
 -- @brief 保存提示信息数组到本地文件
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param name：本地文件名
 -- @param table：提示语数组
 ------------------------------------------------------------
 -- @return
 ------------------------------------------------------------
 --]]
function Util:saveTipsMsgToFile(name,table)
    local count = #table
    local filePath = 'WONDER:\\temp\\' .. name .. '.msg'
    local file = io.open(filePath, 'w+')
    file:write(name .. " = {\n")
    for i=0,count do
        file:write("[")
        file:write(i+1)
        file:write("]=")
        if table[i].title ~=nil then
            file:write(table[i].title)
            if table[i].content ~= nil then
                file:write(msgDivider)
            end
        end
        if table[i].uploadType ~= nil then
            file:write(table[i].uploadType .. msgDivider)
        end
        if table[i].content ~= nil then
            local newContent = string.gsub(table[i].content,'__',msgDivider)  -- 此处理为方便单选弹出框的多个选项
            file:write(newContent)
        end
        file:write(',\n')
    end
    file:write("}\n")
    file:close()
    Log:write('-------------kevin0919--------------saveTipsMsgToFile: ' .. name)
end

--[[
 ------------------------------------------------------------
 -- @function Util:getServer()
 ------------------------------------------------------------
 -- @brief 通过当前网络连接类型返回服务器路径
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return string
 ------------------------------------------------------------
 --]]
function Util:getServer()
    local curConnect = Http:getCurConnect()
    if curConnect == 'WLAN' or curConnect == 'CMNET' then
        return Config:get('wlan_serverandportal')
    else
        return Config:get('cmwap_serverandportal')
    end
end

function Util:getWeiBoServer()
    local curConnect = Http:getCurConnect()
    if curConnect == 'WLAN' or curConnect == 'CMNET' then
        return Config:get('wlan_weiboserverandportal')
    else
        return Config:get('cmwap_weiboserverandportal')
    end
end

--[[
 ------------------------------------------------------------
 -- @function Util:getCurWlanStrength()
 ------------------------------------------------------------
 -- @brief 获取当前wlan链接(ssid)的wlan信号强度
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param string: 无
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Util:getCurWlanStrength()
    local curStrength = '0'
    local attachedWLAN = WLAN:isAttach()
    if attachedWLAN and attachedWLAN.ssid ~='' then -- 判断是否已附着到某个WLAN网络
        WLAN:setEnable(1)
        local curWlanList = WLAN:getAvailable()
        Log:write('getCurWlanStrength(),curWlanList=',curWlanList)
        for i = 0,#curWlanList do
            if curWlanList[i] and curWlanList[i].ssid == attachedWLAN.ssid then
                curStrength = curWlanList[i].strength
            end
        end
    end
    return curStrength
end

--[[
 ------------------------------------------------------------
 -- @function Util:getChannelId()
 ------------------------------------------------------------
 -- @brief 获取渠道id，(协议规定，只在登录请求中带上),引擎在头里会带此id
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return string
 ------------------------------------------------------------
 --]]
function Util:getChannelId()
    local f = IO:fileRead("WONDER:\\channelid.ini")
    if f then
        return f
    else
        return Config:get('channel_id')
    end
end

--[[
 ------------------------------------------------------------
 -- @function Util:getQOEtime()
 ------------------------------------------------------------
 -- @brief 测试客户端行为消耗的时间
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return integer
 ------------------------------------------------------------
 --]]
function Util:getQOEtime()
    local reg = Reg:create(self:getCurAppId())
    local curTick = System:getTickTime()
    local lastTick = Reg:getInteger(reg,"qoeTicktime")
    Reg:setInteger(reg,"qoeTicktime",curTick)
    if lastTick ~= 0 and lastTick<curTick then
        return curTick-lastTick
    else
        return curTick
    end
end

--[[
 ------------------------------------------------------------
 -- @function Http:request(tag, url, num[, params])
 ------------------------------------------------------------
 -- @brief 发送Http请求
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param string tag: 存储返回数据文件名的唯一标识，约定命名规范为pagename_xxxDate
 -- @param string url: 请求地址
 -- @param number num: 数据返回时的消息号
 -- @param table params: 其他参数传递(可为空)
 -- @param string params.method: 发送方法'post'或'get',默认为get方法(可为空)
 -- @param string params.postData: 如果params.method为post方法,则此参数为post方法传递的参数(可为空)
 -- @param string params.fileName: 返回数据存储的全路径文件名;不填则保存至cache下,文件名为url生成的MD5值(可为空)。如 'MODULE:\\demo\\test.txt'
 -- @param int params.useCache: 是否使用cache数据，0 不使用cache数据，1 先使用cache数据同时请求网络数据，当有新数据到达时重新通知刷新数据。2.只使用CACHE，没有CACHE也返回成功，相关的错误由上层处理(默认为1)
 -- @param number params.observer: 以哪一个场景作为观察者,默认为发送请求的场景当作观察者(可为空)
 -- @param boolean params.getToken: 是否是获取token的请求
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
Http._request = Http.request
function Http:request(tag, url, num, params)
    local sdkVersion = Config:get('sdk_version')
    -- local netSpeed = Config:get('rate')
    local playerType = Util:getPlayerInfo()
    local clientId = Net:getClientId()
    local filterType = Config:get('filterType')
    local res = ""
    local minResolution = SCREEN_WIDTH < SCREEN_HEIGHT and SCREEN_WIDTH or SCREEN_HEIGHT
    if minResolution >= 720 then
        res = "HDPI"
    elseif minResolution >= 480 then
        res = "MDPI"
    else
        res = "SDPI"
    end
	--res = "HDPI"
    url = url .. (string.find(url, '?') and '&' or '?')
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    filterType = Reg:getInteger(regI, 'accountLogin') == 1 and '0' or (Reg:getInteger(regI, 'useAccount') == 1 and '0' or filterType)

    url = url .. 'isSupContSet=1&sdkVersion=' .. sdkVersion .. '&playerType=' .. playerType .. '&res=' .. res .. '&clientId=' .. clientId .. '&filterType=' .. filterType
    if filterType == '1' then
        url = url .. '&token=' .. Util:md5(Net:getToken() .. System:getUserAgent() .. '_mobilevideo_sup3.4')
    end
    Http:_request(tag, url, num, params)
    Net:longConnect()
end

Http._connectCMNET = Http.connectCMNET
function Http:connectCMNET()
    Http:_connectCMNET()
    Http:setPreResourceUrl(Util:getServer())
end

Http._connectCMWAP = Http.connectCMWAP
function Http:connectCMWAP()
    Http:_connectCMWAP()
    Http:setPreResourceUrl(Util:getServer())
end

Http._connectCMNETWithWLAN = Http.connectCMNETWithWLAN
function Http:connectCMNETWithWLAN()
    Http:_connectCMNETWithWLAN()
    Http:setPreResourceUrl(Util:getServer())
end

Http._connectCMNETWithCMWAP = Http.connectCMNETWithCMWAP
function Http:connectCMNETWithCMWAP()
    Http:_connectCMNETWithCMWAP()
    Http:setPreResourceUrl(Util:getServer())
end

Http._connectWLAN = Http.connectWLAN
function Http:connectWLAN(...)
    Http:_connectWLAN(...)
    Http:setPreResourceUrl(Util:getServer())
end

-- -------------------------------------------------------
-- |底部区域测试S
-- -------------------------------------------------------
Bottom = {}

Bottom.layout = [[
<?xml version="1.0" encoding="utf-8"?>
<root>
    <header/>
    <body>
	<!--底部区域-->
	<node name="bottomFrame" rect="0,0,720,112"  extendstyle="1511">
		     <image rect="0,0,720,0" style="autosize" src="file://image/bottom_bg.png" extendstyle="1017"/>
			 <animate name="bottomRateAnimation" rect="120,0,0,50" extendstyle="1571" delay="25" loop="true" visible="0">
				<animate-frame start="0" delay="5">
					<image rect="0,0,720,50" src="file://image/bottom_rate1.png" />
				</animate-frame>
				<animate-frame start="5" delay="5">
					<image rect="0,0,720,50" src="file://image/bottom_rate2.png" />
				</animate-frame>
				<animate-frame start="10" delay="5">
					<image rect="0,0,720,50" src="file://image/bottom_rate3.png" />
				</animate-frame>
				<animate-frame start="15" delay="5">
					<image rect="0,0,720,50" src="file://image/bottom_rate4.png" />
				</animate-frame>
				<animate-frame start="20" delay="5">
					<image rect="0,0,720,50" src="file://image/bottom_rate5.png" />
				</animate-frame>
			</animate>
			
			 <button name="playBtn" rect="10,10,90,90" extendstyle="1111"  OnSelect="playBtnOnSelect" visible="1" enable="1">
			 <image rect="0,0,0,0" style="maxsize" src="file://image/playbackground.png" extendstyle="1177"/>
			 </button>
			 <button name="pauseBtn"  rect="10,10,90,90" extendstyle="1111"  OnSelect="pauseBtnOnSelect" visible="0" enable="0">
			 <image rect="0,0,0,0" style="maxsize" src="file://image/pausebackground.png" extendstyle="1177"/>
			 </button>
			 <node name="refreshAnimation" rect="10,10,90,90" extendstyle="1111"  visible="0" enable="0">
			 <animate rect="0,0,90,90" delay="24" loop="true" extendstyle="0000">
             <animate-frame start="$(start)" delay="1">
             <image rect="0,0,90,90" rotate="$(rotate)" style="autosize" src="file://image/refreshbackgroung.png" extendstyle="0000"/>
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
		 
			<node name="tipsNode" rect="0,0,720,210" extendstyle="0017"/>  
             
			 <scrolltext step="5" scroll="true" name="bottomAudioName" text="暂无节目" rect="120,15,450,112" extendstyle="1111"   color="#D2691E"  font-size="50"/>
			 <button name="playgoBtn" rect="650,30,50,50" extendstyle="1111" OnSelect="playgoBtnOnSelect" visible="1" enable="1">
			 <image rect="0,0,0,0" style="maxsize" src="file://image/play_go.png" extendstyle="1077"/>
			 </button>
    </node>
    </body>
</root>
]]

function Bottom:show()
    local curScene = Sprite:getCurScene()
    --Sprite:sendEvent(curScene, Msg.dialogShow)
    local mainNode = Sprite:findChild(curScene, 'mainNode')
    local bottomNode = Sprite:findChild(curScene, 'bottomNode')
    if bottomNode ~= 0 then
        setNodeState(bottomNode, 1)
    else
        bottomNode = Sprite:create('node', Sprite:findChild(curScene, 'mainNode'))
        Sprite:setProperty(bottomNode, 'name', 'bottomNode')
		Sprite:setRect(bottomNode,0,0,720,112)
		Sprite:setProperty(bottomNode, 'extendstyle', '1511')
        Sprite:loadFromString(bottomNode, Bottom.layout)
    end
	
	playBtn=Sprite:findChild(bottomNode,'playBtn')
	pauseBtn=Sprite:findChild(bottomNode,'pauseBtn')
	refreshAnimation=Sprite:findChild(bottomNode,'refreshAnimation')
	bottomAudioName = Sprite:findChild(bottomNode,'bottomAudioName')
	playgoBtn = Sprite:findChild(bottomNode,'playgoBtn')
	bottomRateAnimation = Sprite:findChild(bottomNode,'bottomRateAnimation')
	tipsNode  = Sprite:findChild(bottomNode,'tipsNode')
	Timer:cancel(4444)
	Timer:set(4444,500,'getStatusa')
end

-- @brief 刷新播放与暂停按钮状态
function getStatusa()
	Log:write('commonbottom====4getstatusa')
	LoadBottomPlayerData()
    lastStatus = status
    status, errorCode = Player:getStatus()  
    if  status == Player.status.Connecting or
        status == Player.status.Buffering or status == Player.status.Idle then
	    uiRefresh()
	elseif (status == Player.status.Playing and not PEReviewFinishFlag ) then
        uiPause()
		if objType ~= 'live' then 	
		end
    elseif status == Player.status.Paused or status == Player.status.Ready then
        uiPlay()
    elseif status == Player.status.Stopped or status == Player.status.Finished or PEReviewFinishFlag then
        uiPlay()
    end
    Timer:set(4444, 500, 'getStatusa')
end

function LoadBottomPlayerData()
	Log:write('commonbottom====5LoadBottomPlayerData')
	local bottomReg = Reg:create('com_wondertek_mobileaudio_bottomplayer')
	local type = Reg:getInteger(bottomReg,'type')
	if type == 1 then
		local audioName = Reg:getString(bottomReg,'audioName')
		Log:write('commonbottom====6LoadBottomPlayerData',bottomAudioName)
		if audioName ~= nil and audioName ~= '' then
			Sprite:setProperty(bottomAudioName,'text',audioName)
		else
			Sprite:setEnable(playBtn,0)
			Sprite:setEnable(pauseBtn,0)
		end	
	elseif type == 0 then
		local audioName = Reg:getString(bottomReg,'audioName')
		if audioName ~= nil and audioName ~= '' then
			Sprite:setProperty(bottomAudioName,'text',audioName)
		else
			Sprite:setEnable(playBtn,0)
			Sprite:setEnable(pauseBtn,0)
		end	
	elseif type ==2 then
		local audioName = Reg:getString(bottomReg,'audioName')
		if audioName ~= nil and audioName ~= '' then
			Sprite:setProperty(bottomAudioName,'text',audioName)
		else
			Sprite:setEnable(playBtn,0)
			Sprite:setEnable(pauseBtn,0)
		end	
	elseif type ==3 then
		local audioName = Reg:getString(bottomReg,'audioName')
		if audioName ~= nil and audioName ~= '' then
			Sprite:setProperty(bottomAudioName,'text',audioName)
		else
			Sprite:setEnable(playBtn,0)
			Sprite:setEnable(pauseBtn,0)
		end	
	end
end

function playgoBtnOnSelect(sprite)
	local reg = Reg:create('com_wondertek_mobileaudio_novel')
	local bottomReg = Reg:create('com_wondertek_mobileaudio_bottomplayer')
	local gtype = Reg:getInteger(bottomReg,'type')
	local ttext = Sprite:getText(bottomAudioName) 
	if ttext == '暂无节目' then
		--暂无节目
		Tips:show('暂无节目')
	else
		if gtype == 1 then
			--local data = Reg:getString(bottomReg,'tempParentId')
			--Reg:setInteger(reg,'fromFlag',1)
			--Reg:setString(reg,'novelItemId',data)
			Scene:go('MODULE:\\com_wondertek_mobileaudio\\audioplay.wdml')
		elseif gtype == 0 then
			Scene:go('MODULE:\\com_wondertek_mobileaudio\\playyue.wdml')
		elseif gtype == 2 then
			Reg:setInteger(bottomReg,'bottomPlayFlag',1)
			Reg:setInteger(bottomReg,'bottomSelectFlag',1)
			Scene:go('MODULE:\\com_wondertek_mobileaudio\\bokeplay.wdml',{freeDestScene=true})
		elseif gtype == 3 then
			Scene:go('MODULE:\\com_wondertek_mobileaudio\\audioplaylocal.wdml')
		else
			--暂无节目
			Tips:show('暂无节目')
		end
	end
end

--播放UI更新
function uiPlay()
    setSpriteStatus(playBtn,1)
	--setSpriteStatus(playingAnimation,0)
    setSpriteStatus(pauseBtn,0)
	setSpriteStatus(refreshAnimation,0)
	Sprite:setActive(bottomRateAnimation, 0) 
	--Sprite:setVisible(bottomRateAnimation,0)
	
end

--刷新UI更新
function uiRefresh()
    setSpriteStatus(playBtn,0)
	--setSpriteStatus(playingAnimation,0)
    setSpriteStatus(pauseBtn,0)
	setSpriteStatus(refreshAnimation,1)
end

--暂停UI更新
function uiPause()
    setSpriteStatus(playBtn,0)
	--setSpriteStatus(playingAnimation,1)
    setSpriteStatus(pauseBtn,1)
	setSpriteStatus(refreshAnimation,0)
	
	Sprite:setActive(bottomRateAnimation, 1) 
	Sprite:setVisible(bottomRateAnimation,1)
end

-- 播放
function playBtnOnSelect(sprite)
	status, errorCode = Player:getStatus()  
	local bottomReg = Reg:create('com_wondertek_mobileaudio_bottomplayer')
	local gtype = Reg:getInteger(bottomReg,'type')
	Log:write('playBtnOnSelect============',gtype,status,Player.status.Finished)
	if gtype == 2 and status == Player.status.Finished  then
		Player:create(0, -1, 1, 1)
		isPlayerCreate = true
		playUrl = Reg:getString(bottomReg,'playUrl')
		Log:write('playBtnOnSelect============',playUrl)
		Player:open(playUrl,Http:getCurConnect())
		pluginInvoke(Player:_getHandle(),'StartPlayer') 
		--Player:open(playUrl)
		--uiPause()
		--Player:play()
	else
	uiPause()
	Player:play()
	end
end

--暂停
function pauseBtnOnSelect()
    if status == Player.status.Playing then
        uiPlay()
        Player:pause()
    end
end
-- -------------------------------------------------------
-- |底部区域测试E
-- -------------------------------------------------------



-- -----------------------------------------------------------------------------
-- | Desc: 对话框
-- -----------------------------------------------------------------------------

Dialog = {}

Dialog.layout = [[
<?xml version="1.0" encoding="utf-8"?>
<root>
    <header/>
    <body>
        <button rect="0,0,720,1280" OnSelect="" extendstyle="1111"/>
        <shadow rect="0,0,720,1280" color="#000000" alpha="70" extendstyle="1111"/>
        <node name="dframe" rect="50,475,612,230" extendstyle="1010">
            <image rect="0,0,612,230" src="file://image/dialogbg.png"  style="sudoku-auto" sudoku="5,5,5,5" />        
            <textarea name="dtext" text="" rect="80,10,460,100" extendstyle="1010" font-size="28" color="#7F7B7A" line-height="35" h-align="center" v-align="center" loop="true" step="1"/>
            <node name="btnArea" rect="34,120,544,77" extendstyle="0010">
                <button name="okBtn" rect="0,0,255,77" style="autosize" OnSelect="_okProc" extendstyle="1510" normal="n" sel="s">
                    <node name="n" rect="0,0,255,77" extendstyle="1010" >
					    <image rect="0,0,255,77" src="file://image/dialogbtnbg.png" style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1070" />
                        <label name="textOkN" rect="0,0,255,77" extendstyle="1010" text="确定" font-size="30" color="#000000" v-align="center" h-align="center"/>
                    </node>
                    <node name="s" rect="0,0,255,77" extendstyle="1010" frame="true">
                        <image rect="0,0,255,77" src="file://image/dialogbtnbg.png"  style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1010" />
                        <label name="textOkF" rect="0,0,255,77" extendstyle="1010" text="确定" alpha="200" font-size="30" color="#000000" v-align="center" h-align="center"/>
                    </node>
                </button>
                <button name="cancelBtn" rect="289,50,255,77" OnSelect="_cancelProc" extendstyle="1570" normal="n" sel="s" disabled="d">
                    <node name="n" rect="0,0,255,77" extendstyle="1010" >
					    <image rect="0,0,255,77" src="file://image/dialogbtnbg.png" style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1070" />
                        <label name="textCancelN" rect="0,0,255,77" extendstyle="1010" text="取消" font-size="30" color="#000000" v-align="center" h-align="center"/>
                    </node>
                    <node name="s" rect="0,0,255,77" extendstyle="1070" frame="true">
                        <image rect="0,0,255,77" src="file://image/dialogbtnbg.png" style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1070" />
                        <label name="textCancelF" rect="0,0,255,77" extendstyle="1010" text="取消" alpha="200" font-size="30" color="#000000" v-align="center" h-align="center"/>
                    </node>
                </button>
            </node>
        </node>
    </body>
</root>
]]


Dialog.layout1 = [[
<?xml version="1.0" encoding="utf-8"?>
<root>
    <header/>
    <body>
        <button rect="0,0,720,1280" OnSelect="" extendstyle="1111"/>
        <shadow rect="0,0,720,1280" color="#000000" alpha="70" extendstyle="1111"/>
        <node name="dframe" rect="50,100,620,1000" extendstyle="1010">
            <node rect="0,0,620,35" extendstyle="0510">
                <image rect="0,0,620,72" src="file://image/dialogShadow.png" style="autosize" extendstyle="1010" />
            </node>
            <image rect="0,0,620,410" src="file://image/commonbg.png"  style="sudoku-auto" sudoku="5,5,5,5" extendstyle="1017" BuildChildrenFinished="resChoose"><node/></image>
            <image rect="0,0,620,85" src="file://image/orderDig_head.png"  style="sudoku-auto" sudoku="6,0,6,0" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
            <label name="dtitle" rect="0,0,620,85" text="提示" color="#212121" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1" font-size="40" v-align="center" h-align="center" extendstyle="1010"/>
            <shadow rect="0,75,620,4" color="#B2DB93" alpha="255" extendstyle="1010"/>

            <textarea name="dtext" text="" rect="20,70,580,850" extendstyle="1010" font-size="23" color="#7F7B7A" line-height="38" h-align="left" v-align="center" loop="true" step="1"/>

            <shadow rect="0,901,620,3" color="#B2DB93" alpha="255" extendstyle="0010"/>
            <node name="btnArea" rect="0,0,620,150" extendstyle="0510">
                <button name="checkBtn" rect="140,0,400,50" extendstyle="1010" OnSelect="_checkboxCheckProc">
                    <image name="checkBoxN" rect="0,10,37,37" style="sudoku-auto" sudoku="6,6,6,6" src="file://image/checkbg.png" extendstyle="1000" BuildChildrenFinished="resChoose"><node/></image>
                    <image name="checkImg" rect="0,10,37,37" visible="0" style='sudoku-auto' sudoku="5,5,5,5" src="file://image/downloadcheck.png" extendstyle="1000" BuildChildrenFinished="resChoose"><node/></image>
                    <label name="checkText" rect="80,0,400,58" extendstyle="0010" autoextend="true" text="不再提醒" color="#565656" v-align="center" font-size="30" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1"/>
                </button>
                <button name="okBtn" rect="73,75,200,100" style="autosize" OnSelect="_okProc" extendstyle="1010" normal="n" sel="s">
                    <node name="n" rect="0,0,177,56" extendstyle="1010" >
                        <image rect="0,0,177,56" src="file://image/episode_n.png" extendstyle="1010"  style="sudoku-auto" sudoku="11,11,11,11" BuildChildrenFinished="resChoose"><node/></image>
                        <label name="textOkN" rect="0,0,177,56" extendstyle="1010" text="确定" font-size="30" color="#565656" v-align="center" h-align="center"/>
                    </node>
                    <node name="s" rect="0,0,177,56" extendstyle="1010" >
                        <image rect="0,0,177,56" src="file://image/episode_s.png"  style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                        <label name="textOkF" rect="0,0,177,56" extendstyle="1010" text="确定" font-size="30" color="#FFFFFF" v-align="center" h-align="center"/>
                    </node>
                </button>
                <shadow rect="310,50,2,100" color="#B2DB93" alpha="255" extendstyle="1010"/>
                <button name="cancelBtn" rect="372,75,200,100" style="autosize" OnSelect="_cancelProc" extendstyle="1010" normal="n" sel="s" disabled="d">
                    <node name="n" rect="0,0,177,56" extendstyle="1010" >
                        <image rect="0,0,177,56" src="file://image/episode_n.png" extendstyle="1010"  style="sudoku-auto" sudoku="11,11,11,11" BuildChildrenFinished="resChoose"><node/></image>
                        <label name="textCancelN" rect="0,0,177,56" extendstyle="1010" text="取消" font-size="30" color="#565656" v-align="center" h-align="center"/>
                    </node>
                    <node name="s" rect="0,0,177,56" extendstyle="1010" >
                        <image name="orderImgS" rect="0,0,177,56" src="file://image/episode_s.png"  style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                        <label name="textCancelF" rect="0,0,177,56" extendstyle="1010" text="取消" font-size="30" color="#FFFFFF" v-align="center" h-align="center"/>
                    </node>
                </button>
            </node>
        </node>
    </body>
</root>
]]

--[[
 ------------------------------------------------------------
 -- @function Dialog:show(title, message, typeStr, okCallback, cancelCallback, okText, cancelText, checkBoxCallback, checkBoxText, isChecked)
 ------------------------------------------------------------
 -- @brief 显示对话框
 ------------------------------------------------------------
 -- @param string title 对话框标题
 -- @param string message 对话框内容
 -- @param string typeStr 对话框类型，'ok'、'cancle'、'ok_cancel'
 -- @param string okCallback 确定回调函数名，可空
 -- @param string cancelCallback 取消回调函数名，可空
 -- @param string okText ok按钮文字
 -- @param string cancelText cancel按钮文字
 -- @param string checkBoxCallback 单选框回调函数名
 -- @param string checkBoxText 单选框内容
 -- @param string isChecked 是否设置勾选 'true' 'false'
 -- @param string textareaAlign textarea对齐方式
 -- @param string layoutType 对话框样式
 ------------------------------------------------------------
 -- @return void
 ------------------------------------------------------------
 --]]
function Dialog:show(title, message, typeStr, okCallback, cancelCallback, okText, cancelText, checkBoxCallback, checkBoxText, isChecked,layoutType)
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.dialog)
    if okCallback then
        Reg:setString(reg, '_okCallback', okCallback)
    else
        Reg:setString(reg, '_okCallback', '')
    end
    if cancelCallback then
        Reg:setString(reg, '_cancelCallback', cancelCallback)
    else
        Reg:setString(reg, '_cancelCallback', '')
    end
    local curScene = Sprite:getCurScene()
    Sprite:sendEvent(curScene, Msg.dialogShow)
    local mainNode = Sprite:findChild(curScene, 'mainNode')
    local dialogNode = Sprite:findChild(curScene, 'dialogNode')
    if dialogNode ~= 0 then
        setNodeState(dialogNode, 1)
    else
        dialogNode = Sprite:create('node', Sprite:findChild(curScene, 'mainNode'))
        Sprite:setProperty(dialogNode, 'name', 'dialogNode')
        -- if layoutType == "1" then
            -- Sprite:loadFromString(dialogNode, Dialog.layout1)
        -- else
        Sprite:loadFromString(dialogNode, Dialog.layout)
        -- end
    end
    -- local dtitle = Sprite:findChild(dialogNode, 'dtitle')
    -- Sprite:setProperty(dtitle, 'text', title)
    local dtext = Sprite:findChild(dialogNode, 'dtext')
    Sprite:setProperty(dtext, 'text', message)
    local okBtn,cancelBtn = Sprite:findChild(dialogNode, 'okBtn'),Sprite:findChild(dialogNode, 'cancelBtn')
    -- local singleBtn = Sprite:findChild(dialogNode, 'singleBtn')
    if typeStr == 'cancel' then
        setNodeState(okBtn,0) setNodeState(cancelBtn,0)
        -- setBtnCancel(singleBtn,cancelText or '取消')
    elseif typeStr == 'ok' then
        setNodeState(okBtn,0) setNodeState(cancelBtn,0)
        -- setBtnOK(singleBtn,okText or '确定')
    else
        setNodeState(okBtn,1) setNodeState(cancelBtn,1)
        if GetPlatformVersion and Config:get("samsung_is_watching_over_u") == "" then
            local pVer = GetPlatformVersion()
            if string.match(pVer,"_android") then
                pVer = string.gsub(pVer,"_android","")
                if pVer >= "4.0" then
                    setBtnOK(cancelBtn,okText or '确定')
                    setBtnCancel(okBtn,cancelText or '取消')
                end
            end
        end
    end
    -- local checkBtn = Sprite:findChild(dialogNode, 'checkBtn')
    -- if checkBoxCallback then
        -- setNodeState(checkBtn,1)
        -- if isChecked ~= nil then
            -- local checkBtn = Sprite:findChild(dialogNode, 'checkBtn')
            -- UI_setCheckbox(checkBtn, isChecked)
        -- end
        -- local reg = Reg:create(Reg.com_wondertek_mobileaudio.dialog)
        -- Reg:setString(reg, '_checkboxCheckCallback', checkBoxCallback)
        -- local checkText = Sprite:findChild(dialogNode, 'checkText')
        -- if checkBoxText then
            -- Sprite:setProperty(checkText, 'text', checkBoxText)
        -- end
    -- else
        -- setNodeState(checkBtn,0)
    -- end
end

function setBtnOK(sprite,txt)
    local textOkN,textOkF,textCancelN,textCancelF = Sprite:findChild(sprite, 'textOkN'),Sprite:findChild(sprite, 'textOkF'),Sprite:findChild(sprite, 'textCancelN'),Sprite:findChild(sprite, 'textCancelF')
    Sprite:setProperty(textOkN, 'text', txt) Sprite:setProperty(textOkF, 'text', txt) Sprite:setProperty(textCancelN, 'text', txt) Sprite:setProperty(textCancelF, 'text', txt)
    Sprite:setProperty(sprite, 'OnSelect', "_okProc")
end

function setBtnCancel(sprite,txt)
    local textOkN,textOkF,textCancelN,textCancelF = Sprite:findChild(sprite, 'textOkN'),Sprite:findChild(sprite, 'textOkF'),Sprite:findChild(sprite, 'textCancelN'),Sprite:findChild(sprite, 'textCancelF')
    Sprite:setProperty(textOkN, 'text', txt) Sprite:setProperty(textOkF, 'text', txt) Sprite:setProperty(textCancelN, 'text', txt) Sprite:setProperty(textCancelF, 'text', txt)
    Sprite:setProperty(sprite, 'OnSelect', "_cancelProc")
end

--[[
 ------------------------------------------------------------
 -- @function Dialog:isShow()
 ------------------------------------------------------------
 -- @brief Dialog框是否显示
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return boolean
 ------------------------------------------------------------
 --]]
function Dialog:isShow()
    local rootSprite = GetCurScene()
    local dialogSprite = FindChildSprite(rootSprite, 'dialogNode')
    if dialogSprite ~=0 and IsSpriteVisible(dialogSprite) == 1 then
        return true
    end
    return false
end

--[[
 ------------------------------------------------------------
 -- @function Dialog:close()
 ------------------------------------------------------------
 -- @brief 关闭对话框，实际只是隐藏
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Dialog:close()
    Sprite:sendEvent(Sprite:getCurScene(), Msg.dialogClose)
    local parentSprite = Sprite:getCurScene()
    local dialogSprite = Sprite:findChild(parentSprite, 'dialogNode')
    setNodeState(dialogSprite, 0)
    Sprite:releaseCapture(dialogSprite)
    -- 设置mainNode可点击
    local mainSprite = Sprite:findChild(parentSprite, 'mainNode')
    setNodeState(mainSprite, 1)
end

function Dialog:isChecked()
    local rootSprite = Sprite:getCurScene()
    local dialogSprite = Sprite:findChild(rootSprite, 'dialogNode')
    local checkBtn = Sprite:findChild(dialogSprite, 'checkBtn')
    return UI_isCheckboxChecked(checkBtn)
end

function _checkboxCheckProc(sprite)
    UI_checkboxOnSelect(sprite)
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.dialog)
    local _checkboxCheckCallback = Reg:getString(reg, '_checkboxCheckCallback')
    if _checkboxCheckCallback ~= "" then
        loadstring(_checkboxCheckCallback..'()')()
    end
end

function _okProc()
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.dialog)
    local _okCallback = Reg:getString(reg, '_okCallback')
    Dialog:close()
    if '' ~= _okCallback then
        if type(loadstring('return '.._okCallback)()) == 'function' then
            loadstring(_okCallback..'()')()
        end
    end
end

function _cancelProc()
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.dialog)
    local _cancelCallback = Reg:getString(reg, '_cancelCallback')
    Dialog:close()
    if '' ~= _cancelCallback then
        if type(loadstring('return '.._cancelCallback)()) == 'function' then
            loadstring(_cancelCallback..'()')()
        end
    end
end

-- @brief 获得当前服务器时间
function Util:getServerTime()
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
    local sysTime = Reg:getString(reg, 'sysTime')
    local tickTime = Reg:getString(reg, 'tickTime')
    if sysTime ~= "" and tickTime ~= "" then
        local newTickTime = System:getTickTime()
        Log:write('sysTime=' .. sysTime .. ',  tickTime=' .. tickTime ..',   newTickTime=' .. newTickTime)
        local curTime = sysTime + newTickTime - tickTime
        return curTime
    else
        local curTime = 1000*os.time()
        Log:write('curTime=', curTime )
        return curTime
    end
end

-- 是否让页面刷新
function Util:setRefreshStatus(lock, reg, curSceneName)
    local reg = reg or Reg:create(Reg.com_wondertek_mobileaudio.index)
    local curSceneName = curSceneName or Scene:getNameByHandle(Sprite:getCurScene())
    if 2 ~= Reg:getInteger(reg, curSceneName) then
        Reg:setInteger(reg, curSceneName, lock) -- lock：0释放、1锁、2离开场景页面时需要释放页面（刷新）
        Log:write('Util:setRefreshStatus===========' .. curSceneName .. '==========', lock)
    end
end

-- @brief 获得视频下载存储路径
function Util:getDownloadPath(bIsAudio)
    local downloadPath, downloadType = "", 0
    local bIsNeedDelay = false
    if '1' == Config:get('download_path') then -- sd卡
        local flashCard = System:getFlashCardName(1) -- 判断外置存储卡存在性
		Log:write('getDownloadPath==========1',flashCard)
        local availableSize
        if GetAvailableStorageSize then
            availableSize = GetAvailableStorageSize(1)
        else
            availableSize = -1
        end
        Log:write("外置存储卡剩余容量", availableSize)
        local bIsFlashCardOver = (flashCard and flashCard ~= '' and availableSize < 10 and availableSize > 0 ) and 1 or 0
        if flashCard and flashCard ~= '' and bIsFlashCardOver == 0 then --设置在外置存储卡，并且存在外置存储卡，并且外置存储卡有10M以上存储空间
            Log:write('Util:getDownloadPath  flashCard=================', flashCard)
            Log:write("Util:getDownloadPath()::Store into outterCard~")
            downloadPath = Util:getDownloadFolder(1,bIsAudio)
            downloadType = 1
        else                                  --设置在外置存储卡，并且不存在外置存储卡
            bIsNeedDelay = true
            local innerCard = System:getFlashCardName(0) --判断内置存储卡存在性
            if innerCard and innerCard ~= "" then --内置存储卡存在
                Log:write("Util:getDownloadPath()::config is outterCard, but outterCard Exist, Store into innerCard~")
                downloadPath = Util:getDownloadFolder(0,bIsAudio)
                downloadType = 0
            else                                  --内置存储卡不存在
                -- Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,1)) --('未搜索到存储卡，切换至手机存储')
                Config:set('download_path', 0)
                Log:write("Util:getDownloadPath()::config is outterCard, but outterCard Not Exist, Store into Phone~")
                if IO:dirExist(Util:getDefaultFolder(WDFIDL_MYVIDIO)) then
                    downloadPath =  Util:getInnerDownloadFolder(WDFIDL_MYVIDIO,bIsAudio)
                else
                    downloadPath =  Util:getInnerDownloadFolder(WDFIDL_DOWNLOAD,bIsAudio)
                end
                downloadType = 2
            end
        end
    else -- 手机
        if IO:dirExist(Util:getDefaultFolder(WDFIDL_MYVIDIO)) then
            downloadPath =  Util:getInnerDownloadFolder(WDFIDL_MYVIDIO,bIsAudio)
        else
            downloadPath =  Util:getInnerDownloadFolder(WDFIDL_DOWNLOAD,bIsAudio)
        end
        downloadType = 2
    end
    Log:write('Util:getDownloadPath===============downloadPath========', downloadPath)
    Log:write('Util:getDownloadPath===============downloadType========', downloadType)
    return downloadPath, downloadType, bIsNeedDelay
end

-- @brief 获得剩余空间
function Util:getFreeSpace(pathName)
    local checkPath = pathName and Util:getDefaultFolder(pathName) or Util:getDownloadPath()
    Log:write('checkPath', checkPath)
    local spaceh, spacel = System:getDiskFreeSpaceEx(checkPath)
    local space = spaceh * 2^32 + spacel
    return space -- 返回值单位为KB
end

function Util:checkDownloadList(videoPath)
    local count = Download:getCount()
    local task = Download:getStatus()
    if task and count then
        for i = 1, count do
            if task[i] and task[i].localfile == videoPath then
                return videoPath
            end
        end
    end
end


-- @brief 对各个页面OnSpriteEvent统一处理
function Util:onSpriteEvent(msg, param)
	Log:write('onSpriteEvent====luha',msg,MSG_APPOINTMENT,MSG_NOTIFICATION_Audio,MSG_NOTIFICATION)
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    if msg == MSG_WLAN then
        local param1 = Param:getInteger(param, 0)
        local param2 = Param:getInteger(param, 1)
        Log:write('MSG_WLAN param1 ================ ', param1)
        Log:write('MSG_WLAN param2 ================ ', param2)
        if param1 == 0 then -- haveLogin
            if param2 == 1 then
                Log:write('!!!!!!!!!!!!!!!!!!!!!!!!!!!!! success connectWLAN !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ')
                Reg:setInteger(regI, 'isOfflineView', 2)
                Net:noImageMode()
                Net:longConnect()
                if Util:GetVideoMsg() and Scene:getNameByHandle() == Alias.playerlocal and Reg:getInteger(regI, 'indexHaveLogin') == 0 then
                else
                    -- Tips:show('已连接到WLAN')
                end
                Net:login()
            else
                Reg:setInteger(regI, 'isOfflineView', 1)
                if Util:GetVideoMsg() and Scene:getNameByHandle() == Alias.playerlocal and Reg:getInteger(regI, 'indexHaveLogin') == 0 then
                else
                    Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,2))--('网络不给力T_T..请您切换网络或稍后再试')
                end
                if Scene:getNameByHandle() == Alias.index and Reg:getInteger(regI, 'indexHaveLogin') == 0 then
                    Log:write('innnnnnnnnnn')
                    Reg:setInteger(regI, 'allowLogin', 0)
                    goToDownloadLocal()
                elseif Scene:getNameByHandle() == Alias.downloadlocal then
                    local backBtn = Sprite:findChild(Sprite:getCurScene(), 'backBtn')
                    Sprite:setEnable(backBtn, 0)
                    Sprite:setVisible(backBtn, 0)
                end
            end
        end
    elseif msg == MSG_DIALNET then
        Log:write('MSG_DIALNET =========== param', param)
        local paramFlag = param.flag
        local paramStatus = param.networkstatus
        local reg = Reg:create(Util:getCurAppId())
        if paramStatus == DIALNET_CONNECTED then -- WLAN已连接上
            if paramFlag == 0 then
                Log:write('DIALNET_CONNECTED =============== WLAN ')
                WLAN:haveLogin("")
            else
                Log:write('---------QOE time connect CMWAP/CMNET successed-------------',Util:getQOEtime())
                if Util:GetVideoMsg() and Scene:getNameByHandle() == Alias.playerlocal and Reg:getInteger(regI, 'indexHaveLogin') == 0 then
                else
                    -- Tips:show('已连接到移动网络')
                end
                Log:write('DIALNET_CONNECTED =============== cellularnet ')
                Reg:setInteger(regI, 'isOfflineView', 2)
                Net:noImageMode()
                Net:longConnect()

                Net:login()
            end
        elseif paramStatus == 7 then --重连
            Log:write('paramFlag', paramFlag)
            if paramFlag == 0x00001 then -- wlan重连
                Log:write('wlan reconnected ================== ')
                Timer:cancel(TimerId.goToLocal)
                Reg:setInteger(regI, 'allowLogin', 1)
                Http:connectWLAN("")
            elseif paramFlag == 0x10001 then -- 蜂窝网重连
                Log:write('cellularnet reconnected ================== ')
                Timer:cancel(TimerId.goToLocal)
                Reg:setInteger(regI, 'allowLogin', 1)
                Net:connectCellularNet()
            elseif paramFlag == 0x0 or paramFlag == 0x10000 then -- wlan断开/蜂窝网断开
                Net:cancelLongConnect()
                Reg:setInteger(regI, 'isOfflineView', 1)
                if Util:GetVideoMsg() and Scene:getNameByHandle() == Alias.playerlocal and Reg:getInteger(regI, 'indexHaveLogin') == 0 then
                else
                    Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,2))--('网络不给力T_T..请您切换网络或稍后再试')
                end
                if Scene:getNameByHandle() == Alias.index and Reg:getInteger(regI, 'indexHaveLogin') == 0 then
                    Reg:setInteger(regI, 'allowLogin', 0)
                    goToDownloadLocal()
                elseif Scene:getNameByHandle() == Alias.downloadlocal then
                    local backBtn = Sprite:findChild(Sprite:getCurScene(), 'backBtn')
                    Sprite:setEnable(backBtn, 0)
                    Sprite:setVisible(backBtn, 0)
                end
            end
        end
    elseif msg == MSG_NOTIFICATION_Audio then --音频通知消息 MSG_NOTIFICATION_Audio
        Log:write('======================MSG_NOTIFICATION_Audio ======================')
        audioBtnOSS()
    elseif msg == MSG_NOTIFYEVENT then --来电提醒
        Log:write('-------------------MSG_NOTIFYEVENT---------1--------')
        local param1 = Param:getInteger(param, 1)
        if getAudioPlayFlag then
            if getAudioPlayFlag() ~= 0 then
                local status, errorCode = Player:getStatus()
                if (status == Player.status.Ready
                    or status == Player.status.Idle
                    or status == Player.status.Paused) and param1 == 1 and gLastStatus ~= Player.status.Paused then
                    Player:play()
                    if setNotificationStatus then setNotificationStatus(0) end -- 设置通知栏播放状态
                end
                if param1==0 then
                    gLastStatus = status   --保存来电之前状态
                    if status == Player.status.Playing then Player:pause() end
                    if setNotificationStatus then setNotificationStatus(1) end -- 设置通知栏播放状态
                end
            end
        end
    elseif msg == MSG_NOTIFICATION_ClickButton then -- 通知栏允许暂停和播放，param0=0 表示播放（通知我播放），param0=1 表示暂停（通知我暂停）
        local param1 = Param:getInteger(param, 0)
        Log:write(' ----MSG_NOTIFICATION_ClickButton --1--param1=',param1)
        --判断是否音频正在播放，如在播放则停止
        if getAudioPlayFlag then
            if getAudioPlayFlag() ~= 0 then
                Log:write(' ----MSG_NOTIFICATION_ClickButton --2-- ')
                local status, errorCode = Player:getStatus()
                Log:write(' ----MSG_NOTIFICATION_ClickButton --3--status=',status)
                if (status == Player.status.Ready
                    or status == Player.status.Idle
                    or status == Player.status.Paused) and param1 == 0 then
                    Player:play()
                    if setNotificationStatus then setNotificationStatus(0) end -- 设置通知栏播放状态
                end
                if param1==1 and status == Player.status.Playing then
                    Player:pause()
                    if setNotificationStatus then setNotificationStatus(1) end -- 设置通知栏播放状态
                end
            end
        end
    elseif msg == MSG_WIDGETS then --Widget消息
        Log:write('isWidgetPassiveStartCommon======================MSG_WIDGETS==================')
        dofunction(5, "", "", 0, 0)
        Util:checkWidgetFile()
    elseif msg == MSG_NOTIFICATION then --通知消息
        Log:write('isWidgetPassiveStartCommon======================MSG_NOTIFICATION=============')
        dofunction(5, "", "", 0, 0)
        Util:checkNotificationFile()
    elseif msg == MSG_APPOINTMENT then
        Log:write('isAppointEvent======================MSG_APPOINTMENT=============')
        dofunction(5, "", "", 0, 0)
        local rtn1, rtn2 = Util:checkAppointmentFile()
		Log:write('==================MSG_APPOINTMENT',rtn1,rtn2)
        if not rtn1 and rtn2 == 'nil' then
            Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,3)) --('获取本地预约数据异常')
        end
    elseif msg == MSG_HTTPPIPE then
        local param1 = Param:getInteger(param, 0)
        local param2 = Param:getInteger(param, 1)
        local count = Param:getCount(param)
        if param1 == PMSG_DOWNLOAD_FINISHED then
            local cname = Scene:getNameByHandle(Sprite:getCurScene())
            if string.match(cname, 'playerlocal%.') then
                local reg = Reg:create(Reg.com_wondertek_mobileaudio.download)
                Reg:setString(reg, 'downloadState', 1)
            end
            local index, isSysList = Download:getIndexById(param2)
            if isSysList then return end
            local task = Download:getStatus(index , isSysList)
            if index and task then
                local task = Download:getStatus(index)
                local destfile = string.gsub(task.localfile, 'temp_', '')
                if not IO:fileRename(task.localfile, destfile) then
                    IO:fileRemove(task.localfile)
                end
                Download:delete(index)
                Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,4)) --('缓存完成')
            end
        elseif param1 == PMSG_DOWNLOAD_FAILED then
            local index, isSysList = Download:getIndexById(param2)
            if isSysList then return end
            local task = Download:getStatus(index)
            if task then
                Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,5)) --('缓存任务失败,请在缓存列表中查看任务状态')
            end
        elseif param1 == 4096 then
            local paramID = param2
            Log:write('PMSG_DOWNLOAD_302RETURN id=', param2)
            local count = Download:getCount()
            local params,taskindex = "",0
            for i = count, 1, -1 do
                local task = Download:getStatus(i)
                if task.id == paramID then
                    params = task.params
                    taskindex = i
                end
            end
            if params ~= "" and taskindex ~= 0 then
                local url = Util:getServer() .. "msp/playVideo.msp?".. params .. "&ifDownload=1"
                Http:request('Download302Retry' .. taskindex, url, Msg.downloadretry + taskindex, {useCache=0})
            end
        end
    elseif msg == MSG_STRINGEVENT then
        dofunction(5, "", "", 0, 0)
        local paramEventID = Param:getInteger(param, 0)
        Log:write('common MSG_STRINGEVENT1', paramEventID)
        if paramEventID == 2 or paramEventID == 3 then -- 下载状态栏点击消息
            local str = Param:getString(param, 1)
            Log:write('str', str)
            if str ~= 'download' then
                local strTable = Util:split(str, '|')
                local playName = strTable[1]
                local playPath = strTable[2]
                Util:goPlayerLocalByPlayparam(playPath,playName)
            else
                Scene:go(Alias.download)
            end
        elseif paramEventID == 6 then -- 本地视频启用客户端播放点击消息
            local str = Param:getString(param, 1)
            if str ~= '' then
                local strTable = Util:split(str, '|')
                if #strTable == 2 and strTable[1] == 'videopath' then
                    local lreg = Reg:create(Reg.com_wondertek_mobileaudio.playerlocal)
                    local _, _, playName = string.find(strTable[2], '.+[/\\]([^/^\\].+)')
                    local playPath = string.gsub(strTable[2],'file://','')
                    Reg:setString(lreg,'forceRefresh','1')
                    Util:goPlayerLocalByPlayparam(playPath,playName)
                end
            end
        elseif paramEventID == 10 then  -- 分享链接点击消息
            local str = Param:getString(param, 1)
            Log:write('strstrstr',str)
            local str2 = string.gsub(str,"&",";") .. ';'
            Log:write('strstrstr2',str2)
            Util:goDetail(str2)
        elseif paramEventID == 0x8005 then --token失效
            --[[
                0x8001,//校验时，参数TOKEN或clientid为空
                0x8002,//token不存在
                0x8003,//token不一致
                0x8004,//token有效
                0x8005,//token失效
            --]]
            if System:getMachineInfo(5) ~= '' then
                Log:write('有SIM卡')
                local localToken = Net:getToken()
                Log:write('localToken', localToken)
                Log:write('Param:getString(param, 1)', Param:getString(param, 1))
                if localToken == '' or Param:getString(param, 1) == Util:md5(localToken .. System:getUserAgent() .. '_mobilevideo_sup3.4') then
                    Log:write('本地token失效')
                    Net:queryToken()
                end
            end
        end
    elseif msg == MSG_AIRPLANE then
        local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
        Reg:setInteger(regI, 'isOfflineView', 1)
        local param1 = Param:getInteger(param, 0)
        Log:write('MSG_AIRPLANE ========================= param1', param1)
        if param1 == 1 then
            --dialogContent,dialogTitle = Util:getTipsMsg(usrMsgFileName.localDialogMsg,1) --or '飞行模式无法建立连接，是否进入本地媒体库？','提示'
            --Dialog:show(dialogTitle, dialogContent, 'ok_cancel', '_gotoLocal', 'UI_exit')
        end
    elseif msg == 999 then
        Log:write('msg ===================================================== 999')
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local destSceneName = Reg:getString(reg, 'destSceneName')
        local setReturn = Reg:getInteger(reg, 'setReturn')
        local setNext = Reg:getInteger(reg, 'setNext')
        Log:write('setNext1', setNext)
        Log:write('setReturn1', setReturn)
        if setNext == 1 then
            local returnFileName = Reg:getString(reg, 'returnFileName')
            if setReturn == 1 then
                Log:write(' in !!!!!!!!!!!!!!!!!!!!!!!!')
                Scene:setReturn(returnFileName, destSceneName)
            else
                Scene:setReturn(returnFileName, destSceneName, true)
            end
        end
    elseif msg == 1000 then
        Log:write('msg ===================================================== 1000')
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local refreshScene = Reg:getInteger(reg, 'refreshScene')
        Scene:freeByHandle(refreshScene)
    elseif msg == 1001 then
        Log:write('msg ===================================================== 1001')
    end
end

--4.1修改过的函数 在common中需要重写
function Util:onPluginEvent(msg, param)
	Log:write('onPluginEvent=========',msg)
    local sceneName = 'scene:' .. Scene:getNameByHandle() .. ' | '
    if msg == Msg.scene then
        if not Loading:isShow() then return end
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local msgCounter = Reg:getInteger(reg, 'msgCounter')
        local paramMsgCounter = Param:getInteger(param, 0)
        if 6 == Param:getType(param, 0) and paramMsgCounter == msgCounter then
            if Loading:isShow() or Sprite:getCurScene() == rootSprite then
                Loading:close()
                local destSceneName = Reg:getString(reg, 'destSceneName')
                local setReturn = Reg:getInteger(reg, 'setReturn')
                local setNext = Reg:getInteger(reg, 'setNext')
                local freeCurScene = Reg:getInteger(reg, 'freeCurScene')
                local freeDestScene = Reg:getInteger(reg, 'freeDestScene')
                if freeCurScene == 1 then
                    local returnFileName = Reg:getString(reg, 'returnFileName')
                    Scene:freeByName(returnFileName)
                end
                local effect = Reg:getInteger(reg, 'effect')
                local effectTable = Reg:getTable(reg, 'effectTable')
                Reg:setInteger(reg, 'effect', 0)
                Reg:setTable(reg, 'effectTable', {})
                local rtn, code = Scene:_go(destSceneName, freeDestScene == 1 and true or false, effect == 0 and nil or effect, Util:getServer(), Sprite:getCurScene(), nil, effectTable)

                local sceneModifiedData = Reg:getTable(reg, 'sceneModifiedData')
                local md5sceneName = Util:md5(destSceneName)
                if sceneModifiedData[md5sceneName] then
                    local regSceneModified = Reg:create("sceneModified")
                    local localModifiedTime = Reg:getString(regSceneModified,md5sceneName)
                    localModifiedTime = localModifiedTime == "" and 0 or localModifiedTime
                    if tonumber(localModifiedTime) < tonumber(sceneModifiedData[md5sceneName]) then
                        Reg:setString(regSceneModified,md5sceneName,sceneModifiedData[md5sceneName])
                        Reg:save(regSceneModified, "WONDER:\\temp\\sceneModified.xml")
                        Log:write(md5sceneName .. ' has saved to file sceneModified.xml')
                    end
                end
                if rtn then
                    if setNext == 1 then
                        local returnFileName = Reg:getString(reg, 'returnFileName')
                        if setReturn == 1 then
                            Scene:setReturn(returnFileName, destSceneName)
                        else
                            Scene:setReturn(returnFileName, destSceneName, true)
                        end
                    end
                else
                    if code == 0 then
                    elseif code == 2 then
                        Loading:show()
                    end
                end
            end
        end
    elseif msg == Msg.sceneCache then
        Log:write('Msg.sceneCache')
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local msgCounter = Reg:getInteger(reg, 'msgCounter')
        local paramMsgCounter = Param:getInteger(param, 0)
        if 6 == Param:getType(param, 0) and paramMsgCounter == msgCounter then
            local destSceneName = Reg:getString(reg, 'destSceneName')
            local sceneModifiedData = Reg:getTable(reg, 'sceneModifiedData')
            local md5sceneName = Util:md5(destSceneName)
            if sceneModifiedData[md5sceneName] then
                local regSceneModified = Reg:create("sceneModified")
                local localModifiedTime = Reg:getString(regSceneModified,md5sceneName)
                localModifiedTime = localModifiedTime == "" and 0 or localModifiedTime
                if tonumber(localModifiedTime) < tonumber(sceneModifiedData[md5sceneName]) then
                    Reg:setString(regSceneModified,md5sceneName,sceneModifiedData[md5sceneName])
                    Reg:save(regSceneModified, "WONDER:\\temp\\sceneModified.xml")
                    Log:write(md5sceneName .. ' has saved to file sceneModified.xml')
                end
            end
        end
    elseif msg == Msg.scene + MSG_CACHEDATA_RELOAD then
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local destSceneName = Reg:getString(reg, 'destSceneName')
        local curSceneName = Scene:getNameByHandle(Sprite:getCurScene())
        local msgCounter = Reg:getInteger(reg, 'msgCounter')
        local paramMsgCounter = Param:getInteger(param, 0)
        if destSceneName == curSceneName and msgCounter == paramMsgCounter then
            if 1 == Reg:getInteger(reg, curSceneName) then
                Util:setRefreshStatus(2, reg, curSceneName)
            elseif 0 == Reg:getInteger(reg, curSceneName) then
                --Scene:refresh()
                Sprite:sendEvent(Sprite:getCurScene(),Msg.refresh)
            end
        end
    elseif msg == Msg.backScene then
        local lastPageName = Scene:getLastPage()
        if lastPageName and Loading:isShow() then
            Loading:close()
            local reg = Reg:create(Reg.g_pagestack)
            local index = Reg:getInteger(reg, 'curPageStackIndex')
            local curPageName = Reg:getString(reg, Reg.g_pagestack .. index)
            if curPageName == Scene:getNameByHandle(Sprite:getCurScene()) then
                Reg:setInteger(reg, 'curPageStackIndex', index - 1)
            end
            local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
            local freeDestScene = Reg:getInteger(reg, 'freeDestScene')
            local rtn, code
            local effect = Reg:getInteger(reg, 'effect')
            local effectTable = Reg:getTable(reg, 'effectTable')
            Reg:setInteger(reg, 'effect', 0)
            Reg:setTable(reg, 'effectTable', {})
            if freeDestScene == 1 then
                rtn, code = Scene:_go(lastPageName, bFreeDestScene, effect == 0 and nil or effect, Util:getServer(), Sprite:getCurScene(), 1001, effectTable)
            else
                rtn, code = Scene:_go(lastPageName, nil, effect == 0 and nil or effect, Util:getServer(), Sprite:getCurScene(), 1001, effectTable)
            end
            Loading:close()
            if not rtn then
                if code == 2 then
                    Loading:show()
                end
            end
        end
    elseif msg == Msg.refresh then
        if Loading:isShow() then
            local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
            local destSceneName = Reg:getString(reg, 'path')
            local curSceneName = Scene:getNameByHandle(Sprite:getCurScene())
            Scene:refresh()
        end
    elseif msg > Msg.downloadretry and msg < MSG_NETWORK_ERROR then
        local taskIndex = msg - Msg.downloadretry
        local downloadData = Http:jsonDecode('Download302Retry' .. taskIndex)
        Log:write('downloadData', downloadData)
        local task = Download:getStatus(taskIndex)
        Log:write('task2update', task)
        local updateTaskId = task.id
        if downloadData and downloadData.code == '1014' then
            if Net:hiddenlogin() == 0 then
                Download:updateUrl(updateTaskId,"")
            end
        elseif downloadData and downloadData.success == 'true' and downloadData.urls and downloadData.urls[0] and updateTaskId then
            Download:updateUrl(updateTaskId,downloadData.urls[0].url)
        else
            Download:updateUrl(updateTaskId,"")
        end
    elseif msg == MSG_NETWORK_ERROR then
        Log:write('MSG_NETWORK_ERROR')
        Loading:close()
    elseif msg > MSG_NETWORK_ERROR then
        Log:write('> MSG_NETWORK_ERROR')
        Loading:close()
        local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local isOfflineView = Reg:getInteger(regI, 'isOfflineView')
        if Util:GetVideoMsg() and Scene:getNameByHandle() == Alias.playerlocal and Reg:getInteger(regI, 'indexHaveLogin') == 0 then
        else
            if isOfflineView == 1 then
                Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,2)) --('网络不给力T_T..请您切换网络或稍后再试')
            else
                Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,6)) --('网络超时')
            end
        end
        errorDispose(62,'network is timeout')
    elseif msg == Msg.getJsonPlayer then
        Loading:close()
        local playerData = Http:jsonDecode('playerData')
        Log:write('Msg.getJsonPlayer,playerData=',playerData)
        if playerData and playerData.code == '1014' then
            Net:goToMyAccount()
        elseif playerData and playerData.orderList then
            OrderNode:show(playerData)
        elseif playerData and playerData.errordesc then
            Tips:show(playerData.errordesc)
        elseif playerData and 'table' == type(playerData) then
            --判断是否音频正在播放，如在播放则停止
            if getAudioPlayFlag then
                if getAudioPlayFlag() ~= 0 then
                    Log:write(' commonlocal ,Msg.getJsonPlayer ----------- 00')
                    --保存历史记录
                    uploadMyHistory()

                    --停止定时器，防止视频停止后音频点播自动播放下一集，取悦听场景句柄
                    if getAudioScene then
                        local curAudioScene = getAudioScene()
                        Log:write('Msg.getJsonPlayer CurScene =',curAudioScene )
                        Sprite:sendEvent(curAudioScene, Msg.stopAudioTimer)
                    end
                    pluginInvoke(Player:_getHandle(),'Stop')
                    pluginInvoke(Player:_getHandle(),'Show',0)
                    resetAudioPlayFlag()
                end
            end

            --社区跳转
            if playerData.isAudio ~= "true" then
                if playerData.objType == 'community' then
                    local curSceneSprite = Sprite:getCurScene()
                    -- 不让场景自己跳自己
                    if Alias.communityDetail == Scene:getNameByHandle(curSceneSprite) then
                        Log:write('Msg.getJsonPlayer 1111')
                        Sprite:sendEvent(curSceneSprite,Msg.communityPlayer)
                    else --别的场景(非player页，如历史记录)跳社区详情播放,player页切码率时还是在player页
                        if not string.match(Scene:getNameByHandle(curSceneSprite), 'player%.') then
                            local blogId = Reg:getString(Reg:create(Reg.com_wondertek_mobileaudio.community), 'blogId')
                            Log:write('Msg.getJsonPlayer 2222 blogId=',blogId)
                            Reg:setString(Reg:create(Reg.com_wondertek_mobileaudio.community), 'curDetailId', blogId)
                            Loading:show()
                            Scene:go(Alias.communityDetail, {freeDestScene=true})
                        else -- player页码率切换
                            Scene:go(Alias.player, {useCache = 1, setNext = false, freeDestScene = true})
							 -- Scene:go('MODULE:\\com_wondertek_mobileaudio\\audioplay.wdml', {useCache = 1, setNext = false, freeDestScene = true})							
                        end
                    end
                    return
                end
                -- 播放页跳转
                -- Scene:go(Alias.player, {useCache = 1, setNext = false, freeDestScene = true})
            else
                -- Scene:go(Alias.playeryue, {useCache = 1, setNext = false, freeDestScene = true})--在订购之后跳转到播放页
				Scene:go('MODULE:\\com_wondertek_mobileaudio\\audioplay.wdml', {useCache = 1, setNext = false, freeDestScene = true})		
            end
        else
            Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,7)) --('无法获取数据，请稍后再试')
        end
    elseif msg == Msg.localplayer then
        Loading:close()
        Scene:_go(Alias.playerlocal)
    elseif msg == Msg.order then
	    Log:write('=========order=============1')
        Loading:close()
        local orderData = Http:jsonDecode('order')
        if 'table' == type(orderData) then
		Log:write('=========order=============3',type(orderData),orderData.success,productType)
            if 'true' == orderData.success then
                setOrderDataUpdate()
                if productType == 'dabaoyue' then
                    Http:request('order_havemonthly', Util:getServer() .. Alias.havemonthly .. '?' .. linkParam, Msg.monthly, {useCache = 0})
                else
                    Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,8)) --('恭喜您，订购已成功')
                    orderDoneAction()
                end
            elseif 'false' == orderData.success then
                Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,9)) --('订购失败，请您稍后再试')
            end
        else
            dialogContent,dialogTitle = Util:getTipsMsg(usrMsgFileName.localDialogMsg,2) --'返回数据格式错误,提示'
            Dialog:show(dialogTitle, dialogContent, 'ok')
        end
    elseif msg == Msg.monthly then
        Loading:close()
		Log:write('=========order=============2')
        local havemonthlyData = Http:xmlDecode('order_havemonthly')
        local dialogDesc = ''
        if 'havemonthly' == havemonthlyData.result then
            dialogContent,dialogTitle = Util:getTipsMsg(usrMsgFileName.localDialogMsg,3) --('您预约订购优惠套餐成功,下月开始计费,系统届时自动为您退订已订购的所有垂直栏目6元包月业务')
            Dialog:show(dialogTitle, dialogContent, 'ok')
        else
            Tips:show('恭喜您，订购已成功')
            orderDoneAction()
        end
    elseif msg == Msg.newToken then
        local jsonToken = Http:jsonDecode('_getNewToken')
        Log:write('jsonToken', jsonToken)
        if type(jsonToken) == 'table' then
            if jsonToken.code == '0' then
                local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
                Reg:setInteger(regI, 'sendGetToken', 1)
                os.remove(Config:get('newTokenPath'))
                Net:saveToken(jsonToken.encryptToken)
                Net:sendSMStoGetToken()
            else
                -- Tips:show('获取用户令牌失败' .. jsonToken.code)
            end
        else
            -- Tips:show('获取用户令牌失败')
        end
    elseif msg == Msg.newToken + MSG_NETWORK_ERROR then
        Log:write('Msg.newToken + MSG_NETWORK_ERROR')
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local sendSMSTimes = Reg:getInteger(regI, 'sendSMSTimes')
        if sendSMSTimes < 3 then
            Reg:setInteger(regI, 'sendSMSTimes', sendSMSTimes + 1)
            Http:request('_getNewToken', Util:getServer() .. '/msp/clientToken.msp?clientImsi=' .. System:getMachineInfo(5), Msg.newToken, {useCache = 0})
        else
            Reg:setInteger(regI, 'sendSMSTimes', 0)
        end
    elseif msg == Msg.errorReport then
        local errRepData = Http:jsonDecode('errorReport_Upload')
        Log:write( '---kevin---  msg == Msg.errorReport errRepData = ' ,errRepData)
        if errRepData then
            if errRepData.success == 'true' then
                local errReportImmediate = 1
                local uploadImmediately = Config:get('uploadImmediately')
                Log:write('--kevin---uploadImmediately = ' ,uploadImmediately)
                if uploadImmediately and uploadImmediately ~= '' then
                    errReportImmediate = tonumber(uploadImmediately)
                end
                if errReportImmediate == 0 then
                    Log:write('---kevin--- 本地上传成功返回')
                    IO:fileRemove('WONDER:\\temp\\errorReport.err')
                else
                    Log:write('---kevin--- 立即上传成功返回')
                end

            end
        else
            Log:write('---kevin--- error Data is nil ')
            errorDispose(22,sceneName .. 'errorReport upload return data error ')
        end
    elseif msg == Msg.login then
        Loading:close()
        local loginResult = Http:jsonDecode('loginResult')
        Log:write('loginResult', loginResult)
        if type(loginResult) == 'table' then
            if loginResult.success == 'true' and loginResult.code == '011' then
                if Config:get('autoLogin') == '1' then --自动登录
                    Config:set('filterType', 0)
                end
                local reg = Reg:create(Reg.com_wondertek_mobileaudio.myaccount)
                if Config:get('remeberPwd') == '1' then --记住密码
                    local userName = Reg:getString(reg, 'userName')
                    local password = Reg:getString(reg, 'password')
                    Log:write('userName', userName)
                    Log:write('password', password)
                    Config:set('userName', userName)
                    Config:set('password', password)
                end
                local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
                Reg:setString(regI, 'phoneNumber', loginResult.phoneNumber)
                Reg:setInteger(regI, 'accountLogin', 1) --已显式登录标志位
                if string.match(Scene:getNameByHandle(), Alias.myaccount) then --登录/登出页
                    if Reg:getInteger(reg, 'fromCommon') == 1 then --用户点击关键业务进入的我的账号
                        Reg:setInteger(reg, 'fromCommon', 0)
                        Scene:back()
                        return
                    end
                    UIChange(true, loginResult.phoneNumber)
                end
                Net:setMsgParam({phoneNumber = loginResult.phoneNumber})
                if string.match(Scene:getNameByHandle(), Alias.myaccount) then
                    Tips:show(loginResult.desc)
                end
                Sprite:sendEvent(Sprite:getCurScene(),Msg.login)
            else
                if string.match(Scene:getNameByHandle(), Alias.myaccount) then
                    Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,10)) --('用户名或密码错误')
                end
            end
        else
            if string.match(Scene:getNameByHandle(), Alias.myaccount) then
                dialogContent,dialogTitle = Util:getTipsMsg(usrMsgFileName.localDialogMsg,2) --or '返回数据格式错误','提示'
                Dialog:show(dialogTitle, dialogContent, 'ok')
            end
        end
    elseif msg == Msg.hiddenlogin then
        Loading:close()
        local loginResult = Http:jsonDecode('loginResult')
        Log:write('loginResult', loginResult)
        if type(loginResult) == 'table' then
            if loginResult.success == 'true' and loginResult.code == '011' then
                if Config:get('autoLogin') == '1' then --自动登录
                    Config:set('filterType', 0)
                end
                local reg = Reg:create(Reg.com_wondertek_mobileaudio.myaccount)
                if Config:get('remeberPwd') == '1' then --记住密码
                    local userName = Reg:getString(reg, 'userName')
                    local password = Reg:getString(reg, 'password')
                    Log:write('userName', userName)
                    Log:write('password', password)
                    Config:set('userName', userName)
                    Config:set('password', password)
                end
                local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
                Reg:setString(regI, 'phoneNumber', loginResult.phoneNumber)
                Reg:setInteger(regI, 'accountLogin', 1) --已显式登录标志位
                Net:setMsgParam({phoneNumber = loginResult.phoneNumber})

                local count = Download:getCount()
                for i = count, 1, -1 do
                    local task = Download:getStatus(i)
                    if task.status == Download.status.Failed or task.status == Download.status.Redirecting then
                        local url = Util:getServer() .. "msp/playVideo.msp?".. task.params .. "&ifDownload=1"
                        Http:request('Download302Retry' .. i, url, Msg.downloadretry + i, {useCache=0})
                    end
                end
            end
        end
    elseif msg == Msg.longConnect then  --长连接
        Net:longConnect()
    elseif msg == Msg.sdcfg then  --sd卡路径配置
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local sceneModifiedData = Reg:getTable(reg, 'sceneModifiedData')
        local md5sceneName = Util:md5(Alias.sdcfg)
        local regSceneModified = Reg:create("sceneModified")
        local localModifiedTime = Reg:getString(regSceneModified, md5sceneName)
        localModifiedTime = localModifiedTime == "" and 0 or localModifiedTime
        if tonumber(localModifiedTime) < tonumber(sceneModifiedData[md5sceneName]) then
            Reg:setString(regSceneModified,md5sceneName,sceneModifiedData[md5sceneName])
            Reg:save(regSceneModified, "WONDER:\\temp\\sceneModified.xml")
            Log:write(md5sceneName .. ' has saved to file sceneModified.xml')
        end
        local sdcfg = Http:xmlDecode('_sdcfg')
        Log:write('sdcfg', sdcfg)
        if type(sdcfg) == 'table' then --有配置信息
            Net:changeSdcfg(sdcfg)
        end
    end
end

function Util:mainNodeOnKeyUp(sprite, kc)
    if kc == Key.F2 then
        if commonF2KeyUp and commonF2KeyUp() then return end
        dialogContent,dialogTitle = Util:getTipsMsg(usrMsgFileName.localDialogMsg,4) --or '确定要退出手机视频？','提示'
        Dialog:show(dialogTitle, dialogContent, 'ok_cancel', 'UI_exit')
    end
end

function is2CreateShortcut()
    Log:write('Dialog:isChecked()', Dialog:isChecked())
    bCreateShortcut = Dialog:isChecked()
end

function orderDoneAction()
    if Dialog:isShow() then
        Dialog:close()
    end
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.player)
    local contparam = Reg:getString(reg, 'contparam')
    Log:write('contparam========1',contparam)
    Util:goPlay(contparam)
end

function Util:goPlay(contparam, param)
    local _,_,contentId = string.find(contparam, 'contentId=(%d+);')
    if contentId == nil then contentId = "null" end
    local _,_,nodeId = string.find(contparam, 'nodeId=(%d+);')
    local _,_,objType = string.find(contparam, 'objType=([%a%d]+);')
    if not objType then
        Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,11)) --('该内容已下线')
        return
    end
    if not nodeId and objType ~= 'community' then
        Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,11)) --('该内容已下线')
        return
    end
    nodeId = nodeId or ''
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.player)
    if param and param.breakPoint then Reg:setInteger(reg, 'breakPoint', param.breakPoint) else Reg:setInteger(reg, 'breakPoint', 0) end
    Reg:setString(reg, 'contparam', contparam)
    if param and param.multiDownload then Reg:setString(reg, 'multiDownload', param.multiDownload) else Reg:setString(reg, 'multiDownload', 'false') end
    if param and param.isAudio and param.isAudio == "true" then Reg:setString(reg, 'isAudio', param.isAudio) else Reg:setString(reg, 'isAudio', 'false') end
    if param and not param.withoutLoading then Loading:show() end
    initCodeRateRule(Util:getNetworkType())  --初始化码率适配规则
    local codeRate = Config:get('rate') --默认读取码率设置，home页里根据网络状况设置初始值,2G流畅，3G和wlan默认是高清
    if param and param.codeRate then codeRate = param.codeRate end --手动码率切换时从参数读取coderate
    local url = Util:getServer() .. Alias.playerData .. '?contentId=' .. contentId .. '&nodeId=' .. nodeId .. '&objType=' .. objType .. '&rate=' .. codeRate
    url = string.find(contparam, 'live=true') and url .. '&live=true' or url
    Loading:show()
    Http:request('playerData', url, Msg.getJsonPlayer, {useCache = 0})
end

--获取网络类型, 设置网络类型标志0-2G,1-3G,2-WLAN,3-4G
function Util:getNetworkType()
    local netData = '2G'
    if Http:getCurConnect() == 'WLAN' then
        netData = 'WLAN'
    else
        local xG = Http:getTelephonyxG()
        netData = xG and xG or '2G'
    end
    return netData
end
--初始化码率适配规则 ,
--码率设置 1.流畅 2.标清 3.高清 4.超清,参考player页码率适配规则
function initCodeRateRule(netData)
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
    if netData == '3G' then
        Reg:setInteger(reg,'commonNetworkFlag',1)
        Config:set('rate',3)
    elseif netData == 'WLAN' then
        Reg:setInteger(reg,'commonNetworkFlag',2)
        Config:set('rate',3)
    elseif netData == '4G' then
        Reg:setInteger(reg,'commonNetworkFlag',3)
        Config:set('rate',4)
    else
        Reg:setInteger(reg,'commonNetworkFlag',0)
        Config:set('rate',1)
    end
end


function Util:checkWidgetFile()
    -- 判断是否存在Widget文件，如存在则分析其中数据
    --[[ Widget文件格式，有且仅有一条
        objType=content;contentId=500941082;nodeId=79044;
    --]]
    local widgetFilePath = Util:getDefaultFolder(WDFIDL_MMS) .. 'widgetsnotify.txt'
    if IO:fileExist(widgetFilePath) then
        local widgetTable = IO:fileReadToTable(widgetFilePath)
        local count = #widgetTable
        if count == 1 then
            if widgetTable[1] == 'widgetSearch' then -- widget上的搜索按钮
                Scene:go(Alias.search)
                return true
            elseif widgetTable[1] == 'widgetWait' then -- widget请求数据中
                return false, 'widgetWait'
            end
            return Util:goDetail(widgetTable[1]), 'goDetail'
        end
    end
    return false
end

function Util:checkNotificationFile()
	Log:write('checkNotificationFile=====')

    -- 判断是否存在Notification文件，如存在则分析其中数据
    --[[notify文件格式，有多条
    {
        "contents":[
            {
                "nodeId":"53422",
                "contentId":"10017500",
                "name":"试播测试",
                "publishTime":"20120515174442"
            },
            {
                "nodeId":"10016621",
                "contentId":"10015168",
                "name":"ASLANdx01_试播",
                "publishTime":"20120515174442"
            },
            {
                "nodeId":"10030013",
                "contentId":"10015167",
                "name":"内容集试播03",
                "publishTime":"20120515114523"
            },
            {
                "nodeId":"10030013",
                "contentId":"10009427",
                "name":"内容集试播02",
                "publishTime":"20120515102646"
            },
        ],
    }
    --]]
    local notifyFilePath = Util:getDefaultFolder(WDFIDL_MMS) .. 'notificationInfo.txt'
    if IO:fileExist(notifyFilePath) then
        local notifyTable = Json:loadFile2Table(notifyFilePath)
        Log:write("notifyTable", notifyTable)
        if notifyTable and 'table' == type(notifyTable) and notifyTable.contents and notifyTable.contents[0] then
            if Scene:getNameByHandle() == Alias.index then
                if #notifyTable.contents == 0 then
                    local param = notifyTable.contents[0].param
                    local isAudio = notifyTable.contents[0].isAudio
                    local _,_,objType = string.find(param, 'objType=([%a%d]+);')
                    if isAudio == 'true' and objType =='live' then  --音频直播跳转
                        if setAudioParam then setAudioParam(param) end
                        Scene:go(Alias.playeryue,{setReturn = false})
                    else
                        if objType == 'live' then
                            param = param .. "live=true;"
                        end
                        --单条通知点击时直接播放，不返回
                        local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
                        Reg:setString(regI,'setReturn','false')
                        Util:goPlay(param)
                    end
                else
                    Scene:go(Alias.message, {setReturn = false})
                end
            else
                if #notifyTable.contents == 0 then
                    local param = notifyTable.contents[0].param
                    local isAudio = notifyTable.contents[0].isAudio
                    local _,_,objType = string.find(param, 'objType=([%a%d]+);')
                    if isAudio == 'true' and objType =='live' then  --音频直播跳转
                        if setAudioParam then setAudioParam(param) end
                        Scene:go(Alias.playeryue,{setReturn = false})
                    else
                        if objType == 'live' then
                            param = param .. "live=true;"
                        end
                        --单条通知点击时直接播放，不返回
                        local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
                        Reg:setString(regI,'setReturn','false')
                        Util:goPlay(param)
                    end
                else
                    Scene:go(Alias.message)
                end
            end
            return true
        end
    end
    return false
end

function Util:checkAppointmentFile()
    -- 判断是否存在Appoint文件，如存在则分析其中数据
    --[[ 文件格式，有且仅有一条
        objType=live;contentId=;nodeId=79044;
    --]]
	Log:write('checkAppointmentFile==============')
    local appointmentFilePath = Util:getDefaultFolder(WDFIDL_MMS) .. 'msgpush.txt'
    if IO:fileExist(appointmentFilePath) then
        local appointmentTable = IO:fileReadToTable(appointmentFilePath)
        local count = #appointmentTable
        if count == 1 then
            return Util:goDetail(appointmentTable[1])
        end
    end
    return false, 'nil'
end

function Util:goDetail(param, liveTab)
    Log:write('param==', param)
	Log:write('goDetail==============')
    local _,_,contentId = string.find(param, 'contentId=(%d+);')
    local _,_,nodeId = string.find(param, 'nodeId=(%d+);')
    local _,_,liveId = string.find(param, 'liveId=(%d+);')
    local _,_,objType = string.find(param, 'objType=([%a%d]+);')
	local _,_,parentId = string.find(param,'parentId=(%d+);')
    local vplus = string.find(param,'vplus;')
	Log:write('goDetail==============',contentId,nodeId,objType,parentId)
    if not objType then
        Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,11)) --('该内容已下线')
        return false
    elseif '4' == objType then
        Loading:show()
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.detail_v)
        Reg:setString(reg, 'param', param)
        if Scene:getNameByHandle() == Alias.index then
            Scene:go(Alias.detail_v, {freeDestScene = true, setReturn = false})
        else
            Scene:go(Alias.detail_v, {freeDestScene = true})
        end
        return true
    elseif '0' == objType or '1' == objType then
        if not nodeId then
            Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,11)) --('该内容已下线')
            return false
        end
        Loading:show()
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.detail)
        Reg:setString(reg, 'param', param)
        if Scene:getNameByHandle() == Alias.index then
            Scene:go(Alias.detail, {freeDestScene = true, setReturn = false})
        else
            Scene:go(Alias.detail, {freeDestScene = true})
        end
        return true
    elseif 'content' == objType or '2' == objType or '3' == objType then
        Loading:show()
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.detail_h)
        Reg:setString(reg, 'param', param)
        if Scene:getNameByHandle() == Alias.index then
            Scene:go(Alias.detail_h, {freeDestScene = true, setReturn = false})
        else
            Scene:go(Alias.detail_h, {freeDestScene = true})
        end
        return true
    elseif 'live' == objType or '5' == objType then -- 直播列表livelist页
        if not (liveId or nodeId) then
            Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,11)) --('该内容已下线')
            return false
        end
        param = string.gsub(param, 'liveId', 'nodeId')
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.livelist)
        Reg:setString(reg, 'param', param)
        if liveTab then
            Reg:setInteger(reg, 'curTab', liveTab)
        else
            Reg:setInteger(reg, 'curTab', 3)
        end
        Loading:show()
        if Scene:getNameByHandle() == Alias.index then
            Scene:go(Alias.livelist, {useCache = 0, freeDestScene = true, setReturn = false})
        else
            Scene:go(Alias.livelist, {useCache = 0, freeDestScene = true})
        end
        return true
    elseif 'community' == objType then -- 社区详情页面
        Reg:setString(Reg:create(Reg.com_wondertek_mobileaudio.community), 'curDetailId', contentId)
        Loading:show()
        if Scene:getNameByHandle() == Alias.index then
            Scene:go(Alias.communityDetail, {freeDestScene = true, setReturn = false})
        else
            Scene:go(Alias.communityDetail, {freeDestScene = true})
        end
        return true
	elseif 'radio' == objType then
		if Scene:getNameByHandle() == Alias.index then
            --Scene:go(Alias.livelist, {useCache = 0, freeDestScene = true, setReturn = false})
			
			Scene:go('MODULE:\\com_wondertek_mobileaudio\\playyue.wdml')
        else
			local newParam
			Log:write('=============mytest newParam0',param)
			local _,_,liveId = string.find(param,'nodeId=(%d+);')
			Log:write('=============mytest newParam1',liveId)
			local _,_,parentId = string.find(param,'parentId=(%d+);')
			Log:write('=============mytest newParam2',parentId)
			newParam = 'liveId='..liveId..';parentId='..parentId..';'
			Log:write('=============mytest newParam',newParam)
			local reg = Reg:create(Reg.com_wondertek_mobileaudio.audiolive)
			Reg:setString(reg,'audioplayData',newParam)
			
			Scene:go('MODULE:\\com_wondertek_mobileaudio\\playyue.wdml',{freeDestScene = true, setReturn = false})
            --Scene:go(Alias.livelist, {useCache = 0, freeDestScene = true})
        end
        return true
    else
        Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,12)) --('无法解析内容类型')
        return false
    end
end

function Util:getDownloadFolder(ttype,bIsAudio)

    local rt = System:getFlashCardName(ttype)
	
    local strFolderName = 'MobileVideoDownload/'
    if bIsAudio then 
	strFolderName = 'tyaudiodownload/'
	end
	Log:write('searchDownloadedFiles======0',strFolderName,ttype,bIsAudio)
    if rt and rt ~= '' then
	    Log:write('searchDownloadedFiles======22',rt,ttype)
        if not IO:dirExist(rt..strFolderName) then
            local testb = IO:dirCreate(rt..strFolderName)
			Log:write('searchDownloadedFiles======33',testb)
        end
		Log:write('searchDownloadedFiles======44',rt..strFolderName)
        return rt..strFolderName
    else
        return rt
    end
end

function Util:getInnerDownloadFolder(strType,bIsAudio)
    local rt = Util:getDefaultFolder(strType)
    local strFolderName = ''
    if bIsAudio then 
	strFolderName = 'tyaudiodownload\\'
	end
    if rt and rt ~= '' then
        if not IO:dirExist(rt..strFolderName) then
            IO:dirCreate(rt..strFolderName)
        end
        return rt..strFolderName
    else
        return rt
    end
end

function Util:getRemainSpace()
    local RemainSpace = 0
    if '1' == Config:get('download_path') then
        local flashCard = System:getFlashCardName(1)
        if flashCard and flashCard ~= '' then
            RemainSpace = GetStorageSize(1, 0)
        else
            local innerCard = System:getFlashCardName(0)
            if innerCard and innerCard ~= "" then
                RemainSpace = GetStorageSize(0, 0)
            else
                RemainSpace = GetStorageSize(2, 0)
            end
        end
    else
        local innerCard = System:getFlashCardName(0)
        if innerCard and innerCard ~= "" then
            RemainSpace = GetStorageSize(0, 0)
        else
            RemainSpace = GetStorageSize(2, 0)
        end
    end
    return RemainSpace
end

function Util:checkDownloadList(videoPath)
    local count = Download:getCount()
    local task = Download:getStatus()
    if task and count then
        for i = 1, count do
            if task[i] and task[i].localfile == videoPath then
                return i
            end
        end
    end
end

function Util:checkDownloadFile(downloadpath,videoName,videoType)
    local path1, path2 = '', downloadpath .. videoName .. videoType
    if videoType == '.3gp' or videoType == '.cmtv' then
        path1 = downloadpath .. 'temp_' .. videoName .. videoType
    else
        path1 = downloadpath .. videoName .. videoType .. '~'
    end
    if IO:fileExist(path1) then
        return path1
    elseif IO:fileExist(path2) then
        return path2
    end
    return false
end

function Util:timeFormat(input)
    if tonumber(input) then
        local sec = tonumber(input)
        if sec<3600 then
            local mm = math.floor(sec / 60) < 10 and '0' .. math.floor(sec / 60) or math.floor(sec / 60)
            local ss = math.mod(sec, 60) < 10 and '0' .. math.mod(sec, 60) or math.mod(sec, 60)
            return mm..':'..ss
        else
            local hh = math.floor(sec / 3600) < 10 and '0' .. math.floor(sec / 3600) or math.floor(sec / 3600)
            local mm = math.floor(math.mod(sec, 3600) / 60) < 10 and '0' .. math.floor(math.mod(sec, 3600) / 60) or math.floor(math.mod(sec, 3600) / 60)
            local ss = math.mod(sec, 60) < 10 and '0' .. math.mod(sec, 60) or math.mod(sec, 60)
            return hh..':'..mm..':'..ss
        end
    elseif input and tonumber(string.gsub(input,":","")) then
        local t = Util:split(input, ':')
        local secTime = 0
        for i=1,#t do
            secTime = secTime + tonumber(t[#t-i+1])*math.pow(60,i-1)
        end
        return secTime
    else
        return '00:00'
    end
end

-- -----------------------------------------------------------------------------
-- | Desc: 场景管理、操作
-- -----------------------------------------------------------------------------

--[[
 ------------------------------------------------------------
 -- @function Scene:go(destSceneName, bSetReturn, effect)
 ------------------------------------------------------------
 -- @brief 场景跳转
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param string destSceneName 要跳转到的场景名
 -- @param table params 场景跳转其他参数
 -- @param int params.useCache: 是否使用cache数据，0 不使用cache数据，1 先使用cache数据同时请求网络数据，当有新数据到达时重新通知刷新数据。2.只使用CACHE，没有CACHE也返回成功，相关的错误由上层处理(默认为1)
 -- @param boolean params.setReturn 是否设置返回（可为空，默认设置）
 -- @param boolean params.setNext 是否设置前进（可为空，默认设置）
 -- @param boolean params.freeCurScene 是否释放当前场景（可为空，默认不释放）
 -- @param boolean params.freeDestScene 是否释放目标场景（可为空，默认不释放）
 -- @param number effect 特效值，可为空
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
Scene._go = Scene.go
function Scene:go(destSceneName, params, effect)
    effect = effect or 4
    local curSceneSprite = Sprite:getCurScene()
    --if destSceneName == Scene:getNameByHandle(curSceneSprite) then return end -- 不让场景自己跳自己
    local destServerName = ''
    if string.match(destSceneName, '^/') then
        destServerName = Util:getServer() .. destSceneName
    else
        destServerName = destSceneName
    end
    if string.match(destServerName, '^http://') then
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local fileName = Util:getCachePath(destServerName .. 0)
        Log:write('curSceneName', Scene:getNameByHandle(curSceneSprite))
        Log:write('destSceneName', destSceneName)
        local msgCounter = Reg:getInteger(reg, 'msgCounter')
        if msgCounter >= 1000 then
            msgCounter = 1
        else
            msgCounter = msgCounter + 1
        end
        local requestParams = {
            fileName = fileName,
            useCache = 1,
            msgCounter = msgCounter,
            method = 'get',
            postData = '',
        }
        local setReturn, setNext, freeCurScene, freeDestScene = 1, 1, 0, 0
        if params and type(params) == 'table' then
            setReturn = params.setReturn == false and 0 or 1
            setNext = params.setNext == false and 0 or 1
            freeCurScene = params.freeCurScene and 1 or 0
            freeDestScene = params.freeDestScene and 1 or 0
            requestParams.useCache = params.useCache
            requestParams.method = params.method
            requestParams.postData = params.postData
        end
        if effect and not string.match(destServerName, 'player%.') then
            Reg:setInteger(reg, 'effect', effect)
        end
        Reg:setInteger(reg, 'setReturn', setReturn)
        Reg:setInteger(reg, 'setNext', setNext)
        Reg:setInteger(reg, 'freeCurScene', freeCurScene)
        Reg:setInteger(reg, 'freeDestScene', freeDestScene)
        Reg:setString(reg, 'destSceneName', destSceneName)
        Reg:setInteger(reg, 'msgCounter', msgCounter)
        Reg:setString(reg, 'returnFileName', Scene:getNameByHandle(curSceneSprite))
        Loading:show()
        local sceneModifiedData = Reg:getTable(reg, 'sceneModifiedData')
        local md5sceneName = Util:md5(destSceneName)
        --[[  有本地先走本地的逻辑  ]]--
        local regSceneModified = Reg:create("sceneModified")
        local localModifiedTime = Reg:getString(regSceneModified,md5sceneName)
        if localModifiedTime == "" then
            local _,_,sceneIdentify = string.find(destSceneName,"([^/.]+)%.jsp")
            local localSceneName = 'MODULE:\\com_wondertek_mobileaudio\\' .. sceneIdentify .. '.wdml'
            if IO:fileExist(localSceneName) then
                Scene:go(localSceneName, params, effect)
                requestParams.useCache = 0
                local reg = Reg:create(Reg.com_wondertek_mobileaudio.home)
                local observer = Reg:getInteger(reg, 'observer')
                if observer and observer ~= 0 then
                    requestParams.observer = observer
                end
                Http:request('scene_getFile', destServerName, Msg.sceneCache, requestParams)
                return
            end
        end
        if sceneModifiedData[md5sceneName] and not string.match(destSceneName, 'home%.') then
            if tonumber(localModifiedTime) == tonumber(sceneModifiedData[md5sceneName]) then
                requestParams.useCache = 2
                Log:write('requestParams.useCache change to 2')
            else
                requestParams.useCache = 0
            end
        elseif string.match(destSceneName, 'home%.') then
            if params and type(params) == 'table' then
                requestParams.useCache = params.useCache or 1
            else
                requestParams.useCache = 1
            end
        end
        Http:request('scene_getFile', destServerName, Msg.scene, requestParams)
    else
        local freeDestScene
        if params and type(params) == 'table' then
            if params.freeCurScene then
                Scene:freeByHandle(curSceneSprite)
            end
            freeDestScene = params.freeDestScene
        end
        local rtn = Scene:_go(destSceneName, freeDestScene, effect)
        if rtn then
            if params and type(params) == 'table' then
                if params.setNext ~= false then
                    if params.setReturn ~= false then
                        Scene:setReturn(Scene:getNameByHandle(curSceneSprite), destSceneName)
                    else
                        Scene:setReturn(Scene:getNameByHandle(curSceneSprite), destSceneName, true)
                    end
                end
            else
                Scene:setReturn(Scene:getNameByHandle(curSceneSprite), destSceneName)
            end
        end
    end
end

-- 重写Scene:exit
Scene._exit = Scene.exit
function Scene:exit()
    local reg = Reg:create(Util:getCurAppId())
    isMonkeyStart = Reg:getInteger(reg, 'isMonkeyStart')
    if isMonkeyStart ~= 1 then
        Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,13),1) --('正在退出...')
        if TurnImagePaper then -- 引擎翻转图片接口
            checkSaleImg() --查看营销页用图是否需要更新
        end
        Scene:_exit()
    end
end

--[[
 ------------------------------------------------------------
 -- @function Scene:back(bFreeDestScene)
 ------------------------------------------------------------
 -- @brief 返回上一场景
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param boolean bFreeDestScene: 是否先释放目标场景
 -- @param number effect 特效值，可为空
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
Scene._back = Scene.back
function Scene:back(bFreeDestScene, effect)
    if string.match(Scene:getNameByHandle(), 'player%.') then
        effect = nil
    else
        effect = effect or 21
    end
    local lastPageName = Scene:getLastPage()
    if lastPageName then
        local lastServerName = ''
        if string.match(lastPageName, '^/') then
            lastServerName = Util:getServer() .. lastPageName
        else
            lastServerName = lastPageName
        end
        if string.match(lastServerName, '^http://') then
            local fileName = Util:getCachePath(lastServerName .. '0')
            if not IO:fileExist(fileName) then
                local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
                Reg:setInteger(reg, 'freeDestScene', bFreeDestScene and 1 or 0)
                Loading:show()
                if effect then
                    Reg:setInteger(reg, 'effect', effect)
                end
                Http:request('index_back', lastServerName, Msg.backScene, {fileName = fileName})
                return
            end
        end
        local reg = Reg:create(Reg.g_pagestack)
        local index = Reg:getInteger(reg, 'curPageStackIndex')
        local curPageName = Reg:getString(reg, Reg.g_pagestack .. index)
        if curPageName == Scene:getNameByHandle(Sprite:getCurScene()) then
            Reg:setInteger(reg, 'curPageStackIndex', index - 1)
        end
        Log:write('Util:getServer ============ ', Util:getServer())
        self:_go(lastPageName, bFreeDestScene, effect, Util:getServer())
    else
        Scene:go(Alias.home, {setReturn = false})
    end
end

--[[
 ------------------------------------------------------------
 -- @function Scene:next(bFreeDestScene)
 ------------------------------------------------------------
 -- @brief 到下一场景
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param boolean bFreeDestScene: 是否先释放目标场景
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Scene:next(bFreeDestScene)
    local nextPageName = Scene:getNextPage()
    if nextPageName then
        local nextServerName = ''
        if string.match(nextPageName, '^/') then
            nextServerName = Util:getServer() .. nextPageName
        else
            nextServerName = nextPageName
        end
        if string.match(nextServerName, '^http://') then
            local fileName = Util:getCachePath(nextServerName .. '0')
            if not IO:fileExist(fileName) then
                local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
                Reg:setInteger(reg, 'freeDestScene', bFreeDestScene and 1 or 0)
                Loading:show()
                Http:request('index_next', nextServerName, Msg.nextScene, {fileName = fileName})
                return
            end
        end
        local reg = Reg:create(Reg.g_pagestack)
        local index = Reg:getInteger(reg, 'curPageStackIndex')
        local curPageName = Reg:getString(reg, Reg.g_pagestack .. index)
        if curPageName == Scene:getNameByHandle(Sprite:getCurScene()) then
            Reg:setInteger(reg, 'curPageStackIndex', index + 1)
        end
        Log:write('Util:getServer ============ ', Util:getServer())
        self:_go(nextPageName, bFreeDestScene, nil, Util:getServer())
    else
    end
end

--[[
 ------------------------------------------------------------
 -- @function Scene:setReturn(curSceneName, destSceneName)
 ------------------------------------------------------------
 -- @brief 页面如需返回，则在跳转前调用，如不需返回，则不调用
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param string curSceneName: 当前场景名, bFreeDestScene
 -- @param string destSceneName: 目标场景名
 ------------------------------------------------------------
 -- @return void
 ------------------------------------------------------------
 --]]
Scene._setReturn = Scene.setReturn
function Scene:setReturn(curSceneName, destSceneName, removePageStack)
    -- 避免A跳A
    if destSceneName ~= curSceneName then
        -- 跳转处理
        local reg = Reg:create(Reg.g_pagestack)
        local count = Reg:getInteger(reg, 'pageStackCount')
        local index = Reg:getInteger(reg, 'curPageStackIndex')
        local lastPageName = Reg:getString(reg, Reg.g_pagestack .. (index - 1))
        -- 避免A跳B，然后B跳A
        if lastPageName ~= destSceneName then
            if not removePageStack then
                index = index + 1
                Reg:setInteger(reg, 'curPageStackIndex', index)
                Reg:setInteger(reg, 'pageStackCount', index)
            end
            -- 将当前页面保存
            Reg:setString(reg, Reg.g_pagestack .. index, destSceneName)
            for i = index + 1, count do
                Reg:remove(reg, Reg.g_pagestack .. i)
            end
        else
            Reg:setInteger(reg, 'curPageStackIndex', index - 1)
        end
    end
end

--[[
 ------------------------------------------------------------
 -- @function Scene:getLastPage()
 ------------------------------------------------------------
 -- @brief 获得上一页面的文件名
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return string
 ------------------------------------------------------------
 --]]
function Scene:getLastPage()
    local reg = Reg:create(Reg.g_pagestack)
    local index = Reg:getInteger(reg, 'curPageStackIndex')
    local curPageName = Reg:getString(reg, Reg.g_pagestack .. index)
    local lastPageName = ''
    if curPageName ~= Scene:getNameByHandle(Sprite:getCurScene()) then
        lastPageName = curPageName
    else
        lastPageName = Reg:getString(reg, Reg.g_pagestack .. (index - 1))
    end
    if lastPageName ~= '' then
        return lastPageName
    end
end

--[[
 ------------------------------------------------------------
 -- @function Scene:getNextPage()
 ------------------------------------------------------------
 -- @brief 获得下一页面的文件名
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return string
 ------------------------------------------------------------
 --]]
function Scene:getNextPage()
    local reg = Reg:create(Reg.g_pagestack)
    local index = Reg:getInteger(reg, 'curPageStackIndex')
    local curPageName = Reg:getString(reg, Reg.g_pagestack .. index)
    local nextPageName = ''
    if curPageName == Scene:getNameByHandle(Sprite:getCurScene()) then
        nextPageName = Reg:getString(reg, Reg.g_pagestack .. (index + 1))
    end
    if nextPageName ~= '' then
        return nextPageName
    end
end

--[[
 ------------------------------------------------------------
 -- @function Scene:clearPageStack()
 ------------------------------------------------------------
 -- @brief 清除返回表
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
Scene._clearPageStack = Scene.clearPageStack
function Scene:clearPageStack()
    local reg = Reg:create(Reg.g_pagestack)
    local count = Reg:getInteger(reg, 'pageStackCount')
    for i=1, count do
        Reg:remove(reg, Reg.g_pagestack..i)
    end
    Reg:setInteger(reg, 'pageStackCount', 0)
    Reg:setInteger(reg, 'curPageStackIndex', 0)
end

--[[
 ------------------------------------------------------------
 -- @function Scene:removeLastPageStack()
 -- @author  kevin 2012-11-02
 ------------------------------------------------------------
 -- @brief 删除后退堆栈的上一个页面
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Scene:removeLastPageStack()
    local reg = Reg:create(Reg.g_pagestack)
    local count = Reg:getInteger(reg, 'pageStackCount')
    local index = Reg:getInteger(reg, 'curPageStackIndex')
    Log:write('---kevin----count=' .. count .. ' , index='..index )
    if count < 1 or index < 1 then
        return
    end
    for i=1,index do
        local name = Reg:getString(reg, Reg.g_pagestack .. i)
        Log:write('page stack name[' .. i ..'] = ' .. name)
    end
    Reg:remove(reg, Reg.g_pagestack .. index)
    Reg:setInteger(reg, 'curPageStackIndex', index -1)
    Reg:setInteger(reg, 'pageStackCount', count -1 )
end

--[[
 ------------------------------------------------------------
 -- @function Scene:refresh()
 ------------------------------------------------------------
 -- @brief 刷新当前页面
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Scene:refresh(path)
    if path then
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local serverPath = ''
        if string.match(path, '^/') then
            serverPath = Util:getServer() .. path
        else
            serverPath = path
        end
        local fileName = Util:getCachePath(serverPath .. 0)
        Log:write('curSceneName', Scene:getNameByHandle(Sprite:getCurScene()))
        Log:write('serverPath', serverPath)
        Log:write('path', path)
        local requestParams = {
            fileName = fileName,
            useCache = 0
        }
        local curScene = Sprite:getCurScene()
        Reg:setString(reg, 'path', path)
        Loading:show()
        Http:request('scene_refresh', serverPath, Msg.refresh, requestParams)
    else
        local curScene = Sprite:getCurScene()
        local destSceneName = self:getNameByHandle(curScene)
        local isNetworkPath = string.match(destSceneName, '^/')
        local destLocalPath = ''
        if string.match(destSceneName, '^/') then
            destLocalPath = Util:getCachePath(Util:getServer() .. destSceneName .. '0')
        elseif string.match(destSceneName, '^http://') then
            destLocalPath = Util:getCachePath(destSceneName .. '0')
        else
            destLocalPath = destSceneName
        end
        destSceneHandle, code = self:create(destLocalPath)
        if not destSceneHandle then
            if code == 0 then
                dialogContent,dialogTitle = Util:getTipsMsg(usrMsgFileName.localDialogMsg,5) --or '页面错误，无法访问，请稍后重试','提示'
                Dialog:show(dialogTitle, dialogContent, 'ok')
                return
            elseif code == 2 then
                local reg = Reg:create(Reg.g_observer)
                Reg:setString(reg, 'destSceneName', destSceneName)
                Reg:setString(reg, 'destLocalPath', destLocalPath)
                local regIndex = Reg:create(Reg.com_wondertek_mobileaudio.index)
                Reg:setInteger(reg, 'observerRoot', Reg:getInteger(regIndex, 'rootSprite'))
                Reg:setInteger(reg, 'msg', 1000)
                Reg:setInteger(regIndex, 'refreshScene', curScene)
                return
            end
        else
            self:freeByHandle(curScene)
        end
        self:add2pool(destSceneName, destSceneHandle)
        SetEffect(4)
        PageChanged()
        Sprite:setCurScene(destSceneHandle)
    end
end

-- -----------------------------------------------------------------------------
-- @class Loading
-- @note  等待提示框
-- -----------------------------------------------------------------------------

Loading = {}

Loading.layout = [[
<?xml version="1.0" encoding="utf-8"?>
<root>
    <header/>
    <body>
        <node rect="235,540,250,100" extendstyle="1110">
            <image rect="0,0,250,100" style="sudoku-auto" sudoku="16,16,16,16" src="file://image/tip.png" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
            <label name="loadingtips" rect="65,0,185,100" extendstyle="0010" text="加载中.." h-align="center" v-align="center" font-size="30" color="#FFFFFF" shadow="true" shadow-color="#8E8C8D" shadow-alpha="150" shadow-offset="0,1"/>
            <node rect="0,0,250,100" extendstyle="1010">
                <image rect="27,18,64,64" style="autosize" src="file://image/loadingbg2.png" extendstyle="0000" />
                <animate rect="27,18,63,63" delay="12" loop="true" extendstyle="0000">
                    <animate-frame start="$(start)" delay="1">
                        <image rect="0,0,63,63" rotate="$(rotate)" style="autosize" src="file://image/loadingframe.png" extendstyle="0000" BuildChildrenFinished="resChoose"><node/></image>
                    </animate-frame>
                    <dataset>
                        <set start="0" rotate="360"/><set start="1" rotate="30"/><set start="2" rotate="60"/>
                        <set start="3" rotate="90"/><set start="4" rotate="120"/><set start="5" rotate="150"/>
                        <set start="6" rotate="180"/><set start="7" rotate="210"/><set start="8" rotate="240"/>
                        <set start="9" rotate="270"/><set start="10" rotate="300"/><set start="11" rotate="330"/>
                    </dataset>
                </animate>
            </node>
         </node>
         <button rect="150,0,720,100" extendstyle="1110" OnMouseDown="_nullButtonOnSelect"/>
         <button rect="0,100,720,1280" extendstyle="1011" OnMouseDown="_nullButtonOnSelect"/>
    </body>
</root>
]]

function Loading:show()
    local curSceneName = Scene:getNameByHandle()
    if string.match(curSceneName, 'index%.wdml') then
        return
    end
    local rootSprite = Sprite:getCurScene()
    local loadingSprite = Sprite:findChild(rootSprite, 'loading')
    Sprite:sendEvent(Sprite:getCurScene(), Msg.loadingShow)
    if loadingSprite ~= 0 then
        setNodeState(loadingSprite,1)
    else
        loadingSprite = Sprite:create('node', Sprite:findChild(rootSprite, 'mainNode'))
        Sprite:setProperty(loadingSprite, 'name', 'loading')
        Sprite:setRect(loadingSprite,0,0,720,1280)
        Sprite:loadFromString(loadingSprite, Loading.layout)
    end
end

function Loading:close()
    local rootSprite = Sprite:getCurScene()
    local loadingSprite = Sprite:findChild(rootSprite, 'loading')
    if loadingSprite ~= 0 then
        setNodeState(loadingSprite,0)
    end
    Sprite:sendEvent(Sprite:getCurScene(), Msg.loadingClose)
end

--[[
 ------------------------------------------------------------
 -- @function Loading:isShow()
 ------------------------------------------------------------
 -- @brief loading框是否显示
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return boolean
 ------------------------------------------------------------
 --]]
function Loading:isShow()
    local rootSprite = Sprite:getCurScene()
    local loadingSprite = Sprite:findChild(rootSprite, 'loading')
    if loadingSprite ~=0 and Sprite:isVisible(loadingSprite) == 1 then
        return true
    end
    return false
end





DownloadDialog = {}

DownloadDialog.layout = [[
<?xml version="1.0" encoding="utf-8"?>
<root>
    <header/>
    <body>
        <node name="downloadDialogNode" rect="0,0,720,1280" extendstyle="1111" >
            <shadow rect="0,0,720,1280" extendstyle="1111" color="#0" alpha="70" />
            <button rect="0,0,720,1280" extendstyle="1111" OnSelect="" />
            <node name="dframe" rect="50,306,620,410" extendstyle="1010">
                <node rect="0,0,620,35" extendstyle="0510">
                    <image rect="0,0,620,72" src="file://image/dialogShadow.png" style="autosize" extendstyle="1010" />
                </node>
                <image rect="0,0,620,410" src="file://image/orderDialog_border.png"  style="sudoku-auto" sudoku="5,5,5,5" extendstyle="1017" BuildChildrenFinished="resChoose"><node/></image>
                <image rect="0,0,620,85" src="file://image/orderDig_head.png"  style="sudoku-auto" sudoku="6,0,6,0" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                <label name="downloadDialogTitle" rect="0,0,620,85" text="提示" color="#212121" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1" font-size="40" v-align="center" h-align="center" extendstyle="1010"/>

                <button name="downloadProgress" rect="100,200,420,20" extendstyle="1010" OnSelect="">
                    <image name="progressBg" rect="0,0,420,20" extendstyle="1010" sudoku="4,0,4,0" style="sudoku-auto" src="file://image/progress_bg.png" BuildChildrenFinished="resChoose"><node/></image>
                    <node name="downloadDialogProgressImg" rect="0,0,0,20" extendstyle="1010" frame="true">
                        <image rect="0,0,420,20" extendstyle="1010" sudoku="4,0,4,0" style="sudoku-auto" src="file://image/progress.png" BuildChildrenFinished="resChoose"><node/></image>
                    </node>
                </button>
                <label name="downloadDialogSpeedLbl" rect="100,240,210,40" extendstyle="1010" autoextend="true" text="0KB/S" font-size="25" color="#0" v-align="center" h-align="left" />
                <label name="downloadDialogProLbl" rect="310,240,210,40" extendstyle="1010" autoextend="true" text="0MB/0MB" font-size="25" color="#0" v-align="center" h-align="right" />
                <node name="btnArea" rect="0,0,620,150" extendstyle="0510">
                    <button rect="222,75,200,100" style="autosize" OnSelect="downloadDialogCancelOnSelect" extendstyle="1010" normal="n" sel="s">
                        <node name="n" rect="0,0,177,56" extendstyle="1010" >
                            <image rect="0,0,177,56" src="file://image/episode_n.png" extendstyle="1010"  style="sudoku-auto" sudoku="11,11,11,11" BuildChildrenFinished="resChoose"><node/></image>
                            <label name="textCancelN" rect="0,0,177,56" extendstyle="1010" text="取消" font-size="30" color="#565656" v-align="center" h-align="center"/>
                        </node>
                        <node name="s" rect="0,0,177,56" extendstyle="1010" >
                            <image name="orderImgS" rect="0,0,177,56" src="file://image/episode_s.png"  style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
                            <label name="textCancelF" rect="0,0,177,56" extendstyle="1010" text="取消" font-size="30" color="#FFFFFF" v-align="center" h-align="center"/>
                        </node>
                    </button>
                </node>
            </node>
        </node>
    </body>
</root>
]]

function DownloadDialog:show(title, btnName, fileName, downloadFinishCallback, downloadFailCallback, downloadCancelCallback)
    _downloadFileName = fileName
    _downloadFinishCallback = downloadFinishCallback
    _downloadFailCallback = downloadFailCallback
    _downloadCancelCallback = downloadCancelCallback
    local rootSprite = Sprite:getCurScene()
    local downloadDialogSprite = Sprite:findChild(rootSprite, 'downloadDialogNode')
    if downloadDialogSprite ~= 0 then
        Sprite:setVisible(downloadDialogSprite, 1)
        Sprite:setEnable(downloadDialogSprite, 1)
        Sprite:setActive(downloadDialogSprite, 1)
    else
        downloadDialogSprite = Sprite:create('node', Sprite:findChild(rootSprite, 'mainNode'))
        Sprite:setProperty(downloadDialogSprite, 'name', 'downloadDialogNode')
        Sprite:loadFromString(downloadDialogSprite, DownloadDialog.layout)
    end
    local downloadDialogTitle = Sprite:findChild(downloadDialogSprite, 'downloadDialogTitle')
    Sprite:setProperty(downloadDialogTitle, 'text', title)
    local textCancelN = Sprite:findChild(downloadDialogSprite, 'textCancelN')
    Sprite:setProperty(textCancelN, 'text', btnName)
    local textCancelF = Sprite:findChild(downloadDialogSprite, 'textCancelF')
    Sprite:setProperty(textCancelF, 'text', btnName)
    downloadDialogSpeedLbl = Sprite:findChild(downloadDialogSprite, 'downloadDialogSpeedLbl')
    downloadDialogProLbl = Sprite:findChild(downloadDialogSprite, 'downloadDialogProLbl')
    downloadDialogProgressImg = Sprite:findChild(downloadDialogSprite, 'downloadDialogProgressImg')
    downloadTime = 0
    Timer:set(101, 1000, 'onGetDownloadDialogStatus')
end

function DownloadDialog:close()
    local rootSprite = Sprite:getCurScene()
    local downloadDialogSprite = Sprite:findChild(rootSprite, 'downloadDialogNode')
    if downloadDialogSprite ~= 0 then
        Sprite:setVisible(downloadDialogSprite, 0)
        Sprite:setEnable(downloadDialogSprite, 0)
        Sprite:setActive(downloadDialogSprite, 0)
    end
end

function DownloadDialog:isShow()
    local rootSprite = Sprite:getCurScene()
    local downloadDialogSprite = Sprite:findChild(rootSprite, 'downloadDialogNode')
    if downloadDialogSprite ~= 0 and Sprite:isVisible(downloadDialogSprite) == 1 then
        return true
    end
    return false
end

function downloadDialogCancelOnSelect(sprite)
    Sprite:releaseCapture(sprite)
    Sprite:killFocus(sprite)
    setDownloadingProgress(0)
    Sprite:setProperty(downloadDialogSpeedLbl, 'text', '0KB/S')
    Sprite:setProperty(downloadDialogProLbl, 'text', '0KB/0KB')
    DownloadDialog:close()
    Download:deleteByName(_downloadFileName, true, true)
    Timer:cancel(101)
    if _downloadCancelCallback then
        loadstring(_downloadCancelCallback..'()')()
    end
end

function setDownloadingProgress(percent)
    local x, y, _, h = Sprite:getRect(downloadDialogProgressImg)
    Sprite:setRect(downloadDialogProgressImg, x, y, 420 * percent / 100, h)
end

function onGetDownloadDialogStatus()
    local count = Download:getCount(true)
    for i = 1, count do
        local task = Download:getStatus(i, true)
        if task.title == _downloadFileName then
            local percent = 0
            if task.size and task.maxsize and task.maxsize ~= 0 then
                percent = math.floor(task.size / task.maxsize * 100)
            end
            downloadTime = downloadTime + 1
            if task.status == Download.status.Downloading then
                setDownloadingProgress(percent)
                Sprite:setProperty(downloadDialogSpeedLbl, 'text', math.floor(task.size / 1024 / downloadTime) .. 'KB/S')
                Sprite:setProperty(downloadDialogProLbl, 'text', math.floor(task.size / 1024) .. 'KB/' .. math.floor(task.maxsize / 1024) .. 'KB')
            elseif task.status == Download.status.Finished then
                downloadTime = 0
                setDownloadingProgress(0)
                Sprite:setProperty(downloadDialogSpeedLbl, 'text', '0KB/S')
                Sprite:setProperty(downloadDialogProLbl, 'text', '0KB/0KB')
                Download:delete(i, false, true)
                DownloadDialog:close()
                if _downloadFinishCallback then
                    loadstring(_downloadFinishCallback..'()')()
                end
                return
            elseif task.status == Download.status.Paused then
                Download:start(i, true)
            elseif task.status == Download.status.Failed then
                downloadTime = 0
                setDownloadingProgress(0)
                Sprite:setProperty(downloadDialogSpeedLbl, 'text', '0KB/S')
                Sprite:setProperty(downloadDialogProLbl, 'text', '0KB/0KB')
                Download:delete(i, true, true)
                DownloadDialog:close()
                if _downloadFailCallback then
                    loadstring(_downloadFailCallback..'()')()
                end
                return
            end
        end
    end
    Timer:set(101, 1000, 'onGetDownloadDialogStatus')
end

--[[
 ------------------------------------------------------------
 -- @function _nullButtonOnSelect
 ------------------------------------------------------------
 -- @brief 全屏的空按钮，用于屏蔽其他控件的响应，自身回调
 --        不需要做任何响应
 ------------------------------------------------------------
 -- @access private
 ------------------------------------------------------------
 -- @return void
 ------------------------------------------------------------
 --]]
function _nullButtonOnSelect()
    Loading:close()
end

-- -----------------------------------------------------------------------------
-- @class Tips
-- @note  文字提示框
-- -----------------------------------------------------------------------------

Tips = {}

Tips.layout = [[
<?xml version="1.0" encoding="utf-8"?>
<root>
    <header/>
    <body>
        <node name="tipsblock" rect="0,1200,720,200" extendstyle="1510" OnTick="tipsTick">
            <image name="tipsBgImg" rect="360,0,0,84" src="file://image/tip.png" style="sudoku-auto" sudoku="16,16,16,16" extendstyle="1010" BuildChildrenFinished="resChoose"><node/></image>
            <label name="tipsText" rect="360,2,0,80" autoextend="true" text="" font-size="26" h-align="center" v-align="center" color="#ffffff" extendstyle="1010"/>
            <label name="tipsTextShadow" rect="0,0,0,80" autoextend="true" text="" font-size="30" extendstyle="1010" visible="0"/>
        </node>
    </body>
</root>
]]

function Tips:show(text,bforceShow)
    Timer:cancel(TimerId.tipsshow)
    Log:write("tiptext", text)
    Sprite:sendEvent(Sprite:getCurScene(), Msg.tipsShow)
    local rootSprite = Sprite:getCurScene()
    local tipsNode = Sprite:findChild(rootSprite, 'tipsNode')
    if tipsNode ~= 0 and Sprite:getData(tipsNode) == "1" then
    elseif tipsNode ~= 0 then
        Sprite:loadFromString(tipsNode, Tips.layout)
        Sprite:setProperty(tipsNode,"data",1)
    else
        tipsNode = Sprite:create('node', Sprite:findChild(rootSprite, 'mainNode'))
        Sprite:setProperty(tipsNode, 'name', 'tipsNode')
        Sprite:loadFromString(tipsNode, Tips.layout)
        Sprite:setProperty(tipsNode,"data",1)
    end
    if not bforceShow then
        Sprite:setProperty(Sprite:findChild(tipsNode, 'tipsblock'),"data","1")
    else
        Sprite:setProperty(Sprite:findChild(tipsNode, 'tipsblock'),"data","200")
    end
    if string.match(Scene:getNameByHandle(), 'index%.wdml') then
        local tipsblock = Sprite:findChild(tipsNode, 'tipsblock')
        Sprite:setRect(tipsblock, 0, 0, 720, 100)
    end
    setNodeState(tipsNode, 1)
    local textarea = Sprite:findChild(tipsNode, 'tipsText')
    local tipsTextShadow = Sprite:findChild(tipsNode, 'tipsTextShadow')
    local tipsBgImg = Sprite:findChild(tipsNode, 'tipsBgImg')
    local minResolution = SCREEN_WIDTH < SCREEN_HEIGHT and SCREEN_WIDTH or SCREEN_HEIGHT
    if minResolution < 480 then
        Sprite:setProperty(tipsBgImg, 'sudoku', '8,8,8,8')
    end
    Sprite:setProperty(textarea, 'text', text)
    Sprite:setProperty(tipsTextShadow, 'text', text)
    local _, _, width, _=Sprite:getRect(tipsTextShadow)
    local halfwidth=360-width/2
    Sprite:setRect(textarea, halfwidth, 2, width, 80)
    Sprite:setRect(tipsBgImg, halfwidth-15, 15, width+30, 54)
    Sprite:setProperty(tipsTextShadow, 'text', '')
    Sprite:setRect(tipsTextShadow,0,0,0,80)
end

function tipsTick(sprite)
    local data = Sprite:getData(sprite)
    local state = tonumber(data)
    if not state then return end
    local tipsBgImg = Sprite:findChild(sprite, 'tipsBgImg')
    if state >= 1 and state <= 10 then
        Sprite:setProperty(tipsBgImg, "alpha",state*25)
    elseif state >=91 and state <= 100 then
        Sprite:setProperty(tipsBgImg, "alpha",(101-state)*25)
    elseif state >=200 and state <= 300 then
        Sprite:setProperty(tipsBgImg, "alpha",255)
    elseif state > 100 or state > 300 then
        Tips:close()
        Sprite:setProperty(sprite,"data","")
    end
    Sprite:setProperty(sprite,"data",state+1)
end

function Tips:close()
    Sprite:sendEvent(Sprite:getCurScene(), Msg.tipsClose)
    local tipsNode = Sprite:findChild(Sprite:getCurScene(), 'tipsNode')
    setNodeState(tipsNode, 0)
end

function Tips:isShow()
    local rootSprite = Sprite:getCurScene()
    local tipsNode = Sprite:findChild(rootSprite, 'tipsNode')
    if tipsNode ~=0 and Sprite:isVisible(tipsNode) == 1 then
        return true
    end
    return false
end

-- -----------------------------------------------------------------------------
-- @class Popup
-- @note  底部弹出选项框
-- -----------------------------------------------------------------------------

Popup = {}

Popup.layout = [[
<?xml version="1.0" encoding="utf-8"?>
<root>
    <header/>
    <body>
        <node name="popupblock" rect="0,0,720,1280" extendstyle="1116" OnTick="popupTick" padding="0,0,112,0">
            <shadow name="popupShadow" rect="0,0,720,1280" color="#000000" alpha="128" extendstyle="1111"/>
            <button rect="0,0,720,1280" extendstyle="1111" OnSelect="popupCloseOS"/>
            <node name="popup" rect="0,0,720,270" extendstyle="1516" padding="0,0,700,0">
                <image name="popupbg" rect="0,0,720,270" style="sudoku-auto" sudoku="7,7,7,7" src="file://image/background.png" extendstyle="1077" BuildChildrenFinished="resChoose"></image>
                <node name="popupContent" rect="0,0,720,270" extendstyle="1010">
                    <node rect="0,0,720,90" extendstyle="1010">
                        <label name="popupTitle" rect="0,0,720,90" extendstyle="1010" text="" color="#e15e00" font-size="30" v-align="center" h-align="center"/>
                        <shadow rect="4,0,372,3" color="#e15e00" alpha="255" padding="0,4,0,0" extendstyle="0570"/>
                    </node>
                    <list name="popupList" rect="0,120,720,560" line="10" auto-adjust="true" extendstyle="1010"/>
                    <node name="popupItem" rect="0,0,720,90" extendstyle="1010" visible="0" enable="0" active="0">
                        <!--<shadow rect="4,0,372,1" color="#BADE9E" alpha="255" padding="0,4,0,0" extendstyle="0064"/>-->
                        <button name="funcBtn" rect="20,10,680,90" extendstyle="1010" normal="n" sel="s" OnSelect="">
                            <node name="n" rect="0,0,680,90" extendstyle="1010">
								<image rect="0,0,680,90" extendstyle="1010" style="autosize" src="file://image/orderebtn.png"/>
                                <label name="f_n" rect="0,0,680,90" extendstyle="1010" text="N/A" color="#000000" font-size="25" v-align="center" h-align="center"/>
                            </node>
                            <node name="s" rect="0,0,680,90" extendstyle="1010">
                                <shadow rect="4,4,372,82" color="#e15e00" alpha="255" padding="0,4,4,0" extendstyle="0066"/>
                                <label name="f_s" rect="0,0,680,90" extendstyle="1010" text="" color="#FFFFFF" font-size="25" v-align="center" h-align="center"/>
                            </node>
                        </button>
                    </node>
                </node>
            </node>
        </node>
    </body>
</root>
]]

function Popup:show(param)
    local popupNode = Sprite:findChild(Sprite:getCurScene(), 'popupNode')
    Log:write("Popup param",param)
    if popupNode ~= 0 and param.title and #param.funcList > 0 then
        Sprite:loadFromString(popupNode, Popup.layout)
        local popupTitle = Sprite:findChild(popupNode, 'popupTitle')
        Sprite:setProperty(popupTitle,"text",param.title)
        local popup = Sprite:findChild(popupNode, 'popup')
        Sprite:setRect(popup,0,0,720,90*#param.funcList+2)
        local popupblock,popupContent = Sprite:findChild(popupNode, 'popupblock'),Sprite:findChild(popupNode, 'popupContent')
        local popupList,popupItem = Sprite:findChild(popupNode, 'popupList'),Sprite:findChild(popupNode, 'popupItem')
        Popup.funcList = param.funcList
        List:loadItem(popupList,popupItem,#param.funcList,"onLoadpopupItem")
        Popup.funcList = nil
        List:adjust(popupList)
        setNodeState(popupContent,0)
        Sprite:setProperty(popupblock,"data","1")
    end
end

function onLoadpopupItem(list, item, index)
    Sprite:setRect(item, 0,0,720,90)
    Sprite:setProperty(item, 'extendstyle', '0010')
    local funcBtn,f_n,f_s = Sprite:findChild(item, 'funcBtn'),Sprite:findChild(item, 'f_n'),Sprite:findChild(item, 'f_s')
    Sprite:setProperty(funcBtn,"OnSelect",Popup.funcList[index+1].funcCallBack)
    Sprite:setProperty(f_n,"text",Popup.funcList[index+1].funcName)
    Sprite:setProperty(f_s,"text",Popup.funcList[index+1].funcName)
end

function popupTick(sprite)
    local data = Sprite:getData(sprite)
    local state = tonumber(data)
    if not state then return end
    local popup,popupbg,popupShadow = Sprite:findChild(sprite, 'popup'),Sprite:findChild(sprite, 'popupbg'),Sprite:findChild(sprite, 'popupShadow')
    local popupList = Sprite:findChild(sprite, 'popupList')
    local h = (List:getItemCount(popupList)+1)*90
    if state >= 1 and state <= 5 then
        Sprite:setProperty(popupbg, "alpha",state*50)
        Sprite:setProperty(popupShadow, "alpha",state*25.6)
        Sprite:setProperty(sprite,"data",state+1)
        --Sprite:setRect(popup,170+13.3*(5-state),0,380-26.6*(5-state),h-h*0.07*(5-state))
		Sprite:setRect(popup,0,0,720,h-h*0.07*(5-state))
        --Sprite:setRect(popupbg,0,0,380-26.6*(5-state),h-h*0.07*(5-state))
		Sprite:setRect(popupbg,0,0,720,h-h*0.07*(5-state))
        if state == 5 then
            setNodeState(Sprite:findChild(sprite, 'popupContent'),1)
        end
    elseif state >= -5 and state <= -1 then
        setNodeState(Sprite:findChild(sprite, 'popupContent'),0)
        Sprite:setProperty(popupbg, "alpha",(5+state)*50)
        Sprite:setProperty(popupShadow, "alpha",(5+state)*25.6)
        Sprite:setProperty(sprite,"data",state-1)
        --Sprite:setRect(popup,170+13.3*(-state),0,380-26.6*(-state),h-h*0.07*(-state))
        --Sprite:setRect(popupbg,0,0,380-26.6*(5+state),h-h*0.07*(5+state))
		Sprite:setRect(popup,0,0,720,h-h*0.07*(-state))
        Sprite:setRect(popupbg,0,0,720,h-h*0.07*(5+state))
        if state == -5 then
            setNodeState(sprite,0)
            Sprite:removeChild(Sprite:getParent(sprite),sprite,1)
        end
    else
        Sprite:setProperty(sprite,"data","")
    end
end

function Popup:close(bRemove)
    local s = Sprite:findChild(Sprite:getCurScene(), 'popupblock')
    if s == 0 then return end
    if not bRemove then
        Sprite:setProperty(s,"data","-1")
    else
        Sprite:removeChild(Sprite:getParent(s),s,1)
    end
end

function Popup:isShow()
    local popupblock = Sprite:findChild(Sprite:getCurScene(), 'popupblock')
    if popupblock ~= 0 and Sprite:isVisible(popupblock) == 1 then
        return true
    end
    return false
end

function popupCloseOS()
    Popup:close()
end

function commonActivate()

end

function commonDeactivate()
    Net:cancelLongConnect()
    Log:write("commonDeactivate")
    Timer:cancel(TimerId.tipsshow)
    Timer:cancel(TimerId.tipsclose)
    Loading:close()
    Dialog:close()
    Tips:close()
    Popup:close(1)
end

function commonF2KeyUp()
    if Loading:isShow() then
        Loading:close()
        return true
    elseif Dialog:isShow() then
        Dialog:close()
        return true
    elseif Popup:isShow() then
        local popupblock = Sprite:findChild(Sprite:getCurScene(), 'popupblock')
        if Sprite:getData(popupblock) == "" then
            Popup:close()
        end
        return true
    elseif OrderNode:isShow() then
        OrderNode:close()
        return true
    end
    return false
end

-- resChoose在timer里处理的时候会引起file://image/hdpi/hdpi/hdpi/wifiNo.png这种问题，增加字符匹配过滤
function resChoose(sprite)
    local minResolution = SCREEN_WIDTH < SCREEN_HEIGHT and SCREEN_WIDTH or SCREEN_HEIGHT
    if Sprite:getData(sprite) == "" then
        local src = Sprite:getProperty(sprite,"src")
        if not src then
            return
        end
        local newsrc = ""
        if minResolution >= 650 then
            if string.match(src, 'exdpi') then return end
            newsrc = string.gsub(src,"image","image/exdpi")
            Sprite:setProperty(sprite,"src",newsrc)
        elseif minResolution >= 400 then
            if string.match(src, 'hdpi') then return end
            newsrc = string.gsub(src,"image","image/hdpi")
            Sprite:setProperty(sprite,"src",newsrc)
        else
            if string.match(src, 'mdpi') then return end
            newsrc = string.gsub(src,"image","image/mdpi")
            Sprite:setProperty(sprite,"src",newsrc)
        end
    end
end

function listviewResChoose(sprite)
    local minResolution = SCREEN_WIDTH < SCREEN_HEIGHT and SCREEN_WIDTH or SCREEN_HEIGHT
    if minResolution >= 720 then
        Sprite:setProperty(sprite,"scrollbar_slider",'file://image/exdpi/slider.png,5,30')
    else
        Sprite:setProperty(sprite,"scrollbar_slider",'file://image/hdpi/slider.png,5,30')
    end
end

-- -----------------------------------------------------------------------------
-- | Desc: 控件回调及UI相关操作
-- -----------------------------------------------------------------------------

function UI_exit()
    if getAudioPlayFlag and getAudioPlayFlag() ~= 0 then
        uploadMyHistory()
        pluginInvoke(Player:_getHandle(),'Stop')
        pluginInvoke(Player:_getHandle(),'Show',0)
        resetAudioPlayFlag()
    end
    local shortCutExist = Config:get('shortCutOnce')
    Log:write('UI_exit shortCutExist 0904= ',shortCutExist )
    if shortCutExist and shortCutExist == '1'  then
    else
        local appName = AppManager:getAppName()
            Log:write(' appName out= ',appName)
        if appName and appName~='' and AppManager:isShortcutExist(appName) == 0 then
            local res = AppManager:createShortcut('')
            Log:write(' isShortcutExist0828 == 0 ,res = ',res )
        end
        Config:set('shortCutOnce','1')
    end
    Scene:exit()
end

function UI_checkboxOnSelect(sprite)
    local checkBoxN = Sprite:findChild(sprite, 'checkBoxN')
    local checkImg = Sprite:findChild(sprite, 'checkImg')
    if Sprite:isVisible(checkBoxN) == 1 then
        setNodeState(checkBoxN,0) setNodeState(checkImg,1)
    else
        setNodeState(checkBoxN,1) setNodeState(checkImg,0)
    end
end

function UI_isCheckboxChecked(sprite)
    local checkBoxN = Sprite:findChild(sprite, 'checkBoxN')
    if Sprite:isVisible(checkBoxN) == 1 then
        return false
    else
        return true
    end
end

function UI_setCheckbox(sprite, isChecked)
    local checkBoxN = Sprite:findChild(sprite, 'checkBoxN')
    local checkImg = Sprite:findChild(sprite, 'checkImg')
    if isChecked then
        setNodeState(checkBoxN,0) setNodeState(checkImg,1)
    else
        setNodeState(checkBoxN,1) setNodeState(checkImg,0)
    end
end

function UI_connectCMWAP()
    Loading:show()
    Http:connectCMWAP()
end

function setNodeState(node,state)
    Sprite:setVisible(node,state)
    Sprite:setEnable(node,state)
    Sprite:setActive(node,state)
end

function setFavDataUpdate()
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.fav)
    Reg:setString(reg, 'favRequestState', "1")
end

function setHisDataUpdate()
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.history)
    Reg:setString(reg, 'hisRequestState', "1")
end

function setOrderDataUpdate()
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.order)
    Reg:setString(reg, 'orderRequestState', "1")
end

OrderNode = {}
OrderNode.layout = [[
<?xml version="1.0" encoding="utf-8"?>
<root>
    <header/>
    <body>
        <node name="orderDialog" rect="0,0,720,1280" extendstyle="1111">
            <button rect="0,0,720,1280" OnSelect="" extendstyle="1111"/>
            <shadow name="orderShadow" rect="0,0,720,1280" color="#000000" alpha="128" extendstyle="1010"/>
            <node name="uichange" rect="50,220,620,0" padding="0,0,335,0" extendstyle="1116">
                <image name="orderBg" rect="0,0,620,678" src="file://image/commonbg.png"  style="sudoku-auto" sudoku="5,5,5,5" extendstyle="1017" BuildChildrenFinished="resChoose"><node/></image>
                <node name="titleArea" rect="0,0,620,67" padding="0,0,170,0" extendstyle="1016">
                    <image rect="0,0,620,67" src="file://image/ordertopbg.png" alpha="255" extendstyle="1010"/>
					<label rect="0,0,620,67" text="订购详情" color="#212121" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1" font-size="35" v-align="center" h-align="center" extendstyle="1010"/>                    
                </node>
                <listview name="_orderListView" rect="0,70,620,0" padding="0,0,85,0" extendstyle="1116"/>
                <node name="btnArea" rect="0,585,620,100" extendstyle="1510">
                    <button name="btnOrderCancel" rect="100,50,250,100" style="autosize" OnSelect="_btnOrderCancelOnSelect" extendstyle="1510" normal="n" sel="s">
                      <image rect="8,16,233,63" src="file://image/orderebtn.png"  style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1010" />
					  <node name="n" rect="0,0,250,100" extendstyle="1010" >						
                            <label name="textOkN" rect="0,0,250,100" extendstyle="1010" text="取消" font-size="30" color="#000000" v-align="center" h-align="center"/>
                        </node>
                        <node name="s" rect="0,0,250,100" extendstyle="1010" frame="true">                           
                            <label name="textOkF" rect="0,0,250,100" extendstyle="1010" text="取消" font-size="30" color="#FFFFFF" v-align="center" h-align="center"/>
                        </node>
                    </button>
                    <button name="btnOrderOk" rect="350,50,250,100" OnSelect="_btnOrderOkOnSelect" extendstyle="1570" normal="n" sel="s" disabled="d">
                        <image rect="8,16,233,63" src="file://image/orderebtn.png"  style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1010" />
						<node name="n" rect="0,0,250,100" extendstyle="1010" >
                            <label name="textCancelN" rect="0,0,250,100" extendstyle="1010" text="订购" font-size="30" color="#000000" v-align="center" h-align="center"/>
                        </node>
                        <node name="s" rect="0,0,250,100" extendstyle="1070" frame="true">
                            <image rect="-5,0,250,100" src="file://image/bluebg.png" style="sudoku-auto" sudoku="11,11,11,11" extendstyle="1070" BuildChildrenFinished="resChoose"><node/></image>
                            <label name="textCancelF" rect="0,0,250,100" extendstyle="1010" text="订购" font-size="30" color="#FFFFFF" v-align="center" h-align="center"/>
                        </node>
                    </button>
                </node>
            </node>
        </node>
        <node name="_orderItem" rect="0,0,620,80" extendstyle="0010" visible="false" enable="false">
            <button name="btnOrderOpt" rect="0,0,620,80" OnSelect="orderOptionOnSelect" extendstyle="1010" normal="n" disabled="d" >                      
			   <node name="n" rect="0,0,620,80" extendstyle="1010" >
			        <image rect="10,6,66,67" src="file://image/setting_radiobox_n.png"  style="autosize"extendstyle="1010" />			        
                    <label name="titleN" rect="90,10,520,60" text="" color="#817b7b" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1" font-size="30" v-align="center" h-align="left" extendstyle="1010"/>
                </node>
                <node name="d" rect="0,0,620,80" extendstyle="1010" >
				    <image rect="10,6,66,67" src="file://image/setting_radiobox_f.png"  style="autosize"extendstyle="1010" />
                    <image rect="90,10,520,60" src="file://image/orderedit1.png"  style="sudoku-auto" sudoku="14,22,6,6" extendstyle="1010" />					
                    <label name="titleD" rect="90,10,520,60" text="" color="#565656" shadow="true" shadow-color="#ffffff" shadow-alpha="150" shadow-offset="0,1" font-size="30" v-align="center" h-align="left" extendstyle="1010"/>
                </node>
                <textarea name="orderInfo" rect="90,70,520,60" extendstyle="1010" color="#817b7b" shadow="true" shadow-color="#ffffff" shadow-offset="0,1" font-size="28" text="" autoextend="true" visible="0"/>
            </button>
        </node>
    </body>
</root>
]]
  -- <-- <image name="orderOptionD" rect="11,20,40,40" src="file://image/orderOption_d.png"  style="sudoku-auto" sudoku="5,5,5,5" extendstyle="1010" ><node/></image>-->
function OrderNode:show(playerData)    
    local rootSprite = Sprite:getCurScene()
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.player)
    local multiDownload = Reg:getString(reg, 'multiDownload')
    if multiDownload == 'true' and playerData.orderList[0].typeName == 'anci' then -- 批量缓存的按次产品不显示
        local i = 1
        playerData.orderList[0] = playerData.orderList[1]
        while playerData.orderList[i + 1] do
            playerData.orderList[i] = playerData.orderList[i + 1]
            i = i + 1
        end
        table.remove(playerData.orderList, #playerData.orderList)
    end
    _orderData = playerData
    local mainNode = Sprite:findChild(rootSprite, 'mainNode')
    _orderNode = Sprite:findChild(rootSprite, '_orderNode')	
    if _orderNode ~= 0 then
        setNodeState(_orderNode, 1)
        local orderDialog = Sprite:findChild(_orderNode, 'orderDialog')
        Sprite:setVisible(orderDialog, 1)
        Sprite:setEnable(orderDialog, 1)
    else
        _orderNode = Sprite:create('node', mainNode)
        Sprite:setProperty(_orderNode, 'name', '_orderNode')
        Sprite:loadFromString(_orderNode, OrderNode.layout)
        Sprite:setRect(_orderNode, 0,0,720,1280)
        Sprite:setProperty(_orderNode, "extendstyle","1111")
    end

    local _orderListView = Sprite:findChild(_orderNode, '_orderListView')
    ListView:removeAllItems(_orderListView, 1, 1)
    local _orderItem = Sprite:findChild(_orderNode, '_orderItem')
    if not _orderData.orderList[0] then
        return
    end
    ListView:loadItem(_orderListView, _orderItem, #_orderData.orderList + 1, 'onLoadOrderItem')
    local findItem
    for i = 0, #_orderData.orderList do
        if _orderData.orderList[i].typeName == 'xiaobaoyue' then
            local item = ListView:getItem(_orderListView, i)
            orderOptionOnSelect(Sprite:findChild(item, 'btnOrderOpt'))
            findItem = true
            break
        end
    end
    if not findItem then
        for i = 0, #_orderData.orderList do
            if _orderData.orderList[i].typeName == 'dabaoyue' then
                local item = ListView:getItem(_orderListView, i)
                orderOptionOnSelect(Sprite:findChild(item, 'btnOrderOpt'))
                findItem = true
                break
            end
        end
    end
    if not findItem then
        for i = 0, #_orderData.orderList do
            if _orderData.orderList[i].typeName == 'anci' then
                local item = ListView:getItem(_orderListView, i)
                orderOptionOnSelect(Sprite:findChild(item, 'btnOrderOpt'))
                findItem = true
                break
            end
        end
    end
	Log:write('OrderNode===========',_orderNode)
    popEffectShow(_orderNode, "uichange", "orderShadow", "orderBg", {"titleArea","bottomshadow","_orderListView"},9)
end

function onLoadOrderItem(listview, item, index)
    Sprite:setRect(item, 0, 0, 620, 80)
    Sprite:setProperty(item, 'extendstyle', '0010')
    Sprite:setProperty(item, 'frame', 'true')
    Sprite:setProperty(item, 'data', _orderData.orderList[index].typeName)
    local btnOrderOpt = Sprite:findChild(item, 'btnOrderOpt')
    Sprite:setProperty(btnOrderOpt, 'data', _orderData.orderList[index].contparam .. _orderData.orderList[index].secret)
    local titleN = Sprite:findChild(item, 'titleN')
    Sprite:setProperty(titleN, 'text', _orderData.orderList[index].title)
    local titleD = Sprite:findChild(item, 'titleD')
    Sprite:setProperty(titleD, 'text', _orderData.orderList[index].title)
    local orderInfo = Sprite:findChild(item, 'orderInfo')
    Sprite:setProperty(orderInfo, 'text', _orderData.orderList[index].desc)
    resChoose(Sprite:findChild(item, 'imgbg'))
    resChoose(Sprite:findChild(item, 'orderOption'))
    -- resChoose(Sprite:findChild(item, 'orderOptionD'))
end

--订购套餐选择
function orderOptionOnSelect(sprite)
    local item = Sprite:getParent(sprite)
    local listview = Sprite:getParent(item)
    local itemCount = ListView:getItemCount(listview)
    --Log:write('orderOptionOnSelect itemCount=='..itemCount)
    local x,y,w,h = Sprite:getRect(item)
    for i = 0, itemCount-1 do
        local listitem = ListView:getItem(listview, i)
        Sprite:setEnable(Sprite:findChild(listitem, 'btnOrderOpt'), 1)
        Sprite:setRect(listitem, x, y, w, 80)
        local imgbg = Sprite:findChild(listitem, 'imgbg')
        local x1,y1,w1,_ = Sprite:getRect(imgbg)
        Sprite:setRect(imgbg, x1, y1, w1, 60)
        Sprite:setVisible(Sprite:findChild(listitem, 'orderInfo'),0)
        Sprite:setProperty(imgbg, 'src', 'file://image/orderedit1.png')
        resChoose(imgbg)
    end

    Sprite:setEnable(sprite,0)
    local orderInfo = Sprite:findChild(sprite, 'orderInfo')
    local _, _, _, h1 = Sprite:getRect(orderInfo)
    Sprite:setVisible(orderInfo,1)
    Sprite:setRect(item, x, y, w, h1+90)

    local imgbg = Sprite:findChild(sprite, 'imgbg')
    local x1,y1,w1,_ = Sprite:getRect(imgbg)
    Sprite:setRect(imgbg, x1, y1, w1, h1+80)
    Sprite:setProperty(imgbg, 'src', 'file://image/orderedit1.png')
    resChoose(imgbg)
    Log:write('orderOptionOnSelect h1=='..h1)
    ListView:adjust(listview)

    local btnOrderOk = Sprite:findChild(_orderNode, 'btnOrderOk')
    if _orderData.appointment == 'true' and Sprite:getData(item) == 'dabaoyue' then -- 大包月预约的大包月不能订购
        Sprite:setEnable(btnOrderOk, 0)
    else
        Sprite:setEnable(btnOrderOk, 1)
        Log:write('Sprite:getData(sprite)',Sprite:getData(sprite))
        Sprite:setProperty(btnOrderOk, 'data', Sprite:getData(sprite))
    end
    productType = Sprite:getData(item)
end

--order cancel
function _btnOrderCancelOnSelect(sprite)
    Sprite:releaseCapture(sprite)
    Sprite:killFocus(sprite)
	Log:write('_btnOrderCancelOnSelect======3',sprite,Sprite:getParent(Sprite:getParent(Sprite:getParent(Sprite:getParent(sprite)))))
    _orderNode=Sprite:getParent(Sprite:getParent(Sprite:getParent(Sprite:getParent(sprite))))
	setNodeState(_orderNode, 1)
	Log:write('_btnOrderCancelOnSelect======1',_orderNode)
    popEffectClose(_orderNode, "uichange", "orderShadow", "orderBg", {"titleArea","bottomshadow","_orderListView"},9)
	Log:write('_btnOrderCancelOnSelect======2',_orderNode)
end

--order confirm
function _btnOrderOkOnSelect(sprite)
    Sprite:releaseCapture(sprite)
    Sprite:killFocus(sprite)
	_orderNode=Sprite:getParent(Sprite:getParent(Sprite:getParent(Sprite:getParent(sprite))))
    setNodeState(_orderNode, 1)
    popEffectClose(_orderNode, "uichange", "orderShadow", "orderBg", {"titleArea","bottomshadow","_orderListView"},9)
    linkParam = string.gsub(Sprite:getData(sprite), ";", "&")
    Loading:show()
    Http:request('order', Util:getServer() .. 'msp/order.msp?' .. linkParam, Msg.order, {useCache = 0})
end

function OrderNode:isShow()
    local orderSprite = Sprite:findChild(Sprite:getCurScene(), '_orderNode')
    if orderSprite ~=0 and Sprite:isVisible(orderSprite) == 1 then
        return true
    end
    return false
end

function OrderNode:close()
    local orderSprite = Sprite:findChild(Sprite:getCurScene(), '_orderNode')
    if orderSprite ~=0 then
        setNodeState(orderSprite, 0)
    end
end

function Util:GetVideoMsg()
    local str = GetAppStartParamString()
    Log:write('GetVideoMsg str', str)
    if str ~= '' then
        local strTable = Util:split(str, '|')
        if #strTable == 2 then
            if strTable[1] == 'videopath' then
                return strTable[2]
            end
        end
    end
    return nil
end

function isMediaAudio(strPath)
    if strPath and strPath ~= "" then
        if string.match(strPath,"audiodownload") or string.match(strPath,"%.mp3$") then
            return true
        else
           return false
        end
    end
    return false
end

function Util:goPlayerLocalByPlayparam(playPath,playName)
    Log:write('goPlayerLocalByPlayparam playName=',playName)
    Log:write('goPlayerLocalByPlayparam playPath=',playPath)

    --判断是否音频正在播放，如在播放则停止
    if getAudioPlayFlag then
        if getAudioPlayFlag() ~= 0 then
            --停止定时器，防止视频停止后音频点播自动播放下一集
            --取悦听场景句柄
            if getAudioScene then
                local curAudioScene = getAudioScene()
                Sprite:sendEvent(curAudioScene, Msg.stopAudioTimer)
            end
            pluginInvoke(Player:_getHandle(),'Stop')
            pluginInvoke(Player:_getHandle(),'Show',0)
            resetAudioPlayFlag()
        end
    end

    if IO:fileExist(playPath) then
        local lreg = Reg:create(Reg.com_wondertek_mobileaudio.playerlocal)
        local isAudio = isMediaAudio(playPath)
        if isAudio then
            lreg = Reg:create(Reg.com_wondertek_mobileaudio.playeryue)
        end

        Reg:setString(lreg, 'playUrl', playPath)
        Reg:setString(lreg, 'playName', playName)
        if string.match(playPath,"MobileVideoDownload") or string.match(playPath,"\\data\\data") then
            Reg:setTable(lreg, 'fileTable', {})
        else
            Reg:setTable(lreg, 'fileTable', {{name=playName,path=playPath}})
        end

        if isAudio then
            Scene:go(Alias.playeryuelocal, {setNext = false, freeDestScene = true, useCache = 0})
        else
            Scene:go(Alias.playerlocal, {setNext = false, freeDestScene = true, useCache = 0})
        end

        return 1
    else
        return 0
    end
end

function getCommunityUrl()
    local curConnect = Http:getCurConnect()
    if curConnect == 'WLAN' or curConnect == 'CMNET' then
        return "http://c22.cmvideo.cn/music-weibo/"
    else
        return Config:get('wlan_support') == '1' and "http://c2.cmvideo.cn/music-weibo/" or "http://c22.cmvideo.cn/music-weibo/"
    end
end

function backSelect(sprite)
    Scene:back()
end

function setBeforeTime(sprite, checkTime, curTime)
    local _,_,cyear,cmonth,cday,chour,cmin,csec = string.find(checkTime,'(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)')
    if cyear and cmonth and cday and chour and cmin and csec then
        local seconds = os.time{year=cyear, month=cmonth, day=cday, hour=chour,min=cmin,sec=csec}
        local curSeconds = curTime and curTime or math.floor(Util:getServerTime()/1000)
        local s = math.floor(curSeconds-seconds)
        if s < 0 then
            Log:write(' checkTime,curTime , seconds , curSeconds = ',checkTime,curTime, seconds,curSeconds )
            Sprite:setProperty( sprite,'text','0 秒之前')
        end
        if s > 60 then
            s = math.floor(s/60)
            if s > 60 then
                s = math.floor(s/60)
                if s > 24 then
                    s = math.floor(s/24)
                    if s > 30 then
                        s = math.floor(s/30)
                        if s > 12 then
                            s = math.floor(s/12)
                            Sprite:setProperty(sprite, 'text', s .. '年之前')
                        else
                            Sprite:setProperty(sprite, 'text', s .. '月之前')
                        end
                    else
                        Sprite:setProperty(sprite, 'text', s .. '天之前')
                    end
                else
                    Sprite:setProperty(sprite, 'text', s .. '小时之前')
                end
            else
                Sprite:setProperty(sprite, 'text', s .. '分钟之前')
            end
        else
            Sprite:setProperty(sprite, 'text', s .. '秒之前')
        end
    end
end

function _gotoLocal()
    Scene:go(Alias.downloadlocal)
end

function goToDownloadLocal()
    Log:write('in goToDownloadLocal')
    Timer:set(TimerId.goToLocal, 2000, '_allowGotoLocal')
end

function _allowGotoLocal()
    --local guidePageNode = Sprite:findChild(Sprite:getCurScene(), 'guidePageNode')
    --if guidePageNode ~= 0 and Sprite:isVisible(guidePageNode) == 0 then --未显示引导页
    --    _gotoLocal()
    --end
    UI_exit()
end

-- -----------------------------------------------------------------------------
-- @class Net
-- @note  网络操作
-- -----------------------------------------------------------------------------

Net = {}

--[[
 ------------------------------------------------------------
 -- @function Net:sendSMStoGetToken()
 ------------------------------------------------------------
 -- @brief 发送生成token的短信
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:sendSMStoGetToken()
    local server = Config:get('cmwap_serverandportal')
    local telNum = ''
    if string.match(server, '^http://c2.cmvideo.cn') then -- 丁香路特服号：106585503 现网特服号：10658423
        telNum = '10658423'
    else
        telNum = '106585503'
    end
    local msg = 'MVSUP3,' .. Net:getClientId() .. ',' .. Net:getIMSI() .. ',' .. Net:tokenEncode(Net:getToken())
    Log:write('telNum', telNum)
    Log:write('msg', msg)
    Util:sendSMS(telNum, msg, 'hidden')
    Timer:set(TimerId.sendSMS, 15000, 'Net_changeSendSMS')
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    Reg:setInteger(regI, 'Net_sendSMS', 1)
    Log:write('================= sendSMStoGetToken end =================')
end

--[[
 ------------------------------------------------------------
 -- @function Net_changeSendSMS()
 ------------------------------------------------------------
 -- @brief 发送绑定token短信后15秒内触发的特殊业务提示"正在获取用户信息，请稍后再试"
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net_changeSendSMS()
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    Reg:setInteger(regI, 'Net_sendSMS', 0)
end

--[[
 ------------------------------------------------------------
 -- @function Net:connectCellularNet()
 ------------------------------------------------------------
 -- @brief 连接蜂窝网
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:connectCellularNet()
    local apnType = Http:getCurrentAPNType()
    Log:write('connectCellularNet ===== apnType ==== ', apnType)
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    if apnType == 2 then -- CMWAP网
        Log:write('connectCellularNet ================== CMWAP')
        Http:connectCMWAP()
    else
        Log:write('connectCellularNet ================== CMNET')
        Http:connectCMNETWithWLAN()
    end
    if Util:GetVideoMsg() and Scene:getNameByHandle() == Alias.playerlocal and Reg:getInteger(regI, 'indexHaveLogin') == 0 then
    else
        -- Tips:show('正在连接移动网络')
    end
end

--[[
 ------------------------------------------------------------
 -- @function Net:getClientId()
 ------------------------------------------------------------
 -- @brief 获取clientId
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return 以04开头的13位数的clientId
 ------------------------------------------------------------
 --]]
function Net:getClientId()
    local clientId = Config:get('clientId')
    if clientId ~= '' then
        return clientId
    end

    if GetUUID then
        clientId = GetUUID()
        Log:write('clientId', clientId)
        clientId = string.gsub(clientId, '%-', '')
        Config:set('clientId', clientId)
    end

    return clientId
end

--[[
 ------------------------------------------------------------
 -- @function Net:changeSimCard()
 ------------------------------------------------------------
 -- @brief sim卡更换则删除本地token
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:changeSimCard()
    local imsi = System:getMachineInfo(5)
    if imsi and Net:getIMSI() ~= imsi then
        Log:write('changeSimCard')
        os.remove(Config:get('newTokenPath'))
        Config:set('simcard', imsi)
    end
end

--[[
 ------------------------------------------------------------
 -- @function Net:getIMSI()
 ------------------------------------------------------------
 -- @brief 获取imsi
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return string
 ------------------------------------------------------------
 --]]
function Net:getIMSI()
    return Config:get('simcard')
end

--[[
 ------------------------------------------------------------
 -- @function Net:getToken()
 ------------------------------------------------------------
 -- @brief 获取源token
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return string
 ------------------------------------------------------------
 --]]
function Net:getToken()
    local sourceString = IO:fileRead(Config:get('newTokenPath'))
    if sourceString then
        local key = string.reverse(System:getUserAgent())
        local len = string.len(key)
        if len < 8 then
            Log:write('len < 8')
            for i = 1, 8 - len do
                key = key .. 'd'
            end
        end
        local newString = ''
        for i = 1, string.len(sourceString), 2 do
            local tmp = string.sub(sourceString, i, i + 1)
            newString = newString .. string.char(tonumber(tmp, 16))
        end
        local desStirng = Des:decrypt(newString, key) or ''
        Log:write('Net:getToken', desStirng)
        return desStirng
    end
    return ''
end

--[[
 ------------------------------------------------------------
 -- @function Net:saveToken(token)
 ------------------------------------------------------------
 -- @brief 保存token
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param string: token
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:saveToken(token)
    local f = io.open(Config:get('newTokenPath'), 'w+')
    f:write(token)
    f:close()
end

--[[
 ------------------------------------------------------------
 -- @function Net:tokenEncode(token)
 ------------------------------------------------------------
 -- @brief 加密token，发送短信时使用
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param string: token
 ------------------------------------------------------------
 -- @return string
 ------------------------------------------------------------
 --]]
function Net:tokenEncode(token)
    local desStirng = Des:encrypt(token, 'ketrednow')
    local newString = ''
    Log:write('Net:tokenEncode desStirng', desStirng)
    for i = 1, string.len(desStirng) do
        newString = newString .. string.format('%02x', string.byte(desStirng, i))
    end
    Log:write('Net:tokenEncode newString', newString)
    return newString
end

--[[
 ------------------------------------------------------------
 -- @function Net:login()
 ------------------------------------------------------------
 -- @brief 异步登录
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:login()
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    Log:write('Net:login', Config:get('filterType'))
    if Reg:getInteger(regI, 'indexHaveLogin') == 0 then
        if Config:get('filterType') == '1' then
            Reg:setString(regI, 'phoneNumber', '')
            if Net:getToken() == '' then
                if Http:getCurConnect() == 'CMNET' or Http:getCurConnect() == 'CMWAP' then
                    Timer:set(TimerId.getToken, 5000, '_queryToken')
                else
                    Net:queryToken()
                end
            end
        else
            Reg:setString(regI, 'phoneNumber', 'logout')
            local userName = Config:get('userName')
            local password = Config:get('password')
            if userName ~= '' and password ~= '' then
                if Config:get('autoLogin') == '1' then
                    Log:write('自动登录')
                    local postData = 'phoneNumber=' .. userName .. '&password=' .. password
                    Log:write('url=', Util:getServer() .. 'msp/login.msp' .. postData)
                    local reg = Reg:create(Reg.com_wondertek_mobileaudio.myaccount)
                    Reg:setString(reg, 'userName', userName)
                    Reg:setString(reg, 'password', password)
                    Http:request('loginResult', Util:getServer() .. 'msp/login.msp', Msg.login, {method = 'post', useCache = 0, postData = postData})
                end
            end
        end
    end
    if Scene:getNameByHandle() == Alias.index and Reg:getInteger(regI, 'indexHaveLogin') == 0 then
        login()
        Reg:setInteger(regI, 'indexHaveLogin', 1)
    elseif Scene:getNameByHandle() == Alias.downloadlocal then --本地媒体库显示返回按钮
        local backBtn = Sprite:findChild(Sprite:getCurScene(), 'backBtn')
        Sprite:setEnable(backBtn, 1)
        Sprite:setVisible(backBtn, 1)
    end
end

function Net:hiddenlogin()
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    Reg:setString(regI, 'phoneNumber', 'logout')
    local userName = Config:get('userName')
    local password = Config:get('password')
    if userName ~= '' and password ~= '' then
        if Config:get('autoLogin') == '1' then
            Log:write('自动登录')
            local postData = 'phoneNumber=' .. userName .. '&password=' .. password
            Log:write('url=', Util:getServer() .. 'msp/login.msp' .. postData)
            local reg = Reg:create(Reg.com_wondertek_mobileaudio.myaccount)
            Reg:setString(reg, 'userName', userName)
            Reg:setString(reg, 'password', password)
            Http:request('loginResult', Util:getServer() .. 'msp/login.msp', Msg.hiddenlogin, {method = 'post', useCache = 0, postData = postData})
            return 1
        end
    end
    return 0
end

--[[
 ------------------------------------------------------------
 -- @function Net:queryToken()
 ------------------------------------------------------------
 -- @brief 发送请求获取token
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:queryToken()
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    if Reg:getInteger(regI, 'sendGetToken') ~= 1 then
        Reg:setInteger(regI, 'sendSMSTimes', 1)
        Http:request('_getNewToken', Util:getServer() .. '/msp/clientToken.msp?clientImsi=' .. System:getMachineInfo(5), Msg.newToken, {useCache = 0})
    end
end

function _queryToken()
    Net:queryToken()
end

--[[
 ------------------------------------------------------------
 -- @function Net:goToAccount()
 ------------------------------------------------------------
 -- @brief 关键业务需要进入我的账号页面登录
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:goToMyAccount()
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    if Reg:getInteger(regI, 'Net_sendSMS') == 1 then
        Tips:show(Util:getTipsMsg(usrMsgFileName.localTipsMsg,14)) --('正在获取用户信息，请稍后再试')
        return
    end
    if Reg:getInteger(regI, 'accountLogin') == 1 then
        Reg:setString(regI, 'phoneNumber', 'logout')
        Reg:setInteger(regI, 'accountLogin', 0)
    else
        Reg:setString(regI, 'phoneNumber', '')
    end
    dialogContent,dialogTitle = Util:getTipsMsg(usrMsgFileName.localDialogMsg,6) --or '您尚未登录，请至我的账号页面登录','提示'
    Dialog:show(dialogTitle, dialogContent, 'ok_cancel', '_goToMyAccount')
end

function _goToMyAccount()
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.myaccount)
    Reg:setInteger(reg, 'fromCommon', 1)
    Scene:go(Alias.myaccount)
end

--[[
 ------------------------------------------------------------
 -- @function Net:longConnect()
 ------------------------------------------------------------
 -- @brief 心跳请求保持长连接
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:longConnect()
    --Timer:cancel(TimerId.longConnect)
    --Timer:set(TimerId.longConnect, 60000, "requestLongConnect")
end

function requestLongConnect()
    Http:request('_longConnect', Util:getServer() .. Alias.longConnect, Msg.longConnect, {useCache = 0})
end

--[[
 ------------------------------------------------------------
 -- @function Net:cancelLongConnect()
 ------------------------------------------------------------
 -- @brief 关闭心跳
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:cancelLongConnect()
    --Timer:cancel(TimerId.longConnect)
end

--[[
 ------------------------------------------------------------
 -- @function Net:noImageMode()
 ------------------------------------------------------------
 -- @brief 无图模式判断
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:noImageMode()
    if SetDownloadImage then
        local noImage = Config:get('noImageMode')
        local curConnect = Http:getCurConnect()
        if noImage == "1" and (curConnect == 'CMWAP' or curConnect == 'CMNET') then
            SetDownloadImage(0)
        else
            SetDownloadImage(1)
        end
    end
end

--[[
 ------------------------------------------------------------
 -- @function Net:pwdEncode(pwd)
 ------------------------------------------------------------
 -- @brief 加密密码
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param string: pwd密码
 ------------------------------------------------------------
 -- @return string
 ------------------------------------------------------------
 --]]
function Net:pwdEncode(pwd)
    local desStirng = Des:encrypt(pwd, 'wondertek2013')
    local newString = ''
    Log:write('Net:pwdEncode desStirng', desStirng)
    for i = 1, string.len(desStirng) do
        newString = newString .. string.format('%02x', string.byte(desStirng, i))
    end
    Log:write('Net:pwdEncode newString', newString)
    return newString
end

--[[
 ------------------------------------------------------------
 -- @function Net:pwdDecode(pwd)
 ------------------------------------------------------------
 -- @brief 解密密码
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param string: pwd密码
 ------------------------------------------------------------
 -- @return string
 ------------------------------------------------------------
 --]]
function Net:pwdDecode(pwd)
    local newString = ''
    for i = 1, string.len(pwd), 2 do
        local tmp = string.sub(pwd, i, i + 1)
        newString = newString .. string.char(tonumber(tmp, 16))
    end
    local desStirng = Des:decrypt(newString, 'wondertek2013') or ''
    Log:write('Net:pwdDecode', desStirng)
    return desStirng
end

--[[
 ------------------------------------------------------------
 -- @function Net:getPipeData(src, dest)
 ------------------------------------------------------------
 -- @brief 取得由AppendCommand下载来的文件的真实数据。
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param string: src, 由AppendCommand下载回来的文件。
 -- @param string: dest, 真实数据保存的文件路径。
 ------------------------------------------------------------
 -- @return boolean, 成功返回true，失败返回false。
 ------------------------------------------------------------
 --]]
function Net:getPipeData(src, dest)
    Log:write('Net:getPipeData src', src)
    Log:write('Net:getPipeData dest', dest)
    GetPipeData(src, dest)
end

--[[
 ------------------------------------------------------------
 -- @function Net:changeSdcfg(sdcfg)
 ------------------------------------------------------------
 -- @brief 更改sd卡路径配置
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param table: sdcfg, sd卡路径配置表
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:changeSdcfg(sdcfg)
    Log:write('Net:changeSdcfg')
    local reg = Reg:create(Util:getCurAppId())
    Net:getPipeData(Reg:getString(reg, '_sdcfg'), 'MODULE:\\sdcfg.xml')
end

--[[
 ------------------------------------------------------------
 -- @function Net:havePhoneNumber(phoneNumberData)
 ------------------------------------------------------------
 -- @brief 是否获取到手机号及保存操作
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param table: phoneNumberData, Http:jsonDecode('phoneNumber')解析出的表
 ------------------------------------------------------------
 -- @return boolean, true:有手机号，false:没有手机号
 ------------------------------------------------------------
 --]]
function Net:havePhoneNumber(phoneNumberData)
    Log:write('Net:havePhoneNumber', phoneNumberData)
    local regI = Reg:create(Reg.com_wondertek_mobileaudio.index)
    if not phoneNumberData or phoneNumberData.phoneNum == "" then
        if Reg:getInteger(regI, 'accountLogin') ~= 1 then --隐式登录未获取到手机号
            Reg:setString(regI, 'phoneNumber', '')
        else
            Reg:setString(regI, 'phoneNumber', 'logout')
        end
        return false
    else
        Reg:setString(regI, 'phoneNumber', phoneNumberData.phoneNum)
        Net:setMsgParam({phoneNumber = phoneNumberData.phoneNum})
        return true
    end
end

--[[
 ------------------------------------------------------------
 -- @function Net:setMsgParam(param)
 ------------------------------------------------------------
 -- @brief 保存消息推送参数至文件MODULE:\\msgparam.txt
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param table: param, 推送参数表，用于url中
 ------------------------------------------------------------
 -- @return nil
 ------------------------------------------------------------
 --]]
function Net:setMsgParam(param)
    Log:write('Net:setMsgParam', param)
    local str = ''
    for i, v in pairs(param) do
        str = str .. i .. '=' .. v .. '&'
    end
    str = string.sub(str, 1, string.len(str) - 1)
    IO:fileWrite('MODULE:\\msgparam.txt', str)
end

--[[
 ------------------------------------------------------------
 -- @function Net:getNumeric()
 ------------------------------------------------------------
 -- @brief 获得手机制式
 ------------------------------------------------------------
 -- @access public
 ------------------------------------------------------------
 -- @param 无
 ------------------------------------------------------------
 -- @return string, 46000、46002表示中国移动;46001表示中国联通;46003表示中国电信
 ------------------------------------------------------------
 --]]
function Net:getNumeric()
    return GetNumeric()
end
  -----------------------------营销页用图更新模块开始-----------------------
function checkSaleImg()
    local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
    local saleImgTotal = Reg:getInteger(reg, 'saleImgTotal')
    for i = 1, saleImgTotal do
        local lastModifiedSaleImg = Reg:getString(reg, 'lastModifiedSaleImg' .. i)
        local saleImgSrc = Reg:getString(reg, 'saleImgSrc' .. i)
        if lastModifiedSaleImg ~= '' and lastModifiedSaleImg ~= Config:get('lastModifiedSaleImg' .. i) then --图片存在且有更新
            Log:write('saleImgSrccccccccccccc',saleImgSrc)
            local saleImgFileName = GetLocalFilename(saleImgSrc)
            Log:write('saleImgFileNameeeeeee',saleImgFileName)
            if IO:fileExist(saleImgFileName) then
                if IO:fileSize(saleImgFileName) ~= 0 then
                    local appId = Util:getCurAppId()
                    --if not IO:dirExist('MODULE:\\' .. appId .. '\\image') then --引擎文件夹存在性接口可能会查找映射文件夹，如有映射会返回true，但是实际并没有此文件夹，会导致Copy失败
                        local crtn = IO:dirCreate('MODULE:\\' .. appId .. '\\image')
                        Log:write('cccccccccccrtn',crtn)
                    --end
                    local rtn = IO:fileCopy(saleImgFileName, 'MODULE:\\' .. appId .. '\\image\\saleImg' .. i .. '.jpg', true)
                    Log:write('rtnnnnnnnnnnnn', rtn)
                    if rtn then
                        Config:set('lastModifiedSaleImg' .. i, lastModifiedSaleImg)
                    end
                else
                    IO:fileRemove(saleImgFileName)
                end
            end
        end
    end
end
  -----------------------------营销页用图更新模块结束-----------------------

--离线历史数据
function netHistoryToLocal(data)
    local filename = 'WONDER:\\temp/nethistory.lua'
    local localData = {
        movie = {},
        drama = {},
    }
    if data and data.historyList and data.historyList[0] then
        for i = 0, #data.historyList do
            local param = data.historyList[i].contparam
            local _, _, contentId = string.find(param, 'contentId=(%d+);')
            local _, _, nodeId = string.find(param, 'nodeId=(%d+);')
            local _, _, objType = string.find(param, 'objType=([%a%d]+);')

            if objType == '0' or objType == '1' or objType == '4' then
                table.insert(localData.drama, {
                    contentId = contentId,
                    nodeId = nodeId,
                    objType = objType,
                    breakPoint = data.historyList[i].currTime
                })
            else
                table.insert(localData.movie, {
                    contentId = contentId,
                    nodeId = nodeId,
                    objType = objType,
                    breakPoint = data.historyList[i].currTime
                })
            end
        end
    end
    local str = Util:tostring(localData, '', '')
    IO:fileRemove(filename)
    IO:fileWrite(filename, str)
end

function saveNetHistory(contparam, totalTime, curTime)
    local filename = 'WONDER:\\temp/nethistory.lua'
    if contparam and totalTime and curTime then
        Log:write('saveNetHistory ========== contparam', contparam)
        local _,_,contentId = string.find(contparam, 'contentId=(%d+);')
        local _,_,nodeId = string.find(contparam, 'nodeId=(%d+);')
        local _,_,objType = string.find(contparam, 'objType=([%a%d]+);')
        local _,_,isAudio = string.find(contparam, 'isAudio=(%a+);')

        local destTableIndex = 'movie' --'movie'
        if objType == '0' or objType == '1' or objType == '4' then
            destTableIndex = 'drama'
        end

        Http:request('detail_saveHistory', Util:getServer() .. '/msp/addHistory.msp?contId=' .. contentId .. '&nodeId='
            .. nodeId .. '&totalTime=' .. totalTime .. '&currTime=' .. curTime .. '&playType=1&isLive=', 900, {useCache = 0})
        Log:write("history saved")
        local reg = Reg:create(Reg.com_wondertek_mobileaudio.index)
        local historyDataCachePath = Reg:getString(reg, 'historyDataCachePath')
        IO:fileRemove(historyDataCachePath)
        local historyStr = IO:fileRead(filename)
        if not historyStr or historyStr == '' then
            historyStr = '{movie = {},drama = {}}'
        end
        local historyData = loadstring('return ' .. historyStr)()
        local inTableFlag = nil
        for i, v in ipairs(historyData[destTableIndex]) do
            if v.contentId == contentId then
                inTableFlag = i
            end
        end
        if inTableFlag then
            local temp = historyData[destTableIndex][inTableFlag]
            temp.breakPoint = curTime
            table.remove(historyData[destTableIndex], inTableFlag)
            table.insert(historyData[destTableIndex], 1, temp)
        else
            table.insert(historyData[destTableIndex], 1, {
                contentId = contentId,
                nodeId = nodeId,
                objType = objType,
                breakPoint = curTime
            })
        end
        local str = Util:tostring(historyData, '', '')
        IO:fileRemove(filename)
        IO:fileWrite(filename, str)
    end
end

--上报历史记录
function uploadMyHistory()
    if getAudioPlayFlag and getAudioPlayFlag() == 1 and getAudioGParam then
        local gContParam = getAudioGParam()
        if gContParam and gContParam ~=''then
            local breakPoint
            if status == Player.status.Finished or status == Player.status.Stopped then -- 当播放结束时，断点记录为空
                breakPoint = ''
            else
                breakPoint = Player:getCurTime() or 0
            end
            local _,_,contentId = string.find(gContParam, 'contentId=(%d+);')
            local _,_,nodeId = string.find(gContParam, 'nodeId=(%d+);')
            local _,_,objType = string.find(gContParam, 'objType=([%a%d]+);')
            -- Http:request('History_upLoad', Util:getServer() .. 'msp/addHistory.msp?contId=' .. contentId .. '&nodeId=' .. nodeId .. '&totalTime=' .. Player:getTotalTime() .. '&currTime=' .. (breakPoint=='' and Player:getTotalTime() or breakPoint) .. '&playType=1' .. '&isLive=' .. (objType == 'live' and 1 or 0), 109, {useCache=0})

            --播放历史增加了离线记录功能,先记录再发请求
            local totalTime = Player:getTotalTime()
            local currTime = (breakPoint=='' and Player:getTotalTime() or breakPoint)

            --本地记录并发请求
            --参数('isAudio=true;objType=freePlay;contentId=xxx;nodeId=xxx' / 'isAudio=true;objType=live;contentId=xxx;nodeId=xxx'/'isAudio=true;objType=content;contentId=xxx;nodeId=xxx'/'isAudio=true;objType=0;contentId=xxx;nodeId=xxx')
            local hisParam = 'isAudio=true;'..gContParam

            saveNetHistory(hisParam,totalTime,tonumber(currTime))
            setHisDataUpdate()
        end
    end
end

function ListView:showItem(spriteListView,spriteChild)
    local x1,y1,w1,h1 = Sprite:computeRect(spriteListView)
    local x2,y2,w2,h2 = Sprite:computeRect(spriteChild)

    ListView.d1,ListView.d2 = x2-x1-(w1-w2)/2,y2-y1-(h1-h2)/2
    ListView.tempSprite = spriteListView
    ListView:moveList(ListView.tempSprite,0,-ListView.d2/3)
    Timer:set(11,1,"moveListOnTimer")
end

function moveListOnTimer()
    ListView:moveList(ListView.tempSprite,0,-ListView.d2/3)
    Timer:set(11,1,"moveListOnTimer2")
end

function moveListOnTimer2()
    ListView:moveList(ListView.tempSprite,0,-ListView.d2/3)
end


-- 设置节点状态
function setSpriteStatus(sprite,enable)
    if sprite and sprite ~='' then
        if enable == 1 or enable == nil then
            Sprite:setVisible(sprite,1)
            Sprite:setEnable(sprite,1)
        elseif enable == 0 then
            Sprite:setVisible(sprite,0)
            Sprite:setEnable(sprite,0)
        end
    end
end


-- 音频仓库数据存储 (param = 'isAudio=true;objType=freePlay;nodeId=xxx')
function setAudioParam(param)
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    Reg:setString(reg, 'mode',param)
end

function getAudioParam()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    local param = Reg:getString(reg, 'mode')
    return param
end

function resetAudioParam()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    Reg:setString(reg, 'mode','')
end

--设置系统音量条显示状态
function setSystemVolumeVisible(isVisible)
    if isVisible == 1 then
        dofunction(6, "", "", 1, 0)
    else
        dofunction(6, "", "", 0, 0)
    end
end

--设置音频播放标志
--在线 音频直播:flag为空或1 音频点播:flag为2
--离线 本地音频:3
--其他
function setAudioPlayFlag(flag)
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    if (not flag) or (flag == 1) then
        Reg:setInteger(reg, 'isAudioPlaying',1)
    elseif flag == 2 then
        Reg:setInteger(reg, 'isAudioPlaying',2)
    else
        Reg:setInteger(reg, 'isAudioPlaying',tonumber(flag))
    end
end

function getAudioPlayFlag()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    local param = Reg:getInteger(reg, 'isAudioPlaying')
    return param
end

function resetAudioPlayFlag()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    Reg:setInteger(reg, 'isAudioPlaying',0)

    --取消音频通知消息
    if CancelNotification then CancelNotification(1116) end
end

--设置音频场景句柄
function setAudioScene(handle)
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    Reg:setInteger(reg, 'audioScene',handle)
end

function getAudioScene()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    local param = Reg:getInteger(reg, 'audioScene')
    return param
end

function resetAudioScene()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    Reg:setInteger(reg, 'audioScene',0)
end

--设置音频界面激活标志(例如从通知栏点入)
function setAudioActiveFlag()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    Reg:setInteger(reg, 'audioActive',1)
end

function getAudioActiveFlag()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    local param = Reg:getInteger(reg, 'audioActive')
    return param
end

function resetAudioActiveFlag()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    Reg:setInteger(reg, 'audioActive',0)
end

--设置音频gParam参数，用于保存历史记录
function setAudioGParam(gParam)
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    Reg:setString(reg, 'audioGParam',gParam)
end

function getAudioGParam()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    local param = Reg:getString(reg, 'audioGParam')
    return param
end

function resetAudioGParam()
    local reg = Reg:create('Reg.com_wondertek_mobileaudio.playeryue')
    Reg:setString(reg, 'audioGParam','')
end

--判断音频是否正在播放
function isAudioPlaying()
    if getAudioPlayFlag and getAudioPlayFlag() ~= 0 then
        return 1
    else
        return 0
    end
end
--音频按钮点击后入口
function audioBtnOSS()
    if getAudioPlayFlag and getAudioPlayFlag() == 1 then
        setAudioActiveFlag()
        Scene:go(Alias.playeryue)
    elseif getAudioPlayFlag and getAudioPlayFlag() == 2 then
        setAudioActiveFlag()
        local sceneName = Scene:getNameByHandle()
        Log:write('---------audioBtnOSS()_sceneName=',sceneName)
        --只在当前页面自己切自己时，setReturn=false ，不然通知栏切换自己时淡入淡出方向和正常不一致，淡入左滑，淡出右滑
        if sceneName and string.match(sceneName,'audioplay') then
            Scene:go(Alias.audioplay,{freeDestScene=true,setReturn=false})
        else
            Scene:go(Alias.audioplay)
        end
    elseif getAudioPlayFlag and getAudioPlayFlag() == 3 then
        setAudioActiveFlag()
        Scene:go(Alias.playeryuelocal)
    elseif getAudioPlayFlag and getAudioPlayFlag() == 4 then
        setAudioActiveFlag()
        Scene:go(Alias.audioliveplay)
    end
end

--获取本地音频信息，返回结果格式为  名称,专辑,作者
function getLocalAudioFileInfo(strPath)
    if strPath ~= '' then
        dofunction(7,strPath,"",0,0)
    else
        return ''
    end
end

function popEffectShow(sprite, frameSprite, shadowSprite, displaySprite, mainSprites, effectStyle, doneCallBack)
    if Sprite:getData(sprite) ~= "" then return end
    setNodeState(sprite,1)
    Sprite:setProperty(sprite,"OnTick","popEffectOnTick")
    -- _pe_frame,_pe_shadow,_pe_display,_pe_main = frameSprite,shadowSprite,displaySprite,mainSprites
	_pe_frame,_pe_shadow,_pe_display,_pe_main="uichange", "orderShadow", "orderBg", {"titleArea","bottomshadow","_orderListView"}
    _pe_style,_pe_callback = effectStyle,doneCallBack
    setSpritesState(sprite,mainSprites,0)
    Sprite:setProperty(sprite,"data","1")
end

function popEffectClose(sprite, frameSprite, shadowSprite, displaySprite, mainSprites, effectStyle, doneCallBack)
    if Sprite:getData(sprite) ~= "" then return end
    setNodeState(sprite,1)
    Sprite:setProperty(sprite,"OnTick","popEffectOnTick")
	local mainSprites=
    setSpritesState(sprite,mainSprites,0)
    -- _pe_frame,_pe_shadow,_pe_display,_pe_main = frameSprite,shadowSprite,displaySprite,mainSprites
	 _pe_frame,_pe_shadow,_pe_display,_pe_main="uichange", "orderShadow", "orderBg", {"titleArea","bottomshadow","_orderListView"}
    _pe_style,_pe_callback = effectStyle,doneCallBack
    Sprite:setProperty(sprite,"data","-1")
end

function popEffectOnTick(sprite)
    local data = Sprite:getData(sprite)
    local state = tonumber(data)
    if not state then return end
	_pe_frame,_pe_shadow,_pe_display,_pe_main="uichange", "orderShadow", "orderBg", {"titleArea","bottomshadow","_orderListView"}
    local pe_frame,pe_display,pe_shadow = Sprite:findChild(sprite, _pe_frame),Sprite:findChild(sprite, _pe_display),Sprite:findChild(sprite, _pe_shadow)
	local _,_,w,h = Sprite:getRect(pe_frame)
    if state >= 1 and state <= 5 then
        Sprite:setProperty(pe_display, "alpha",state*50)
        Sprite:setProperty(pe_shadow, "alpha",state*25.6)
        Sprite:setProperty(sprite,"data",state+1)
        if _pe_style == 1 then
            Sprite:setRect(pe_display,0,0,w*(0.75 + state*0.05),h*(0.75 + state*0.05))
        elseif _pe_style == 2 then
            Sprite:setRect(pe_display,w*(5-state)*0.05/2,0,w*(0.75 + state*0.05),h*(0.75 + state*0.05))
        elseif _pe_style == 3 then
            Sprite:setRect(pe_display,w*(5-state)*0.05,0,w*(0.75 + state*0.05),h*(0.75 + state*0.05))
        elseif _pe_style == 4 then
            Sprite:setRect(pe_display,w*(5-state)*0.05,h*(5-state)*0.05/2,w*(0.75 + state*0.05),h*(0.75 + state*0.05))
        elseif _pe_style == 5 then
            Sprite:setRect(pe_display,w*(5-state)*0.05,h*(5-state)*0.05,w*(0.75 + state*0.05),h*(0.75 + state*0.05))
        elseif _pe_style == 6 then
            Sprite:setRect(pe_display,w*(5-state)*0.05/2,h*(5-state)*0.05,w*(0.75 + state*0.05),h*(0.75 + state*0.05))
        elseif _pe_style == 7 then
            Sprite:setRect(pe_display,0,h*(5-state)*0.05,w*(0.75 + state*0.05),h*(0.75 + state*0.05))
        elseif _pe_style == 8 then
            Sprite:setRect(pe_display,0,h*(5-state)*0.05/2,w*(0.75 + state*0.05),h*(0.75 + state*0.05))
        else
            Sprite:setRect(pe_display,w*(5-state)*0.05/2,h*(5-state)*0.05/2,w*(0.75 + state*0.05),h*(0.75 + state*0.05))
        end
        if state == 5 then
            setSpritesState(sprite,_pe_main,1)
            Sprite:setProperty(sprite,"data","")
            if _pe_callback and _pe_callback ~= "" then
                loadstring(_pe_callback..'()')()
            end
        end
    elseif state >= -5 and state <= -1 then
        setNodeState(Sprite:findChild(sprite, 'popupContent'),0)
        Sprite:setProperty(pe_display, "alpha",(5+state)*50)
        Sprite:setProperty(pe_shadow, "alpha",(5+state)*25.6)
        Sprite:setProperty(sprite,"data",state-1)
        if _pe_style == 1 then
            Sprite:setRect(pe_display,0,0,w*(1 + state*0.05),h*(1 + state*0.05))
        elseif _pe_style == 2 then
            Sprite:setRect(pe_display,w*(-state)*0.05/2,0,w*(1 + state*0.05),h*(1 + state*0.05))
        elseif _pe_style == 3 then
            Sprite:setRect(pe_display,w*(-state)*0.05,0,w*(1 + state*0.05),h*(1 + state*0.05))
        elseif _pe_style == 4 then
            Sprite:setRect(pe_display,w*(-state)*0.05,h*(-state)*0.05/2,w*(1 + state*0.05),h*(1 + state*0.05))
        elseif _pe_style == 5 then
            Sprite:setRect(pe_display,w*(-state)*0.05,h*(-state)*0.05,w*(1 + state*0.05),h*(1 + state*0.05))
        elseif _pe_style == 6 then
            Sprite:setRect(pe_display,w*(-state)*0.05/2,h*(-state)*0.05,w*(1 + state*0.05),h*(1 + state*0.05))
        elseif _pe_style == 7 then
            Sprite:setRect(pe_display,0,h*(-state)*0.05,w*(1 + state*0.05),h*(1 + state*0.05))
        elseif _pe_style == 8 then
            Sprite:setRect(pe_display,0,h*(-state)*0.05/2,w*(1 + state*0.05),h*(1 + state*0.05))
        else
            Sprite:setRect(pe_display,w*(-state)*0.05/2,h*(-state)*0.05/2,w*(1 + state*0.05),h*(1 + state*0.05))
        end
        if state == -5 then
            setNodeState(sprite,0)
            setSpritesState(sprite,_pe_main,1)
            Sprite:setProperty(sprite,"data","")
            if _pe_callback and _pe_callback ~= "" then
                loadstring(_pe_callback..'()')()
            end
        end
    else
        Sprite:setProperty(sprite,"data","")
    end
end

function setSpritesState(spriteParent,spriteTable,state)
    for i=1,#spriteTable do
        local s = Sprite:findChild(spriteParent,spriteTable[i])
        setNodeState(s,state)
    end
end

function setRequestUpdate(requestTag,requestReg)
    Reg:setString(requestReg,requestTag,"1")
end

function getRequestState(requestTag,requestReg)
    if not requestReg then return 0 end
    local requestState = Reg:getString(requestReg,requestTag)
    if requestState == "" or requestState == "1" then
        Reg:setString(requestReg,requestTag,"2")
        return 0
    else
        return 2
    end
end

-- 设置通知栏播放状态
-- result = dofunction(nType, str1, str2, param1, param2)
-- nType:9,
-- parma1 = 0为播放（当前正在播放，通知你显示播放图标）param1 = 1 为暂停（当前已暂停，通知你显示暂停图标）
function setNotificationStatus(status)
    if status == 0 then
        dofunction(9,"","",0,0)
    elseif status == 1 then
        dofunction(9,"","",0,1)
    end
end

Config:load('com_wondertek_mobileaudio')
widgetConfig:load('com_wondertek_mobileaudio')
