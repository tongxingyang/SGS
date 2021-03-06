--monster_talk

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --序号-int 
  lv_min = 2,    --等级最低-int 
  lv_max = 3,    --等级最高-int 
  teamid = 4,    --怪物组id-int 
  target = 5,    --说话的怪物id或heroid-int 
  position = 6,    --怪物在对应位置or随意-string 
  death = 7,    --目标1死亡2存活0随意-int 
  battle = 8,    --本次战斗星级123星和0星失败和9随便-string 
  bubble = 9,    --战斗中说话内容，不要超过25个字-string 
  face = 10,    --表情-int 
  round = 11,    --说话回合-int 

}

-- key type
local __key_type = {
  id = "int",    --序号-1 
  lv_min = "int",    --等级最低-2 
  lv_max = "int",    --等级最高-3 
  teamid = "int",    --怪物组id-4 
  target = "int",    --说话的怪物id或heroid-5 
  position = "string",    --怪物在对应位置or随意-6 
  death = "int",    --目标1死亡2存活0随意-7 
  battle = "string",    --本次战斗星级123星和0星失败和9随便-8 
  bubble = "string",    --战斗中说话内容，不要超过25个字-9 
  face = "int",    --表情-10 
  round = "int",    --说话回合-11 

}


-- data
local monster_talk = {
    version =  1,
    _data = {
        [1] = {1,1,99,1100202,11002022,"0",0,"9","大哥最近得了一件宝贝。",0,1,},
        [2] = {2,1,99,1100204,11002045,"0",0,"9","看我符咒的厉害！",0,1,},
        [3] = {3,1,99,1100205,11002052,"0",0,"9","苍天已死，黄天当立！",0,1,},
        [4] = {4,1,99,1100301,216,"2|3|4|5|6",0,"9","战斗初始2怒，普攻加2怒，4点怒气就可以放技能哦。",0,1,},
        [5] = {5,1,99,1100302,216,"2|3|4|5|6",0,"9","关银屏姐姐是主攻手，主公要多多培养她哦。",0,1,},
        [6] = {6,1,99,1100304,216,"2|3",1,"9","站在前排好危险，主公能把我放后排去吗？",0,1,},
        [7] = {7,1,99,1100305,216,"2|3",1,"9","站在前排好危险，主公能把我放后排去吗？",0,1,},
        [8] = {8,1,99,1100305,216,"4|5|6",2,"1|2|3","放在后排好像安全多了，谢谢主公！",0,1,},
        [9] = {9,1,99,1100306,11003065,"0",0,"0","武将升级突破了吗？穿装备并强化了吗？",0,1,},
        [10] = {10,1,99,1100306,216,"2|3|4|5|6",1,"0","主公，不好好培养，是战胜不了张让的!",0,2,},
        [11] = {11,1,99,1100401,113,"2|3|4|5|6",1,"9","主公，不要忘记培养一下我哦！",0,1,},
        [12] = {12,1,99,1100401,117,"2|3|4|5|6",1,"9","主公，不要忘记培养一下我哦！",0,1,},
        [13] = {13,1,99,1100401,213,"2|3|4|5|6",1,"9","主公，不要忘记培养一下我哦！",0,1,},
        [14] = {14,1,99,1100401,214,"2|3|4|5|6",1,"9","主公，不要忘记培养一下我哦！",0,1,},
        [15] = {15,1,99,1100401,413,"2|3|4|5|6",1,"9","主公，不要忘记培养一下我哦！",0,1,},
        [16] = {16,1,99,1100401,414,"2|3|4|5|6",1,"9","主公，不要忘记培养一下我哦！",0,1,},
        [17] = {17,1,99,1100401,313,"2|3|4|5|6",1,"9","主公，不要忘记培养一下我哦！",0,1,},
        [18] = {18,1,99,1100401,314,"2|3|4|5|6",1,"9","主公，不要忘记培养一下我哦！",0,1,},
        [19] = {19,1,99,1100404,11004045,"0",0,"9","打劫！把竞技场得到的元宝交出来！",0,1,},
        [20] = {20,1,99,1100408,11004085,"0",0,"0","不好好培养武将和装备，是打不过我的！",0,1,},
        [21] = {21,1,16,1100508,11005085,"0",0,"0","15级武将突破+2后，你打我才有丝丝胜算。",0,1,},
        [22] = {22,1,99,1100610,11006102,"0",0,"0","不好好培养武将和装备，是打不过我的！",0,1,},
        [23] = {23,1,19,1100710,11007103,"0",0,"0","扫荡主线副本升到20级才能打赢我！",0,1,},
        [24] = {24,1,22,1100810,11008105,"0",0,"0","扫荡主线副本升到23级才能打赢我！",0,1,},
        [25] = {25,1,25,1100910,11009105,"0",0,"0","扫荡主线副本升到26级才能打赢我！",0,1,},
        [26] = {26,1,28,1101010,11010105,"0",0,"0","扫荡主线副本升到29级才能打赢我！",0,1,},
        [27] = {27,1,99,1100405,11004055,"0",0,"9","竞技场的元宝真是多啊，哈哈哈！",0,1,},
        [28] = {28,1,99,1100501,11005012,"0",0,"9","没有元宝就去竞技场打排名，元宝非常多！",0,1,},
        [29] = {29,14,99,1100601,11006015,"0",0,"9","其他人一定不知道16级即可扫荡副本，超快速提升等级，哈哈。",0,1,},
        [30] = {31,14,99,1100604,11006045,"0",0,"9","应该只有我才知道16级可以扫荡满星副本！",0,1,},
        [31] = {32,1,26,1100701,11007012,"0",0,"9","武将升到25级即可突破+3，突破+3可在第一回合释放技能和合击！",0,1,},
        [32] = {33,1,99,1100705,11007052,"0",0,"9","扫荡主线副本可快速提升主角等级",0,1,},
        [33] = {34,1,99,1100707,11007072,"0",0,"9","扫荡主线副本可快速提升主角等级",0,1,},
        [34] = {35,1,99,1100801,11008012,"0",0,"9","扫荡主线副本可快速提升主角等级",0,1,},
        [35] = {36,1,99,1100802,11008025,"0",0,"9","扫荡主线副本可快速提升主角等级",0,1,},
        [36] = {37,16,99,1100807,11008072,"0",0,"9","听闻武将升到25级即可突破+3，突破+3可在第一回合释放技能和合击！",0,1,},
        [37] = {38,16,99,1100901,11009015,"0",0,"9","听闻武将升到25级即可突破+3，突破+3可在第一回合释放技能和合击！",0,1,},
        [38] = {39,1,99,1100904,11009045,"0",0,"9","我家主公这么厉害，全靠扫荡主线提高的等级！",0,1,},
        [39] = {40,1,99,1100907,11009075,"0",0,"9","听闻武将升到25级即可突破+3，突破+3可在第一回合释放技能和合击！",0,1,},
        [40] = {41,1,99,1100602,11006023,"0",0,"9","橙将比紫将厉害很多！",0,1,},
        [41] = {42,1,99,1100603,11006035,"0",0,"9","你可知道招募是可以获得橙将的！",0,1,},
        [42] = {43,1,99,1100606,11006065,"0",0,"0","你没有橙将，是打不过我的！快去招募吧！",0,1,},
        [43] = {44,1,99,1100609,11006095,"0",0,"0","你没有橙将，是打不过我的！",0,1,},
        [44] = {45,1,99,1100706,11007065,"0",0,"0","若是没有招募获得的橙将，你可打不过我！",0,1,},
        [45] = {46,1,99,1100710,11007103,"0",0,"0","若你有几个橙将，我定然打不过你！",0,1,},
        [46] = {47,1,99,1100809,11008095,"0",0,"0","区区紫将，也敢来战？",0,1,},
        [47] = {48,1,99,1100810,11008105,"0",0,"0","你没有更多橙将，是打不过我的！",0,1,},
        [48] = {49,1,99,1100903,11009035,"0",0,"9","凭什么我夏侯渊是紫将！",0,1,},
        [49] = {50,1,99,1100102,216,"0",0,"9","普攻可增加1点怒气！",0,1,},
        [50] = {51,1,99,1100104,216,"0",0,"9","主公，4点怒气就可以释放技能啦。",0,1,},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [10] = 10,
    [11] = 11,
    [12] = 12,
    [13] = 13,
    [14] = 14,
    [15] = 15,
    [16] = 16,
    [17] = 17,
    [18] = 18,
    [19] = 19,
    [2] = 2,
    [20] = 20,
    [21] = 21,
    [22] = 22,
    [23] = 23,
    [24] = 24,
    [25] = 25,
    [26] = 26,
    [27] = 27,
    [28] = 28,
    [29] = 29,
    [3] = 3,
    [31] = 30,
    [32] = 31,
    [33] = 32,
    [34] = 33,
    [35] = 34,
    [36] = 35,
    [37] = 36,
    [38] = 37,
    [39] = 38,
    [4] = 4,
    [40] = 39,
    [41] = 40,
    [42] = 41,
    [43] = 42,
    [44] = 43,
    [45] = 44,
    [46] = 45,
    [47] = 46,
    [48] = 47,
    [49] = 48,
    [5] = 5,
    [50] = 49,
    [51] = 50,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- index mainkey map
local __main_key_map = {
    [1] = 1,
    [10] = 10,
    [11] = 11,
    [12] = 12,
    [13] = 13,
    [14] = 14,
    [15] = 15,
    [16] = 16,
    [17] = 17,
    [18] = 18,
    [19] = 19,
    [2] = 2,
    [20] = 20,
    [21] = 21,
    [22] = 22,
    [23] = 23,
    [24] = 24,
    [25] = 25,
    [26] = 26,
    [27] = 27,
    [28] = 28,
    [29] = 29,
    [3] = 3,
    [30] = 31,
    [31] = 32,
    [32] = 33,
    [33] = 34,
    [34] = 35,
    [35] = 36,
    [36] = 37,
    [37] = 38,
    [38] = 39,
    [4] = 4,
    [39] = 40,
    [40] = 41,
    [41] = 42,
    [42] = 43,
    [43] = 44,
    [44] = 45,
    [45] = 46,
    [46] = 47,
    [47] = 48,
    [48] = 49,
    [5] = 5,
    [49] = 50,
    [50] = 51,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in monster_talk")
        if _lang ~= "cn" and _isDataExist  and t._data_key_map[k] then
            return t._data[t._data_key_map[k]]
        end
        if _lang ~= "cn" and _isExist  and t._lang_key_map[k] then
            return t._lang[t._lang_key_map[k]]
        end
        return t._raw[key_map[k]]
    end
}

-- 
function monster_talk.length()
    return #monster_talk._data
end

-- 
function monster_talk.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function monster_talk.isVersionValid(v)
    if monster_talk.version then
        if v then
            return monster_talk.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function monster_talk.indexOf(index)
    if index == nil or not monster_talk._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/monster_talk.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/monster_talk.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/monster_talk.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "monster_talk" )
                _isDataExist = monster_talk.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "monster_talk" )
                _isBaseExist = monster_talk.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "monster_talk" )
                _isExist = monster_talk.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "monster_talk" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "monster_talk" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = monster_talk._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "monster_talk" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function monster_talk.get(id)
    
    return monster_talk.indexOf(__index_id[id])
        
end

--
function monster_talk.set(id, key, value)
    local record = monster_talk.get(id)
    if record then
        if _lang ~= "cn" and _isDataExist then
            local keyIndex =  record._data_key_map[key]
            if keyIndex then
                record._data[keyIndex] = value
                return
            end
        end
        if _lang ~= "cn" and _isExist then
            local keyIndex =  record._lang_key_map[key]
            if keyIndex then
                record._lang[keyIndex] = value
                return
            end
        end
        local keyIndex = record._raw_key_map[key]
        if keyIndex then
            record._raw[keyIndex] = value
        end
    end
end

--
function monster_talk.index()
    return __index_id
end

return monster_talk