--提示
--奖励领取提示
local PromptRewards = class("PromptRewards")
local CSHelper  = require("yoka.utils.CSHelper")
local Queue = require("app.utils.Queue")
local ComponentIconHelper = require("app.ui.component.ComponentIconHelper")

function PromptRewards:ctor()
    self._queue = Queue.new(20)
    self._isStart = nil
    self._curViewQueue = Queue.new(10)
end


---==========================
---获取奖励弹窗，但以类似提示的样式弹出
---@awards 奖励列表
---==========================
function PromptRewards:show(awards)



    assert(awards or type(awards) == "table", "Invalid awards " .. tostring(awards))

    if #awards == 0 then
        print("awards length is 0")
        return
    end

    for _, v in ipairs(awards) do
        self._queue:push(v)
    end

    if not self._isStart then
        self:_start()
    end
end

function PromptRewards:_start()
    if not self._signalChangeScene then
        self._signalChangeScene = G_SignalManager:add(SignalConst.EVENT_CHANGE_SCENE, handler(self, self._onEventChangeScene))
    end
    self._isStart = true
    self:_next()
end

function PromptRewards:_clear()
    if self._signalChangeScene then
        self._signalChangeScene:remove()
        self._signalChangeScene = nil
    end

    local curViewInfo = self._curViewQueue:pop()
    while (curViewInfo ~= nil) do
        curViewInfo.effect:stop()
		--i18n
        if not tolua.isnull(curViewInfo.view) then
            curViewInfo.view:runAction(cc.RemoveSelf:create())
        end
        curViewInfo = self._curViewQueue:pop()
    end

    self._curViewQueue:clear()
    self._queue:clear()
    self._isStart = nil
end


function PromptRewards:_onEventChangeScene()
    self:_clear()
end

function PromptRewards:_createRewardAndRun(award)
    assert(type(award) == "table" or award.type or award.value or award.size, "Invalid award " .. tostring(award))
    local view =  nil
    if Lang.checkUI("ui4") then
        view =  CSHelper.loadResourceNode(Path.getCSB("PromptRewardNode2", "common"))
    else
        view =  CSHelper.loadResourceNode(Path.getCSB("PromptRewardNode", "common"))
    end
    local item = view:getSubNodeByName("Item")
    local itemName = view:getSubNodeByName("ItemName")
    local itemNum = view:getSubNodeByName("ItemNum")
    local icon = ComponentIconHelper.createIcon(award.type,award.value,award.size)
    icon:setScale(0.8)
    item:addChild(icon)

   

    if not Lang.checkLang(Lang.CN) then
        local bg = view:getSubNodeByName("bg")
        local size = bg:getContentSize()
        local addWidth = 48
        local itemLeftMove = 52
       
        bg:setContentSize(cc.size(size.width+addWidth,size.height))
        item:setPositionX(item:getPositionX()-itemLeftMove)
        itemName:setPositionX(itemName:getPositionX()-itemLeftMove)
        if Lang.checkUI("ui4") then
            itemName:setPositionX(itemName:getPositionX()-15)
        end
        itemNum:setPositionX(itemNum:getPositionX()-itemLeftMove)

        itemName:setFontSize(itemName:getFontSize()-2)
        itemNum:setFontSize(itemNum:getFontSize()-2)
    end

    local itemParams = icon:getItemParams()
    assert(type(itemParams) == "table", "Invalid itemParams " .. tostring(itemParams))
    itemName:setString(itemParams.name)
	itemName:setColor(itemParams.icon_color)
	itemName:enableOutline(itemParams.icon_color_outline, 2)
    itemNum:setPositionX(itemName:getPositionX() + itemName:getContentSize().width + 20)
    itemNum:setString(string.format("x%s", award.size))

    local scene = G_SceneManager:getRunningScene()
    scene:addChildToPopup(view)


    view:setPosition(G_ResolutionManager:getDesignCCPoint())

    local function eventFunction(event, frameIndex, effectNode)
        if event == "next" then
            self:_next()
        elseif event == "finish" then
            self._curViewQueue:pop()
            view:runAction(cc.RemoveSelf:create())
        end
    end

    local AudioConst = require("app.const.AudioConst")
    G_AudioManager:playSoundWithId(AudioConst.SOUND_TIP_REARD)

    local effect = G_EffectGfxMgr:applySingleGfx(view, "smoving_lianxuhuode", eventFunction, nil, nil)
    self._curViewQueue:push({view = view, effect = effect})
end

function PromptRewards:_next()
    local award = self._queue:pop()
    if not award then
        self._isStart = nil
        return
    end
    self:_createRewardAndRun(award)
end

return PromptRewards
