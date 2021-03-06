--treasure

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --编号-int 
  name = 2,    --宝物名称-string 
  treasure_type = 3,    --宝物类型-int 
  limit_able = 4,    --是否可界限突破-int 
  limit_level = 5,    --界限突破等级-int 
  color = 6,    --品质色-int 
  potential = 7,    --潜力值-int 
  limit_up_id = 8,    --界限突破新宝物-int 
  res_id = 9,    --宝物图标-int 
  description = 10,    --宝物描述-string 
  treasure_order = 11,    --宝物显示顺序-string 
  is_always = 12,    --是否长期显示-int 
  treasure_exp = 13,    --吞噬经验值-int 
  initial_level = 14,    --强化初始等级-int 
  levelup_templet = 15,    --强化模板-int 
  levelup_type_1 = 16,    --强化初始属性1-int 
  levelup_type_2 = 17,    --强化初始属性2-int 
  initial_refine = 18,    --精炼初始等级-int 
  refine_templet = 19,    --精炼模板-int 
  refine_type_1 = 20,    --精炼初始属性1-int 
  refine_type_2 = 21,    --精炼初始属性2-int 
  refine_type_3 = 22,    --精炼初始属性3-int 
  inlay_type = 23,    --镶嵌类型-string 
  fragment = 24,    --碎片的id-int 
  show_day = 25,    --图鉴显示天数-int 
  is_work = 26,    --生效-int 

}

-- key type
local __key_type = {
  id = "int",    --编号-1 
  name = "string",    --宝物名称-2 
  treasure_type = "int",    --宝物类型-3 
  limit_able = "int",    --是否可界限突破-4 
  limit_level = "int",    --界限突破等级-5 
  color = "int",    --品质色-6 
  potential = "int",    --潜力值-7 
  limit_up_id = "int",    --界限突破新宝物-8 
  res_id = "int",    --宝物图标-9 
  description = "string",    --宝物描述-10 
  treasure_order = "string",    --宝物显示顺序-11 
  is_always = "int",    --是否长期显示-12 
  treasure_exp = "int",    --吞噬经验值-13 
  initial_level = "int",    --强化初始等级-14 
  levelup_templet = "int",    --强化模板-15 
  levelup_type_1 = "int",    --强化初始属性1-16 
  levelup_type_2 = "int",    --强化初始属性2-17 
  initial_refine = "int",    --精炼初始等级-18 
  refine_templet = "int",    --精炼模板-19 
  refine_type_1 = "int",    --精炼初始属性1-20 
  refine_type_2 = "int",    --精炼初始属性2-21 
  refine_type_3 = "int",    --精炼初始属性3-22 
  inlay_type = "string",    --镶嵌类型-23 
  fragment = "int",    --碎片的id-24 
  show_day = "int",    --图鉴显示天数-25 
  is_work = "int",    --生效-26 

}


