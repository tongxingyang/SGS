--@Author:Conley
local ActivitySubView = require("app.scene.view.activity.ActivitySubView")
local OpenServerFundItemCell = import(".OpenServerFundItemCell")
local TabButtonGroup = require("app.utils.TabButtonGroup")
local UIHelper = require("yoka.utils.UIHelper")
local ActivityOpenServerFundConst = require("app.const.ActivityOpenServerFundConst")
local UserDataHelper = require("app.utils.UserDataHelper")
local OpenServerFundView = class("OpenServerFundView", ActivitySubView)
local RedPointHelper = require("app.data.RedPointHelper")

OpenServerFundView.FUND_TYPE_LIST = {ActivityOpenServerFundConst.FUND_TYPE_GROW ,
	ActivityOpenServerFundConst.FUND_TYPE_SERVER_REWARD}

OpenServerFundView.FUND_RMB_IMGS = {[30] = "img_chengzhangjijin_zi03",[50] = "img_chengzhangjijin_zi04",[98] = "img_chengzhangjijin_zi05"}--人民币图片
OpenServerFundView.FUND_GOLD_IMGS = {[3000] = "img_chengzhangjijin_zi01",[5000] = "img_chengzhangjijin_zi02",[9800] = "img_chengzhangjijin_zi06",[10800] = "img_chengzhangjijin_zi07"}--元宝图片


local NPC_DIALOGUE_RICH_TEXT_WIDTH = 330
local MAX_DIGIT_NUMBER = 4--购买人数的数字位数


-- i18n ja change CSB,add param isFromVip
function OpenServerFundView:ctor(mainView,activityId,showFundGroup,isFromVip)
	self._mainView = mainView
	self._activityId = activityId
	self._paramShowFundGroup = showFundGroup
	self._listItemSource = nil
	self._commonBuy = nil--充值按钮
	self._imageTotalNum = nil--基金人数的背景
	self._tabGroup = nil
	self._listDatas = nil
	self._selectTabIndex = nil
	self._peopleLabels = {} --基金人数的Label数组

	self._textVip = nil--vip
	self._nodeTotalGoldRichText = nil--领取总元宝数
	self._totalGoldRichText = nil

	self._textMinVip = nil
	self._textVip = nil
	self._imageFanli = nil
	self._textCurrStage = nil

    local resource = {
        file = Path.getCSB("OpenServerFundView", "activity/openserverfund"),
      	binding = {
			_commonBuy = {
				events = {{event = "touch", method = "_onBuyFund"}}
			}
		},
	}
	
	-- i18n ja change CSB
	if Lang.checkUI("ui4") and isFromVip then
		self._isFromVip = isFromVip
		resource.file = Path.getCSB("VipViewServerFund", "vip")
		resource.binding = {}
	end

    OpenServerFundView.super.ctor(self, resource)
end

function OpenServerFundView:_pullData()
	local hasActivityServerData = G_UserData:getActivity():hasActivityData(self._activityId)
	if not hasActivityServerData  then
		G_UserData:getActivity():pullActivityData(self._activityId)
	end
	return hasActivityServerData
end

function OpenServerFundView:onCreate()
	--设置按钮内容
	if not Lang.checkLang(Lang.CN)  then 
		self:_swapImageByI18n()
	end

	self:_dealI18n()	
	
	--local imgPath = Path.getChatRoleRes("216")
	--self._imageJc:loadTexture(imgPath)

	self:_initFundPeopleView()

	self:_initTabGroup()
	self:_initListView(self._listItemSource)
end

