--pet

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  name = 2,    --名称-string 
  level = 3,    --初始等级-int 
  is_red = 4,    --是否原始红-int 
  initial_star = 5,    --初始星级-int 
  color = 6,    --品质-int 
  res_id = 7,    --资源id-int 
  description = 8,    --宠物描述-string 
  description1 = 9,    --show宠物描述1-string 
  description2 = 10,    --show宠物描述2-string 
  skill_name = 11,    --show宠物技能名称-string 
  skill_description = 12,    --show宠物技能描述-string 
  star_max = 13,    --星级上限-int 
  moving = 14,    --神兽特效-string 
  combat_base = 15,    --基础属性假战力-int 
  atk_base = 16,    --初始攻击-int 
  pdef_base = 17,    --初始物防-int 
  mdef_base = 18,    --初始魔防-int 
  hp_base = 19,    --初始生命-int 
  atk_grow = 20,    --成长攻击-int 
  pdef_grow = 21,    --成长物防-int 
  mdef_grow = 22,    --成长魔防-int 
  hp_grow = 23,    --成长生命-int 
  potential_after = 24,    --界限突破后id-int 
  potential_before = 25,    --界限突破前id-int 
  potential_value = 26,    --界限突破后升星使用type及道具-string 
  pet_limit_id = 27,    --神兽界限突破模板-int 
  hit_base = 28,    --初始命中-int 
  crit_base = 29,    --初始暴击-int 
  blessing_rate = 30,    --护佑千分比-int 
  soul = 31,    --分解兽魂-int 
  coin = 32,    --出售银两-int 
  fragment_id = 33,    --碎片id-int 
  voice = 34,    --语音-string 
  is_fight = 35,    --无差别竞技里是否可用-int 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  name = "string",    --名称-2 
  level = "int",    --初始等级-3 
  is_red = "int",    --是否原始红-4 
  initial_star = "int",    --初始星级-5 
  color = "int",    --品质-6 
  res_id = "int",    --资源id-7 
  description = "string",    --宠物描述-8 
  description1 = "string",    --show宠物描述1-9 
  description2 = "string",    --show宠物描述2-10 
  skill_name = "string",    --show宠物技能名称-11 
  skill_description = "string",    --show宠物技能描述-12 
  star_max = "int",    --星级上限-13 
  moving = "string",    --神兽特效-14 
  combat_base = "int",    --基础属性假战力-15 
  atk_base = "int",    --初始攻击-16 
  pdef_base = "int",    --初始物防-17 
  mdef_base = "int",    --初始魔防-18 
  hp_base = "int",    --初始生命-19 
  atk_grow = "int",    --成长攻击-20 
  pdef_grow = "int",    --成长物防-21 
  mdef_grow = "int",    --成长魔防-22 
  hp_grow = "int",    --成长生命-23 
  potential_after = "int",    --界限突破后id-24 
  potential_before = "int",    --界限突破前id-25 
  potential_value = "string",    --界限突破后升星使用type及道具-26 
  pet_limit_id = "int",    --神兽界限突破模板-27 
  hit_base = "int",    --初始命中-28 
  crit_base = "int",    --初始暴击-29 
  blessing_rate = "int",    --护佑千分比-30 
  soul = "int",    --分解兽魂-31 
  coin = "int",    --出售银两-32 
  fragment_id = "int",    --碎片id-33 
  voice = "string",    --语音-34 
  is_fight = "int",    --无差别竞技里是否可用-35 

}