-- data
local treasure = {
    version =  1,
    _data = {
        [1] = {101,"吴子",1,0,0,3,8,0,101,"战国名将吴起著。吴起为孔门弟子，通晓兵家法家儒家，和孙子连称“孙吴”。","1",1,500,1,1,1,0,0,1,1,15,0,"0|0|0|0",3101,0,1,},
        [2] = {102,"三略",1,0,0,3,8,0,102,"原称《黄石公三略》，糅合诸子各家的思想，专论治国用兵战略的兵书。","3",1,500,1,1,1,0,0,1,1,17,0,"0|0|0|0",3102,0,1,},
        [3] = {201,"鬼谷子",1,0,0,4,10,0,201,"鬼谷子被誉为千古奇人，通天彻地，人不能及，著有《鬼谷子》兵书十四篇传世。","1",1,2500,1,2,1,0,0,2,1,15,0,"0|0|0|0",3201,0,1,},
        [4] = {202,"遁甲术",1,0,0,4,10,0,202,"奇门遁甲为道家不外传秘术，夺天地造化之学，相传左慈曾习得此术。","3",1,2500,1,2,1,0,0,2,1,15,0,"0|0|0|0",3202,0,1,},
        [5] = {203,"司马法",1,0,0,4,10,0,203,"相传为春秋时期姜太公所作，是现存中国最古老的兵书。","6",0,2500,1,2,1,0,0,2,1,17,0,"0|0|0|0",3203,0,1,},
        [6] = {301,"孙子兵法",1,1,0,5,12,401,301,"最著名的兵书，春秋时期孙武所著，博大精深，被誉为“兵学圣典”。","7",0,10000,1,3,1,0,0,3,1,15,0,"1|0|0|2",3301,0,1,},
        [7] = {302,"武侯新书",1,1,0,5,12,402,302,"又名《将苑》，诸葛亮用兵如神，此书记录诸葛军事思想，讨论为将之道。","8",0,10000,1,3,1,0,0,3,1,15,0,"1|0|0|2",3302,0,1,},
        [8] = {303,"孟德新书",1,1,0,5,12,403,303,"曹操半生戎马，在前人的基础上总结并创新，成就了这本孟德新书。","9",0,10000,1,3,1,0,0,3,1,17,0,"1|0|0|2",3303,0,1,},
        [9] = {304,"太平要术",1,1,0,5,12,404,304,"相传张角入山采药，遇南华老仙，授之《太平要术》，后创立太平道。","11",0,10000,1,3,1,0,0,3,1,17,0,"1|0|0|2",3304,0,1,},
        [10] = {401,"界·孙子兵法",1,1,1,6,14,501,401,"最著名的兵书，春秋时期孙武所著，博大精深，被誉为“兵学圣典”。","7",0,10000,1,4,1,0,0,4,1,15,17,"1|0|2|2",3301,100,1,},
        [11] = {402,"界·武侯新书",1,1,1,6,14,502,402,"又名《将苑》，诸葛亮用兵如神，此书记录诸葛军事思想，讨论为将之道。","8",0,10000,1,4,1,0,0,4,1,15,17,"1|0|2|2",3302,100,1,},
        [12] = {403,"界·孟德新书",1,1,1,6,14,503,403,"曹操半生戎马，在前人的基础上总结并创新，成就了这本孟德新书。","9",0,10000,1,4,1,0,0,5,1,17,15,"1|0|2|2",3303,100,1,},
        [13] = {404,"界·太平要术",1,1,1,6,14,504,404,"相传张角入山采药，遇南华老仙，授之《太平要术》，后创立太平道。","11",0,10000,1,4,1,0,0,5,1,17,15,"1|0|2|2",3304,100,1,},
        [14] = {501,"传说·孙子兵法",1,1,2,7,16,0,501,"最著名的兵书，春秋时期孙武所著，博大精深，被誉为“兵学圣典”。","7",0,10000,1,5,1,0,0,6,1,15,17,"1|2|2|2",3301,150,1,},
        [15] = {502,"传说·武侯新书",1,1,2,7,16,0,502,"又名《将苑》，诸葛亮用兵如神，此书记录诸葛军事思想，讨论为将之道。","8",0,10000,1,5,1,0,0,6,1,15,17,"1|2|2|2",3302,150,1,},
        [16] = {503,"传说·孟德新书",1,1,2,7,16,0,503,"曹操半生戎马，在前人的基础上总结并创新，成就了这本孟德新书。","9",0,10000,1,5,1,0,0,7,1,17,15,"1|2|2|2",3303,150,1,},
        [17] = {504,"传说·太平要术",1,1,2,7,16,0,504,"相传张角入山采药，遇南华老仙，授之《太平要术》，后创立太平道。","11",0,10000,1,5,1,0,0,7,1,17,15,"1|2|2|2",3304,150,1,},
        [18] = {111,"奔牛符",2,0,0,3,8,0,111,"许褚有倒拖牛尾之勇，故曹操特为他打造此兵符。","12",0,500,1,1,7,0,0,1,7,16,0,"0|0|0|0",3111,0,1,},
        [19] = {112,"野马符",2,0,0,3,8,0,112,"白马将军公孙瓒的兵符，易京一役后此兵符不知去向。","13",0,500,1,1,7,0,0,1,7,18,0,"0|0|0|0",3112,0,1,},
        [20] = {211,"战狼符",2,0,0,4,10,0,211,"因司马懿有狼顾之相，故特制此符，此符一直陪伴司马懿，数次征伐有功。","14",0,2500,1,2,7,0,0,2,7,16,0,"0|0|0|0",3211,0,1,},
        [21] = {212,"疾豹符",2,0,0,4,10,0,212,"兵贵神速，名将夏侯渊执掌疾豹符，被称为“疾行的猎豹”。","16",0,2500,1,2,7,0,0,2,7,16,0,"0|0|0|0",3212,0,1,},
        [22] = {213,"腾蛇符",2,0,0,4,10,0,213,"法正善奇谋，执掌腾蛇印，助刘备进取汉中，深受刘备信任与倚重。","17",0,2500,1,2,7,0,0,2,7,18,0,"0|0|0|0",3213,0,1,},
        [23] = {311,"青龙符",2,1,0,5,12,411,311,"《淮南子》卷三记载：天神之贵者，莫贵于青龙。青龙印为名将关羽的兵符。","18",0,10000,1,3,7,0,0,3,7,16,0,"1|0|0|2",3311,0,1,},
        [24] = {312,"白虎符",2,1,0,5,12,412,312,"白虎代表西方七宿，是正义、勇猛、威严的象征，据说西凉马超曾带此兵符。","19",0,10000,1,3,7,0,0,3,7,16,0,"1|0|0|2",3312,0,1,},
        [25] = {313,"朱雀符",2,1,0,5,12,413,313,"朱雀乃天之四灵之一，代表炎帝与南方七宿。周瑜曾拥有兵符，后不知去向。","5",1,10000,1,3,7,0,0,3,7,18,0,"1|0|0|2",3313,0,1,},
        [26] = {314,"玄武符",2,1,0,5,12,414,314,"玄武乃龟蛇合体，长生不老，称“真武大帝”。相传为红将左慈调遣神兵的兵符。","10",0,10000,1,3,7,0,0,3,7,18,0,"1|0|0|2",3314,0,1,},
        [27] = {411,"界·青龙符",2,1,1,6,14,511,411,"《淮南子》卷三记载：天神之贵者，莫贵于青龙。青龙印为名将关羽的兵符。","18",0,10000,1,4,7,0,0,4,7,16,18,"1|0|2|2",3311,100,1,},
        [28] = {412,"界·白虎符",2,1,1,6,14,512,412,"白虎代表西方七宿，是正义、勇猛、威严的象征，据说西凉马超曾带此兵符。","19",0,10000,1,4,7,0,0,4,7,16,18,"1|0|2|2",3312,100,1,},
        [29] = {413,"界·朱雀符",2,1,1,6,14,513,413,"朱雀乃天之四灵之一，代表炎帝与南方七宿。周瑜曾拥有兵符，后不知去向。","5",1,10000,1,4,7,0,0,5,7,18,16,"1|0|2|2",3313,100,1,},
        [30] = {414,"界·玄武符",2,1,1,6,14,514,414,"玄武乃龟蛇合体，长生不老，称“真武大帝”。相传为红将左慈调遣神兵的兵符。","10",0,10000,1,4,7,0,0,5,7,18,16,"1|0|2|2",3314,100,1,},
        [31] = {511,"传说·青龙符",2,1,2,7,16,0,511,"《淮南子》卷三记载：天神之贵者，莫贵于青龙。青龙印为名将关羽的兵符。","18",0,10000,1,5,7,0,0,6,7,16,18,"1|2|2|2",3311,150,1,},
        [32] = {512,"传说·白虎符",2,1,2,7,16,0,512,"白虎代表西方七宿，是正义、勇猛、威严的象征，据说西凉马超曾带此兵符。","19",0,10000,1,5,7,0,0,6,7,16,18,"1|2|2|2",3312,150,1,},
        [33] = {513,"传说·朱雀符",2,1,2,7,16,0,513,"朱雀乃天之四灵之一，代表炎帝与南方七宿。周瑜曾拥有兵符，后不知去向。","5",1,10000,1,5,7,0,0,7,7,18,16,"1|2|2|2",3313,150,1,},
        [34] = {514,"传说·玄武符",2,1,2,7,16,0,514,"玄武乃龟蛇合体，长生不老，称“真武大帝”。相传为红将左慈调遣神兵的兵符。","10",0,10000,1,5,7,0,0,7,7,18,16,"1|2|2|2",3314,150,1,},
    }
}