function OpenServerFundView:onEnter()
	self._signalWelfareFundOpenServerGetInfo = G_SignalManager:add(SignalConst.EVENT_WELFARE_FUND_OPEN_SERVER_GET_INFO,
		handler(self, self._onEventWelfareFundOpenServerGetInfo))
	self._signalWelfareFundOpenServerGetReward = G_SignalManager:add(SignalConst.EVENT_WELFARE_FUND_OPEN_SERVER_GET_REWARD,
		 handler(self, self._onEventWelfareFundOpenServerGetReward ))
	self._signalServerRecordChange = G_SignalManager:add(SignalConst.EVENT_SERVER_RECORD_CHANGE, handler(self, self._onServerRecordChange))

	self._signalRedPointUpdate = G_SignalManager:add(SignalConst.EVENT_RED_POINT_UPDATE, handler(self,self._onEventRedPointUpdate))
	self._signalVipExpChange = G_SignalManager:add(SignalConst.EVENT_VIP_EXP_CHANGE, handler(self,self._onEventVipExpChange))


	local hasServerData = self:_pullData()
	if hasServerData and G_UserData:getActivityOpenServerFund():isExpired() then
		G_UserData:getActivity():pullActivityData(self._activityId)
	end


	self:_refreshVipView()
	self:_refreshBuyFundView()
	self:_refreshFundPeopleView()

	
	if not self._selectTabIndex then
		self._tabGroup:setTabIndex(1)
	else
		self:_refreshListData()
	end
	

	self:_refreshRedPoint()
end

function OpenServerFundView:onExit()
	self._signalWelfareFundOpenServerGetInfo:remove()
	self._signalWelfareFundOpenServerGetInfo = nil
	self._signalWelfareFundOpenServerGetReward:remove()
	self._signalWelfareFundOpenServerGetReward = nil

	self._signalServerRecordChange:remove()
    self._signalServerRecordChange = nil

	self._signalRedPointUpdate:remove()
	self._signalRedPointUpdate = nil

	self._signalVipExpChange:remove()
	self._signalVipExpChange = nil


end

function OpenServerFundView:_refreshRedPoint()
	for k,fundType in ipairs(OpenServerFundView.FUND_TYPE_LIST) do
		local redPointShow = RedPointHelper.isModuleSubReach(FunctionConst.FUNC_WELFARE,"openServerFund",{fundType,self._paramShowFundGroup} )
		self._tabGroup:setRedPointByTabIndex(k,redPointShow)
	end
end


function OpenServerFundView:_onEventRedPointUpdate(event,funcId,param)
	if funcId ~= FunctionConst.FUNC_WELFARE then
		return
	end
	if not param or type(param) ~= 'table' then
		return
	end
	local ActivityConst = require("app.const.ActivityConst")
	if param.actId ==  ActivityConst.ACT_ID_OPEN_SERVER_FUND  then
		self:_refreshRedPoint()
    end
end

function OpenServerFundView:_onEventWelfareFundOpenServerGetInfo(event,id,message)
	--刷新列表
	self:refreshData()

end

function OpenServerFundView:_onEventWelfareFundOpenServerGetReward(event,id,message)
	local fundId = message.id--领取的id

	self:_refreshListData()
	self:_refreshBuyFundView()


	if not self:isInShow() then--非当前显示的活动，不展示奖励
		return
	end

	--显示奖励弹窗
	local actOpenServerUnitData = G_UserData:getActivityOpenServerFund():getUnitDataById(fundId)
	if actOpenServerUnitData then
		local cfg = actOpenServerUnitData:getConfig()
		local awards  = {
			{type =  cfg.reward_type,value = cfg.reward_value,size = cfg.reward_size}
		}
		if awards then
			G_Prompt:showAwards(awards)
		end
	end
end

function OpenServerFundView:_onEventVipExpChange()
	self:_refreshVipView()
	self:_refreshBuyFundView()
end

function OpenServerFundView:_onServerRecordChange(event)
	--刷新全服奖励列表和购买人数
	self:_refreshListData()
	self:_refreshFundPeopleView()
end


function OpenServerFundView:_onGoRechargeBtnClick()
	local WayFuncDataHelper = require("app.utils.data.WayFuncDataHelper")
	WayFuncDataHelper.gotoModuleByFuncId(FunctionConst.FUNC_RECHARGE)
end

