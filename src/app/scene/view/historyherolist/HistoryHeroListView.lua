
local ViewBase = require("app.ui.ViewBase")
local HistoryHeroListView = class("HistoryHeroListView", ViewBase)
local HistoryHeroListCell = require("app.scene.view.historyherolist.HistoryHeroListCell")
local HistoryHeroFragmentCell = require("app.scene.view.historyherolist.HistoryHeroFragmentCell")
local HistoryHeroConst = require("app.const.HistoryHeroConst")
local UIPopupHelper = require("app.utils.UIPopupHelper")
local TypeConvertHelper = require("app.utils.TypeConvertHelper")
local UserDataHelper = require("app.utils.UserDataHelper")
local TabScrollView = require("app.utils.TabScrollView")
local HistoryHeroDataHelper = require("app.utils.data.HistoryHeroDataHelper")

function HistoryHeroListView:ctor(index)
	self._fileNodeEmpty = nil --空置控件
	self._selectTabIndex = index or HistoryHeroConst.LIST_TYPE3 

	local resource = {
		file = Path.getCSB("HistoryHeroListView", "historyherolist"),
		size = G_ResolutionManager:getDesignSize(),
		binding = {
			_buttonSale = {
				events = {{event = "touch", method = "_onButtonSaleClicked"}}
			},
		},
	}
	HistoryHeroListView.super.ctor(self, resource)
end

function HistoryHeroListView:onCreate()
	self._topbarBase:setImageTitle("txt_sys_com_shenshou")
	local TopBarStyleConst = require("app.const.TopBarStyleConst")
	self._topbarBase:updateUI(TopBarStyleConst.STYLE_COMMON)

	self:_initTabGroup()
end

function HistoryHeroListView:onEnter()
	self._signalMerageItemMsg = G_SignalManager:add(SignalConst.EVENT_EQUIPMENT_COMPOSE_OK, handler(self, self._onSyntheticFragments))
	self._signalRedPointUpdate = G_SignalManager:add(SignalConst.EVENT_RED_POINT_UPDATE, handler(self,self._onEventRedPointUpdate))
	self._signalSellObjects = G_SignalManager:add(SignalConst.EVENT_SELL_OBJECTS_SUCCESS, handler(self, self._onSellFragmentsSuccess))

	self:_updateView()
	self:_refreshRedPoint()
end

function HistoryHeroListView:onExit()
	self._signalMerageItemMsg:remove()
	self._signalMerageItemMsg = nil

	self._signalRedPointUpdate:remove()
	self._signalRedPointUpdate = nil

	if self._signalSellObjects then
		self._signalSellObjects:remove()
		self._signalSellObjects = nil
	end
end

function HistoryHeroListView:_onEventRedPointUpdate(event,funcId,param)
	if funcId == FunctionConst.FUNC_PET_LIST then
		self:_refreshRedPoint()
    end
end

function HistoryHeroListView:_refreshRedPoint()
	--local redPointShow = G_UserData:getFragments():hasRedPoint({fragType = TypeConvertHelper.TYPE_PET}) --10为神兽
	--self._nodeTabRoot:setRedPointByTabIndex(HistoryHeroConst.LIST_TYPE2,redPointShow)
end

function HistoryHeroListView:_initTabGroup()
	local scrollViewParam = {
		template = HistoryHeroListCell,
		updateFunc = handler(self, self._onItemUpdate),
		selectFunc = handler(self, self._onItemSelected),
		touchFunc = handler(self, self._onItemTouch),
	}
	if self._selectTabIndex == HistoryHeroConst.LIST_TYPE2 or 
		self._selectTabIndex == HistoryHeroConst.LIST_TYPE4 then
		scrollViewParam.template = HistoryHeroFragmentCell
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE3 then
		scrollViewParam.template = HistoryHeroListCell
	end
	self._tabListView = TabScrollView.new(self._listView, scrollViewParam)

	local tabNameList = {
		-- Lang.get("historyherolist_tab_1"),
		-- Lang.get("historyherolist_tab_2"),
		Lang.get("historyherolist_tab_3"),
		-- Lang.get("historyherolist_tab_4"),
	}

	local param = {
		callback = handler(self, self._onTabSelect),
		textList = tabNameList,
	}

	self._nodeTabRoot:recreateTabs(param)
end

function HistoryHeroListView:_onTabSelect(index, sender)
	if index == self._selectTabIndex then
		return
	end

	self._selectTabIndex = index
	self:_updateView()
	self:_refreshRedPoint()
end

