--
-- Author: hedl
-- Date: 2017-5-2 13:50:59
--

local ListViewCellBase = require("app.ui.ListViewCellBase")
local VipPrivilegeView = class("VipPrivilegeView", ListViewCellBase)
local VipPrivilegeCell = require("app.scene.view.vip.VipPrivilegeCell")
local TypeConvertHelper = require("app.utils.TypeConvertHelper")
local UserDataHelper = require("app.utils.UserDataHelper")
local UIPopupHelper	 = require("app.utils.UIPopupHelper")


function VipPrivilegeView:ctor()
	self._nodeTabRoot = nil --nodeTab根节点
	--左边控件
	self._listViewTexts = nil --vip描述列表
    self._textVipDesc	= nil --vip等级描述
    self._imgGiftLabel  = nil
	--数据
	self._vipItemData = nil
    local resource = {
        file = Path.getCSB("VipPrivilegeView", "vip"),
        binding = {
		}
	}
	if Lang.checkUI("ui4") then
		resource.file = Path.getCSB("PopupPrivilegePageItemCell", "vip")
	end
    VipPrivilegeView.super.ctor(self, resource)
end

function VipPrivilegeView:onCreate()
	-- i18n change lable
	self:_dealByI18n()
	if not Lang.checkLang(Lang.CN) then
		self:_swapImageByI18n()
	end
	local size = self._resourceNode:getContentSize()
	self:setContentSize(size.width, size.height)
	self._listViewTexts:setSwallowTouches(false) 
end

function VipPrivilegeView:onEnter()
end

function VipPrivilegeView:onExit()
end

function VipPrivilegeView:updateUI(vipItemData)
    local vipLevel = vipItemData:getId()

	if not Lang.checkUI("ui4") then
		if vipLevel < 10 then
			self._imgGiftLabel:setPositionX(11)
		else
			self._imgGiftLabel:setPositionX(27)
		end
	end

	
	self._vipItemData = vipItemData
	self._listViewTexts:clearAll()

	if Lang.checkUI("ui4") then
		self._textVipDesc:setString(Lang.get("vip_privilege_page_title", {level = vipLevel}))
	else
		self._textVipDesc:setString(Lang.get("lang_vip_privilege_title_level", {level = vipLevel}))
	end
	
	local privilegeList = vipItemData:getVipPrivilegeList()
	--对特权列表进行排序
	table.sort(privilegeList, function (a, b)
		if a.show ~= b.show then
			return a.show == 2
		elseif a.order ~= b.order then
			return a.order < b.order
		else
			return a.type < b.type
		end
	end)

	for i, value in ipairs(privilegeList) do
		local vipPrivilegeCell = VipPrivilegeCell.new()
		if value.show == 2 then
			vipPrivilegeCell:updateUI(value.name, value.description, true)
		else
			vipPrivilegeCell:updateUI(value.name, value.description, false)
		end
		self._listViewTexts:pushBackCustomItem(vipPrivilegeCell)
	end
end


-- i18n change lable
function VipPrivilegeView:_dealByI18n()
	if Lang.checkUI("ui4") then
		return
	end
	if not Lang.checkLang(Lang.CN) then
		local UIHelper  = require("yoka.utils.UIHelper")
		local size = self._listViewTexts:getContentSize()	
		self._listViewTexts:setContentSize(cc.size(size.width + 300,size.height))
		self._listViewTexts:setPositionX(	self._listViewTexts:getPositionX() - 300 * 0.5- 40)
	end
end
-- i18n change lable
function VipPrivilegeView:_swapImageByI18n()
	if Lang.checkUI("ui4") then
		return
	end
	if not Lang.checkLang(Lang.CN) then
		local UIHelper  = require("yoka.utils.UIHelper")
	    self._imgGiftLabel = UIHelper.swapWithLabel(self._imgGiftLabel,{
			 style = "vip_1",
			 text = Lang.getImgText("vip_txt03") ,
		})

    end
end

return VipPrivilegeView