-- data
local pet = {
    version =  1,
    _data = {
        [1] = {1,"熊猫",1,0,0,3,701,"熊猫，又称食铁兽，熊猫爸爸凶猛有力，熊猫宝宝聪明呆萌，父子组合，所向披靡","熊猫爸爸凶猛有力，熊猫宝宝聪明呆萌","父子组合，所向披靡","[破胆咆哮]","对敌方单体造成伤害",5,"0",600000,10000,5000,5000,75000,300,150,150,2250,0,0,"",0,1000,0,0,2250,0,100001,"pet_701_idle2",0,},
        [2] = {2,"灵鹿",1,0,0,3,702,"灵鹿，生长在天地间的神奇灵物，鹿角为天地灵气凝结而成，灵气绽放时可助人起死回生。","生长在天地间的神奇灵物","鹿角为天地灵气凝结而成","[花繁叶茂]","治疗己方生命最少的队友",5,"0",600000,10000,5000,5000,75000,300,150,150,2250,0,0,"",0,1000,0,0,2250,0,100002,"pet_702_idle2",0,},
        [3] = {3,"烈火狐",1,0,0,4,704,"烈火狐，传说此狐三尾，四爪带火，凶戾高傲，但恩怨分明，有仇报仇，有恩报恩。","三尾，四爪带火","恩怨分明，有仇报仇，有恩报恩","[火狐卷尾]","对敌方后排造成伤害",5,"0",720000,12000,6000,6000,90000,350,175,175,2625,0,0,"",0,1000,0,0,4800,0,100003,"pet_704_idle2",0,},
        [4] = {4,"紫青鸾",1,0,0,4,703,"紫青鸾，羽色华丽，紫中带青。古人视赤色为凤，青色为鸾。传说青鸾为爱情的象征，唱歌时会给心诚之人带来桃花运。","羽色华丽，紫中带青","传说是爱情的象征","[风卷残云]","对敌方前排造成伤害",5,"0",720000,12000,6000,6000,90000,350,175,175,2625,0,0,"",0,1000,0,0,4800,0,100004,"0",0,},
        [5] = {5,"雷霆白虎",1,0,0,5,706,"雷霆白虎，四神兽之一，通体雪白，紫光流溢，可御使雷电之力。","通体雪白，紫光流溢","可御使雷电之力","[曜日奔雷]","战前减怒，战中再减怒",5,"effect_taozhuang_orange",1200000,20000,10000,10000,150000,400,200,200,3000,105,0,"",1,1000,0,0,24000,0,100005,"pet_706_idle2",1,},
        [6] = {6,"沧海青龙",1,0,0,5,705,"沧海青龙，四神兽之首，自古就是祥瑞的象征。东方青龙，角亢之精，吐云郁炁，啖雷发声，飞翔八极，周游四冥，来立吾左。","四神兽之首","自古就是祥瑞的象征","[青龙之怒]","恢复我方成员怒气",5,"effect_taozhuang_orange",1200000,20000,10000,10000,150000,400,200,200,3000,106,0,"",1,1000,0,0,24000,0,100006,"pet_705_idle2",1,},
        [7] = {7,"赤炎朱雀",1,0,0,5,707,"赤炎朱雀，百鸟之王，四大神兽中的颜值担当。主火，唯美而暴力，自歌自舞，预示着吉祥安宁，蓬勃腾达。","能继燃灼烧之物","能接引灵魂上升于天","[业炎焚天]","对敌方全体被灼烧目标造成伤害",5,"effect_taozhuang_orange",1200000,20000,10000,10000,150000,400,200,200,3000,107,0,"",1,1000,0,0,24000,0,100007,"pet_707_idle2",1,},
        [8] = {8,"裂天玄武",1,0,0,5,708,"裂天玄武，四神兽之一，龟、蛇组成的灵物，自古就是长生不老的象征。玄武者，北方壬癸水黑汞也，能柔能刚，非铅非锡非众石之类，水乃河东神水，生乎天地之先，至药不可暂舍，能养育万物。","龟蛇组合成的灵物","长生不老的象征","[玄武之佑]","给我方成员附加护盾",5,"effect_taozhuang_orange",1200000,20000,10000,10000,150000,400,200,200,3000,108,0,"",1,1000,0,0,24000,0,100008,"pet_708_idle2",1,},
        [9] = {9,"北冥圣鲲",1,0,0,5,709,"鲲出自《庄子·逍遥游》：“北冥有鱼，其名为鲲。鲲之大，不知其几千里也。”明代德清《庄子内篇注》云：“北冥即北海，以旷远非世人所见之地，以喻玄冥大道。海中之鲲，以喻大道体中养成大圣之胚胎，喻如大鲲，非北海之大不能养成也。”","北冥有鱼，其名为鲲","鲲之大，不知其几千里也","[云梦逍遥]","清除我方成员眩晕状态",5,"effect_taozhuang_orange",1200000,20000,10000,10000,150000,400,200,200,3000,109,0,"",1,1000,0,0,24000,0,100009,"0",1,},
        [10] = {10,"雷火麒麟",1,0,0,5,710,"雷火麒麟，与凤龟龙谓之四灵，游必泽土，祥而后处，不履生虫，不践生草，王者有出，辨善恶通天理。","千年祥瑞神灵","辨善恶通天理","[天命抉择]","对敌方随机目标造成生命上限50%的伤害",5,"effect_taozhuang_orange",1200000,20000,10000,10000,150000,400,200,200,3000,0,0,"",0,1000,0,0,24000,0,100010,"pet_710_idle2",1,},
        [11] = {11,"麟华年兽",1,0,0,5,711,"传说中每逢岁末时出没在人间的幼年凶兽，眼若铜铃，来去如风，金身流彩，威风凛凛；性如幼童般活泼好动，十分喜爱热闹。","金身流彩，威风凛凛","性如幼童般活泼好动","[燎竹天降]","血量低于一定值的目标会被斩杀",5,"effect_taozhuang_orange",1200000,20000,10000,10000,150000,400,200,200,3000,0,0,"",0,1000,0,0,24000,0,100011,"pet_711_idle2",1,},
        [12] = {12,"天瑞白泽",1,0,0,5,712,"象征着祥瑞的白泽，通人语，通万物之情，晓天下万物状貌，是令人逢凶化吉的吉祥之兽。","晓天下万物状貌","逢凶化吉","[幽雨流光]","回合开始前放逐敌方目标",5,"effect_taozhuang_orange",1200000,20000,10000,10000,150000,400,200,200,3000,0,0,"",0,1000,0,0,24000,0,100012,"pet_712_idle2",1,},
        [13] = {106,"神·青龙",1,0,0,6,7605,"沧海青龙，四神兽之首，自古就是祥瑞的象征。东方青龙，角亢之精，吐云郁炁，啖雷发声，飞翔八极，周游四冥，来立吾左。","四神兽之首","自古就是祥瑞的象征","[青龙之怒]","恢复我方成员怒气",5,"effect_taozhuang_orange",1200000,53800,26900,26900,403500,400,200,200,3000,0,6,"6|559",0,1000,0,0,24000,0,100006,"pet_705_idle2",0,},
        [14] = {108,"神·玄武",1,0,0,6,7608,"裂天玄武，四神兽之一，龟、蛇组成的灵物，自古就是长生不老的象征。玄武者，北方壬癸水黑汞也，能柔能刚，非铅非锡非众石之类，水乃河东神水，生乎天地之先，至药不可暂舍，能养育万物。","龟蛇组合成的灵物","长生不老的象征","[玄武之佑]","给我方成员附加护盾",5,"effect_taozhuang_orange",1200000,53800,26900,26900,403500,400,200,200,3000,0,8,"6|559",0,1000,0,0,24000,0,100008,"pet_708_idle2",0,},
        [15] = {105,"神·白虎",1,0,0,6,7606,"雷霆白虎，四神兽之一，通体雪白，紫光流溢，可御使雷电之力。","通体雪白，紫光流溢","可御使雷电之力","[曜日奔雷]","战前减怒，战中再减怒",5,"effect_taozhuang_orange",1200000,53800,26900,26900,403500,400,200,200,3000,0,5,"6|559",0,1000,0,0,24000,0,100005,"pet_706_idle2",0,},
        [16] = {109,"神·鲲",1,0,0,6,7609,"鲲出自《庄子·逍遥游》：“北冥有鱼，其名为鲲。鲲之大，不知其几千里也。”明代德清《庄子内篇注》云：“北冥即北海，以旷远非世人所见之地，以喻玄冥大道。海中之鲲，以喻大道体中养成大圣之胚胎，喻如大鲲，非北海之大不能养成也","北冥有鱼，其名为鲲","鲲之大，不知其几千里也","[云梦逍遥]","清除我方成员眩晕状态",5,"effect_taozhuang_orange",1200000,53800,26900,26900,403500,400,200,200,3000,0,9,"6|559",0,1000,0,0,24000,0,100009,"",0,},
        [17] = {107,"神·朱雀",1,0,0,6,7607,"赤炎朱雀，百鸟之王，四大神兽中的颜值担当。主火，唯美而暴力，自歌自舞，预示着吉祥安宁，蓬勃腾达。","能继燃灼烧之物","能接引灵魂上升于天","[业炎焚天]","对敌方全体被灼烧目标造成伤害",5,"effect_taozhuang_orange",1200000,53800,26900,26900,403500,400,200,200,3000,0,7,"6|559",0,1000,0,0,24000,0,100007,"pet_707_idle2",0,},
        [18] = {201,"白矖",100,1,3,6,7201,"圣灵护法，女娲嫡传，无忧仙乐，清名永传。怀慈悲之心，拯救苍生于水火；凭一己之力，护佑生灵免涂炭。","圣灵护法，女娲嫡传","怀慈悲之心，拯救苍生于水火","[无忧仙乐]","为我方目标增加御甲",5,"effect_taozhuang_orange",1200000,53800,26900,26900,403500,400,200,200,3000,0,0,"",0,1000,0,0,24000,0,100201,"",0,},
    }
}