function HistoryHeroListView:_updateView()
	self._fileNodeBg:setTitle(Lang.get("historyhero_typeicon_"..self._selectTabIndex))
	local count1 = G_UserData:getPet():getPetTotalCount()
	local count2 = UserDataHelper.getPetListLimitCount()
	self._fileNodeBg:setCount(Lang.get("common_list_count", {count1 = count1, count2 = count2}))
	self._fileNodeBg:showCount(self._selectTabIndex == HistoryHeroConst.LIST_TYPE1)
	self._buttonSale:setVisible(self._selectTabIndex == HistoryHeroConst.LIST_TYPE2)
	self:_initData()

	if self._count == 0 then
		self._tabListView:hideAllView()
		local emptyType = self:_getEmptyType()
		self._fileNodeEmpty:updateView(emptyType)
		self._fileNodeEmpty:setVisible(true)
	else
		local scrollViewParam = {
			template = HistoryHeroListCell,
			updateFunc = handler(self, self._onItemUpdate),
			selectFunc = handler(self, self._onItemSelected),
			touchFunc = handler(self, self._onItemTouch),
		}
		if self._selectTabIndex == HistoryHeroConst.LIST_TYPE2 or 
		self._selectTabIndex == HistoryHeroConst.LIST_TYPE4 then
			scrollViewParam.template = HistoryHeroFragmentCell
		elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE3 then
			scrollViewParam.template = HistoryHeroListCell
		end
		self._tabListView:updateListView(self._selectTabIndex, self._count, scrollViewParam)
		self._fileNodeEmpty:setVisible(false)
	end
end

function HistoryHeroListView:_getEmptyType()
	local emptyType = nil
	if self._selectTabIndex == HistoryHeroConst.LIST_TYPE1 then
		emptyType = 14
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE2 then
		emptyType = 15 
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE3 then
		emptyType = 16
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE4 then
		emptyType = 17
	end
	return emptyType
end

function HistoryHeroListView:_initData()
	self._datas = {}
	if self._selectTabIndex == HistoryHeroConst.LIST_TYPE1 then		-- 1. 名将数据
		self._datas = G_UserData:getHistoryHero():getHeroList()
		dump(self._datas)
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE2 then	-- 2. 名将碎片数据
		self._datas = G_UserData:getFragments():getFragListByType(TypeConvertHelper.TYPE_HISTORY_HERO, nil)
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE3 then	-- 3. 武器数据
		self._datas = G_UserData:getHistoryHero():getWeaponList()
		self._datas = HistoryHeroDataHelper.sortWeaponList(self._datas)
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE4 then	-- 4. 武器碎片数据
		self._datas = G_UserData:getFragments():getFragListByType(TypeConvertHelper.TYPE_HISTORY_HERO_WEAPON, nil)
	end

	self._count = math.ceil(table.nums(self._datas) / 2)
end

function HistoryHeroListView:_onItemUpdate(item, index)
	local index = index * 2
	local data1 = {
		cfg = nil,
	}
	local data2 = {
		cfg = nil,
	}
	if self._selectTabIndex == HistoryHeroConst.LIST_TYPE3 then -- 3. 武器
		local idx = 0
		for key, value in pairs(self._datas) do
			idx = idx + 1
			if idx == (index + 1) then
				data1.cfg = value
			elseif idx == (index + 2) then
				data2.cfg = value
			end
		end
		data1.tabIndex = self._selectTabIndex
		data2.tabIndex = self._selectTabIndex
		item:update(data1, data2)
	else														-- 1名将、2名将碎片、4武器碎片
		data1.cfg = self._datas[index + 1]
		data2.cfg = self._datas[index + 2]
		if data1 ~= nil and next(data1) ~= nil then
			data1.tabIndex = self._selectTabIndex
		end
		if data2 ~= nil and next(data2) ~= nil then
			data2.tabIndex = self._selectTabIndex
		end
		item:update(data1, data2)
	end
end

function HistoryHeroListView:_onItemSelected(item, index)
end

function HistoryHeroListView:_onItemTouch(index, t)
	local index = index * 2 + t
	if self._selectTabIndex == HistoryHeroConst.LIST_TYPE1 then
		local baseId = self._datas[index]:getId()
		G_SceneManager:showScene("historyhero", baseId)				-- 1. 名将强化
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE2 then -- 2. 名将碎片合成
		local baseId = self._datas[index]:getId()
		UIPopupHelper.popupFragmentDlg(baseId)
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE3 then -- 3. 武器强化
	elseif self._selectTabIndex == HistoryHeroConst.LIST_TYPE4 then -- 4. 武器碎片合成
		local baseId = self._datas[index]:getId()
		UIPopupHelper.popupFragmentDlg(baseId)
	end
end

function HistoryHeroListView:_onSyntheticFragments(id, message)
	local fragId = rawget(message,"id")
	local itemSize = rawget(message,"num")
	if fragId and fragId > 0 then
    --[[
		local itemParam = TypeConvertHelper.convert(TypeConvertHelper.TYPE_FRAGMENT, fragId)
		local petId = itemParam.cfg.comp_value
		local count = itemSize
		G_SceneManager:showScene("petMerge", petId, count)
    ]]
		self:_updateView()
	end
end

function HistoryHeroListView:_onButtonSaleClicked()
	if self._datas and #self._datas == 0 then
		G_Prompt:showTip(Lang.get("lang_sellfragment_fragment_empty"))
		return
	end
	local PopupSellFragment = require("app.scene.view.sell.PopupSellFragment")
	local popupSellFragment = PopupSellFragment.new(PopupSellFragment.PET_FRAGMENT_SELL)
	popupSellFragment:openWithAction()
end

function HistoryHeroListView:_onSellFragmentsSuccess()
	self:_updateView()
	self:_refreshRedPoint()
end

return HistoryHeroListView