function OpenServerFundView:_initTabGroup()
	local param = {
		rootNode = nil,
		isVertical = 2,
		callback = handler(self, self._onTabSelect),
		textList = Lang.get("lang_activity_fund_tab_names"),
	}
	self._tabGroup:recreateTabs(param)
end

function OpenServerFundView:_refreshVipView()
	local vip =  G_UserData:getVip():getLevel()
	self._textVip:setString(tostring(vip))
	local lv2 =  G_UserData:getActivityOpenServerFund():getGrowFundNeedVipLevel()
	self._textMinVip:setString(tostring(lv2))
end


--初始化参与基金人数
function OpenServerFundView:_initFundPeopleView()
	for k = 1,MAX_DIGIT_NUMBER,1 do
		local node = self._imageTotalNum:getChildByName("AtlasLabel_"..tostring(k))
		table.insert( self._peopleLabels, node )
	end
end


--刷新参与基金人数
function OpenServerFundView:_refreshFundPeopleView()
	local fundNum = G_UserData:getActivityOpenServerFund():getFundNum()
	local numArr = UserDataHelper.splitNumber(fundNum)
	for k,v in ipairs(numArr) do
		local label = self._peopleLabels[k]
		label:setString(tostring(numArr[k]))
	end
end

function OpenServerFundView:_getListViewData(index)
	local fundType = OpenServerFundView.FUND_TYPE_LIST[index]
	return G_UserData:getActivityOpenServerFund():getUnitDataListByFundType(fundType,self._paramShowFundGroup)
end

function OpenServerFundView:_onTabSelect(index, sender)
	if self._selectTabIndex == index then
		return
	end
	self._selectTabIndex = index
	local listViewData = self:_getListViewData(index)
	self._listDatas = listViewData
	self:_refreshListView(self._listItemSource ,listViewData)
end

function OpenServerFundView:_initListView(listView)
	listView:setTemplate(OpenServerFundItemCell)
	listView:setCallback(handler(self, self._onItemUpdate), handler(self, self._onItemSelected))
	listView:setCustomCallback(handler(self, self._onItemTouch))
end

function OpenServerFundView:_refreshListView(listView,itemList)
	local lineCount = #itemList
	listView:clearAll()
	listView:resize(lineCount)
	listView:jumpToTop()
end

function OpenServerFundView:_refreshItemNodeByIndex(index)
	local itemNode = self:_findItemNodeByIndex(index)
	if itemNode then
		local data = self._listDatas[index]
		itemNode:updateUI(data)
	end
end

--return:找不到返回nil
function OpenServerFundView:_findIndexByFundId(fundId)
	if not self._listDatas then
		return nil
	end
	for k,v in ipairs(self._listDatas) do
		if v:getId() == fundId then
			return k
		end
	end
	return nil
end

function OpenServerFundView:_findItemNodeByIndex(index)
	local lineIndex = index
	local items = self._listItemSource:getItems()
	if not items then
		return nil
	end
	for k,v in ipairs(items) do
		if v:getTag() == index -1 then
			return v
		end
	end
	return nil
end

function OpenServerFundView:_getListDatas()
	return  self._listDatas
end

function OpenServerFundView:_onItemUpdate(item, index)
	local itemList = self:_getListDatas()
	local itemData = itemList[index+1]
	item:updateUI(itemData)
end

function OpenServerFundView:_onItemSelected(item, index)
	logWarn("OpenServerFundView:_onItemSelected ")
end

function OpenServerFundView:_onItemTouch(index, itemPos)
	logWarn("OpenServerFundView:_onItemTouch "..tostring(index).." "..tostring(itemPos))
	local data = self._listDatas[itemPos+1]
	local cfg = data:getConfig()
	local ActivityDataHelper = require("app.utils.data.ActivityDataHelper")
	if ActivityDataHelper.checkPackBeforeGetActReward2(data) then
	 	G_UserData:getActivityOpenServerFund():c2sActFund(cfg.id)
	end