-- index
local __index_id = {
    [101] = 1,
    [102] = 2,
    [111] = 18,
    [112] = 19,
    [201] = 3,
    [202] = 4,
    [203] = 5,
    [211] = 20,
    [212] = 21,
    [213] = 22,
    [301] = 6,
    [302] = 7,
    [303] = 8,
    [304] = 9,
    [311] = 23,
    [312] = 24,
    [313] = 25,
    [314] = 26,
    [401] = 10,
    [402] = 11,
    [403] = 12,
    [404] = 13,
    [411] = 27,
    [412] = 28,
    [413] = 29,
    [414] = 30,
    [501] = 14,
    [502] = 15,
    [503] = 16,
    [504] = 17,
    [511] = 31,
    [512] = 32,
    [513] = 33,
    [514] = 34,

}

-- index mainkey map
local __main_key_map = {
    [1] = 101,
    [2] = 102,
    [18] = 111,
    [19] = 112,
    [3] = 201,
    [4] = 202,
    [5] = 203,
    [20] = 211,
    [21] = 212,
    [22] = 213,
    [6] = 301,
    [7] = 302,
    [8] = 303,
    [9] = 304,
    [23] = 311,
    [24] = 312,
    [25] = 313,
    [26] = 314,
    [10] = 401,
    [11] = 402,
    [12] = 403,
    [13] = 404,
    [27] = 411,
    [28] = 412,
    [29] = 413,
    [30] = 414,
    [14] = 501,
    [15] = 502,
    [16] = 503,
    [17] = 504,
    [31] = 511,
    [32] = 512,
    [33] = 513,
    [34] = 514,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in treasure")
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
function treasure.length()
    return #treasure._data
end

-- 
function treasure.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function treasure.isVersionValid(v)
    if treasure.version then
        if v then
            return treasure.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function treasure.indexOf(index)
    if index == nil or not treasure._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/treasure.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/treasure.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/treasure.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "treasure" )
                _isDataExist = treasure.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "treasure" )
                _isBaseExist = treasure.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "treasure" )
                _isExist = treasure.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "treasure" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "treasure" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = treasure._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "treasure" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function treasure.get(id)
    
    return treasure.indexOf(__index_id[id])
        
end

--
function treasure.set(id, key, value)
    local record = treasure.get(id)
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
function treasure.index()
    return __index_id
end

return treasure