-- index
local __index_id = {
    [1] = 1,
    [10] = 10,
    [105] = 15,
    [106] = 13,
    [107] = 17,
    [108] = 14,
    [109] = 16,
    [11] = 11,
    [12] = 12,
    [2] = 2,
    [201] = 18,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- index mainkey map
local __main_key_map = {
    [1] = 1,
    [10] = 10,
    [15] = 105,
    [13] = 106,
    [17] = 107,
    [14] = 108,
    [16] = 109,
    [11] = 11,
    [12] = 12,
    [2] = 2,
    [18] = 201,
    [3] = 3,
    [4] = 4,
    [5] = 5,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in pet")
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
function pet.length()
    return #pet._data
end

-- 
function pet.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function pet.isVersionValid(v)
    if pet.version then
        if v then
            return pet.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function pet.indexOf(index)
    if index == nil or not pet._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/pet.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/pet.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/pet.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "pet" )
                _isDataExist = pet.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "pet" )
                _isBaseExist = pet.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "pet" )
                _isExist = pet.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "pet" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "pet" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = pet._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "pet" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function pet.get(id)
    
    return pet.indexOf(__index_id[id])
        
end

--
function pet.set(id, key, value)
    local record = pet.get(id)
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
function pet.index()
    return __index_id
end

return pet