end

function OpenServerFundView:_refreshListData()
	local index = self._selectTabIndex
	local listViewData = self:_getListViewData(index)
	self._listDatas = listViewData
	self:_refreshListView(self._listItemSource ,listViewData)
end

function OpenServerFundView:refreshData()
	self:_refreshListData()

	self:_refreshFundPeopleView()
	self:_refreshBuyFundView()
end


function OpenServerFundView:_onBuyFund(sender)
	--V3才能购买
	local isVipEnough = G_UserData:getActivityOpenServerFund():isVipEnoughForGrowFund()
	if not isVipEnough then
		self:_onGoRechargeBtnClick()
		return
	end

	--已经购买
	if G_UserData:getActivityOpenServerFund():isHasBuyCurrFund(self._paramShowFundGroup) then
		return
	end
	G_UserData:getActivityOpenServerFund():c2sBuyFund(self._paramShowFundGroup)
end


function OpenServerFundView:_refreshBuyFundView()
	local hasBuy = G_UserData:getActivityOpenServerFund():isHasBuyCurrFund(self._paramShowFundGroup)
	local group = self._paramShowFundGroup or G_UserData:getActivityOpenServerFund():getCurrGroup()
	local groupInfo = G_UserData:getActivityOpenServerFund():getGroupInfo(group)

	local rmb = groupInfo.payCfg.rmb
	local totalGold = tonumber(groupInfo.config.txt)
	local isVipEnough = G_UserData:getActivityOpenServerFund():isVipEnoughForGrowFund()

	self._imageBuy:setVisible(hasBuy)
	self._commonBuy:setVisible(not hasBuy)

	if not Lang.checkLang(Lang.CN)  then
		local UIHelper  = require("yoka.utils.UIHelper")
        local _,currencyStr = UIHelper.convertCurrency(rmb)
		currencyStr = UIHelper.convertDollar(currencyStr)
		self._commonBuy:setString(isVipEnough and Lang.get("lang_activity_fund_buy_fund",{value = currencyStr}) or
			Lang.get("lang_activity_fund_recharge")
		)
	else
		self._commonBuy:setString(isVipEnough and Lang.get("lang_activity_fund_buy_fund",{value = rmb}) or
			Lang.get("lang_activity_fund_recharge")
		)
	end	
	

	if not Lang.checkLang(Lang.CN)  then
		self._imageFanli:setPositionX(group > 1 and 110 or 160)
	else
		self._imageFanli:setPositionX(group > 1 and 110 or 160)
	end
	self._imageFanli:setScale(group > 1 and 0.91 or 1)
	self._textCurrStage:setString(Lang.get("lang_activity_fund_stage",{value = group}))
	self._textCurrStage:setVisible(group > 1)


	if not Lang.checkLang(Lang.CN)  then
		local UIHelper  = require("yoka.utils.UIHelper")
        local currencyStr = UIHelper.convertCurrency(rmb)
		currencyStr = UIHelper.convertDollar(currencyStr)

		self._imageRmb:setString(currencyStr)
		self._imageTotalRmb:setString(totalGold.. Lang.getImgText("gold") )
		
		local textCurr2 = UIHelper.seekNodeByName(self._nodeFundDes,"TextCurr2")
		textCurr2:setAnchorPoint(cc.p(0,0.5))
		
		textCurr2:setPositionX(self._imageRmb:getPositionX() + self._imageRmb:getContentSize().width+2 )
	else
		self._imageRmb:loadTexture(Path.getActivityTextRes(OpenServerFundView.FUND_RMB_IMGS[rmb]))
		self._imageTotalRmb:loadTexture(Path.getActivityTextRes(OpenServerFundView.FUND_GOLD_IMGS[totalGold]))
	end

	--self._textRmb:setString(Lang.get("common_rmb",{num = rmb}))
	--self._textTotalRmb:setString(Lang.get("common_rmb",{num = totalGold}) )
	--self._textRmb:setString(Lang.get("common_rmb",{num = rmb}))
	--self._textTotalRmb:setString(Lang.get("common_rmb",{num = totalGold}) )
