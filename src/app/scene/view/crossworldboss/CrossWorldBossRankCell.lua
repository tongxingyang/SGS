--跨服军团boss
local ListViewCellBase = require("app.ui.ListViewCellBase")
local CrossWorldBossRankCell = class("CrossWorldBossRankCell", ListViewCellBase)

local TypeConvertHelper = require("app.utils.TypeConvertHelper")
local UserDataHelper = require("app.utils.UserDataHelper")
local ArenaConst    = require("app.const.ArenaConst")
local CrossWorldBossConst = require("app.const.CrossWorldBossConst")
local TextHelper = require("app.utils.TextHelper")

function CrossWorldBossRankCell:ctor()
    self._nodeGuild = nil
    self._nodePersonal = nil
    local resource = {
        file = Path.getCSB("CrossWorldBossRankCell", "crossworldboss"),
        binding = {
		}
    }

    CrossWorldBossRankCell.super.ctor(self, resource)
end

function CrossWorldBossRankCell:onCreate()
	local size = self._resourceNode:getContentSize()
    self:setContentSize(size.width, size.height)
    -- 多语言处理
    self:_dealPosByI18n()
end

function CrossWorldBossRankCell:updateUI(index, data, tabIndex)
    self._cellData = data
    if data.rank <= 3 and data.rank > 0 then
		self:updateImageView("Image_rank_bk", { visible = true,  texture = Path.getComplexRankUI("img_qizhi0"..data.rank)})
        
        self._textRank:setColor(CrossWorldBossConst.RANK_COLOR[data.rank])
        self._textRank:enableOutline(CrossWorldBossConst.RANK_OUTLINE_COLOR[data.rank], 2)
	else
        self:updateImageView("Image_rank_bk",{ visible = true, texture = Path.getComplexRankUI("img_qizhi04") })

        self._textRank:setColor(CrossWorldBossConst.RANK_COLOR[4])
        self._textRank:enableOutline(CrossWorldBossConst.RANK_OUTLINE_COLOR[4], 2)
    end
    
    self._textRank:setString(data.rank)

    self:updateLabel("Image_bk", {visible = (data.rank % 2 == 0)})

	self._nodeGuild:setVisible(false)
    self._nodePersonal:setVisible(false)
    if tabIndex == CrossWorldBossConst.TAB_INDEX_GUILD then
        self._nodeGuild:setVisible(true)
        self._textGuildName:setString(data.name)
        --self._textGuildName:setColor(getRankColor(data.rank))
        self._textGuildCount:setString(data.num)
        self._textServerName:setString(data.sname)
        --self._textServerName:setColor(getRankColor(data.rank))
        self._textGuildPoint:setString(TextHelper.getAmountText(data.point))
    else
        self._nodePersonal:setVisible(true)
        self._playerName:setString(data.name)
        --self._playerName:setColor(getRankColor(data.rank))
        self._textServerName1:setString(data.sname)
        --self._textServerName1:setColor(getRankColor(data.rank))
        self._textPoint:setString(TextHelper.getAmountText(data.point))
    end
end

-- i18n change lable
function CrossWorldBossRankCell:_dealPosByI18n()
	if not Lang.checkLang(Lang.CN) then
        local UIHelper  = require("yoka.utils.UIHelper")
		local text_total_point = UIHelper.seekNodeByName(self._nodePersonal,"Text_total_point")
        text_total_point:setPositionX(text_total_point:getPositionX()+18)
        self._textPoint:setPositionX(self._textPoint:getPositionX()+18)
        -- 
        self._textGuildCount:setPositionX(self._textGuildCount:getPositionX()+30)
        self._textGuildPoint:setPositionX(self._textGuildPoint:getPositionX()+30)
		local Text_people = UIHelper.seekNodeByName(self._nodeGuild,"Text_people")
        Text_people:setPositionX(Text_people:getPositionX() + 18)
		local Text_total_point = UIHelper.seekNodeByName(self._nodeGuild,"Text_total_point")
        Text_total_point:setPositionX(Text_total_point:getPositionX() + 18)

	end
end
return CrossWorldBossRankCell
