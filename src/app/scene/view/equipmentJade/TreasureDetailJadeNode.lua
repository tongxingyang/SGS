--
-- Author: chenzhongjie
-- 宝物玉石模块
local ListViewCellBase = require("app.ui.ListViewCellBase")
local TreasureDetailJadeNode = class("TreasureDetailJadeNode", ListViewCellBase)
local CSHelper = require("yoka.utils.CSHelper")
local UserDataHelper = require("app.utils.UserDataHelper")
local TextHelper = require("app.utils.TextHelper")
local TreasureTrainHelper = require("app.scene.view.treasureTrain.TreasureTrainHelper")
local TreasureConst = require("app.const.TreasureConst")
local LogicCheckHelper = require("app.utils.LogicCheckHelper")

function TreasureDetailJadeNode:ctor(treasureData, rangeType)
	self._treasureData = treasureData
	self._rangeType = rangeType or TreasureConst.TREASURE_RANGE_TYPE_1

	local resource = {
		file = Path.getCSB("TreasureDetailDynamicModule", "treasure"),
		binding = {}
	}
	TreasureDetailJadeNode.super.ctor(self, resource)
end

function TreasureDetailJadeNode:onCreate()
	local title = self:_createTitle()
	self._listView:pushBackCustomItem(title)

	self:_addAttrDes()

	local offset = 45
	if LogicCheckHelper.funcIsShow(FunctionConst.FUNC_TREASURE_TRAIN_TYPE3) then
		local btnWidget = self:_createButton()
		self._listView:pushBackCustomItem(btnWidget)
	else
		offset = 10
	end

	--self:_addAttrDes()

	self._listView:doLayout()
	local contentSize = self._listView:getInnerContainerSize()
	contentSize.height = contentSize.height + offset
	self._listView:setContentSize(contentSize)
	self:setContentSize(contentSize)
end

function TreasureDetailJadeNode:_createTitle()
	local title = CSHelper.loadResourceNode(Path.getCSB("CommonDetailTitleWithBg", "common"))
	if Lang.checkUI("ui4") then -- i18n ja change bg
		title = CSHelper.loadResourceNode(Path.getCSB("CommonDetailTitleWithBg2", "common")) 
		title:setImageBaseSize(cc.size(398, 37))  
	end
	title:setFontSize(24)
	title:setTitle(Lang.get("equipment_detail_title_jade"))
	local widget = ccui.Widget:create()
	local titleSize = cc.size(402, 50)
	widget:setContentSize(titleSize)
	title:setPosition(titleSize.width / 2, 30)
	widget:addChild(title)

	return widget
end

function TreasureDetailJadeNode:_addAttrDes()
	local attrInfo = TreasureTrainHelper.getTreasureJadeAttr(self._treasureData)
	if #attrInfo > 0 then
		local flag = 0
		local index = 1
		for i, data in pairs(attrInfo) do
			if data.isSuitable then
				self:_appendAttr(index, data)
				index = index + 1
				flag = 1
			end
		end
		if flag == 0 then
			self:_noAttrTip(Lang.get("jade_inject_not_effective"))
		end
	else
		self:_noAttrTip(Lang.get("jade_no_inject_jade_treasure"))
	end
end

function TreasureDetailJadeNode:_appendAttr(index, data)
	local widget = ccui.Widget:create()
	local k, value = data.type, data.value
	local name = nil
	if data.property == 1 then
		name, value = Lang.get("jade_texing"), data.description
	else
		name, value = TextHelper.getAttrBasicText(k, value)
	end
	name = TextHelper.expandTextByLen(name, 4)
	local node = CSHelper.loadResourceNode(Path.getCSB("CommonDesValue", "common"))
	node:setFontSize(20)
	node:updateUI(name .. "：", value)
	local height = 30
	if data.property == 1 then
		local h = node:setValueToRichText(value, 270)
		height = h > height and h or height
		node:setPosition(24, height - 10)
	else
		node:setPosition(24, 20)
	end
	widget:addChild(node)
	widget:setContentSize(cc.size(402, height))
	self._listView:pushBackCustomItem(widget)
end

-- 没有任何属性时的提示
function TreasureDetailJadeNode:_noAttrTip(text)
	local UIHelper = require("yoka.utils.UIHelper")
	local widget = ccui.Widget:create()
	local label = UIHelper.createLabel({text = text, fontSize = 20, color = Colors.BRIGHT_BG_TWO})
	widget:addChild(label)
	local size = label:getContentSize()
	label:setAnchorPoint(cc.p(0, 0.5))
	label:setPosition(24, 0)
	widget:setContentSize(cc.size(402, 26))
	self._listView:pushBackCustomItem(widget)
end

function TreasureDetailJadeNode:_createButton()
	local widget = ccui.Widget:create()
	local btn = CSHelper.loadResourceNode(Path.getCSB("CommonButtonLevel2Highlight", "common"))
	btn:setString(Lang.get("equipment_detail_btn_jade"))
	btn:addClickEventListenerEx(handler(self, self._onButtonJadeClicked))
	local isOpen = LogicCheckHelper.funcIsOpened(FunctionConst.FUNC_TREASURE_TRAIN_TYPE3)
	btn:setEnabled(isOpen)
	widget:addChild(btn)
	btn:setPosition(324, 0)
	widget:setContentSize(cc.size(402, 40))
	local redPoint = TreasureTrainHelper.needJadeRedPoint(self._treasureData:getId())
	btn:showRedPoint(redPoint)
	return widget
end

function TreasureDetailJadeNode:_onButtonJadeClicked()
	if TreasureTrainHelper.isOpen(FunctionConst.FUNC_TREASURE_TRAIN_TYPE3) == false then
		return
	end

	local treasureId = self._treasureData:getId()
	G_SceneManager:showScene("treasureTrain", treasureId, TreasureConst.TREASURE_TRAIN_JADE, self._rangeType, true)
end

return TreasureDetailJadeNode