end

-- i18n change lable
-- i18n change lable
function OpenServerFundView:_dealI18n()
	

	if not Lang.checkLang(Lang.CN)  then
		local UIHelper  = require("yoka.utils.UIHelper")
		local textCurr2 = UIHelper.seekNodeByName(self._nodeVip,"TextCurr")
		local textCurr3 = UIHelper.seekNodeByName(self._nodeVip,"TextCurr2")
		logWarn("xxs "..self._textMinVip:getWidth())
		textCurr3:setAnchorPoint(cc.p(0,0.5))
		textCurr3:setPositionX(self._textMinVip:getWidth()+self._textMinVip:getPositionX())
		self._textVip:setPositionX(textCurr2:getPositionX()+textCurr2:getContentSize().width)
		
		self._nodeVip:setPositionX(self._nodeVip:getPositionX()+25)
		self._nodeFundDes:setPositionX(self._nodeFundDes:getPositionX()-20)

		local textCurr = UIHelper.seekNodeByName(self._nodeFundDes,"TextCurr")
		local fundDesTextCurr2 = UIHelper.seekNodeByName(self._nodeFundDes,"TextCurr2")
		
		if Lang.checkLang(Lang.ZH) then
			fundDesTextCurr2:setFontSize(fundDesTextCurr2:getFontSize()+4)
			textCurr:setFontSize(textCurr:getFontSize()+4)
			self._imageRmb:setFontSize(self._imageRmb:getFontSize()+4)
			self._imageTotalRmb:setFontSize(self._imageRmb:getFontSize()+4)
			textCurr:setPositionY(textCurr:getPositionY()-8)
			self._imageTotalRmb:setPositionY(self._imageTotalRmb:getPositionY()-8)
		end

		self._imageTotalRmb:setPositionX(textCurr:getPositionX() +textCurr:getContentSize().width+2)
	end
end

-- i18n change lable
function OpenServerFundView:_swapImageByI18n()
	if not Lang.checkLang(Lang.CN) then
		local UIHelper  = require("yoka.utils.UIHelper")
		local image1 = UIHelper.seekNodeByName(self,"Image_1")
	    image1 = UIHelper.swapWithLabel(image1,{
			 style = "text_1",
			 text = Lang.getImgText("txt_com_shop_tips01") ,
		})
		
		-- 越南隐藏适度游戏提示
		if Lang.checkLang(Lang.VN) then
			image1:setVisible(false)
		end

		local children = self._imageTotalNum:getChildren()
		self._imageTotalNum = UIHelper.swapWithLabel(self._imageTotalNum,{
			style = "fund_1",
			text = Lang.getImgText("chengzhangjijin_yigoumairenshu") ,
			fontSize = 24,
		})
		for k,v in ipairs(children) do
			v:removeFromParent()
		if not Lang.checkLang(Lang.ZH) then
				v:setPositionX(v:getPositionX()+35)
				v:setPositionY(v:getPositionY()-2)
			end
			self._imageTotalNum:addChild(v)
		end

		self._imageBuy = UIHelper.swapSignImage(self._imageBuy,
		{ 
			 style = "signet_8", 
			 text = Lang.getImgText("img_yigoumai02") ,
			 anchorPoint = cc.p(0.5,0.5),
			 rotation = -10,
		},Path.getTextSignet("img_common_lv"))


		self._textCurrStage = UIHelper.swapWithLabel(self._textCurrStage,
			{ 
				style = "fund_2", 
			}
		)
		
		self._imageRmb = UIHelper.swapWithLabel(self._imageRmb,
			{ 
				style = "pay_3", 
			}
		)

		self._imageTotalRmb = UIHelper.swapWithLabel(self._imageTotalRmb,
			{ 
				style = "pay_3", 
			}
		)
    end
end


return OpenServerFundView
