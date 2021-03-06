--mine_pit

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  pit_id = 1,    --矿坑id-int 
  pit_name = 2,    --矿坑名称-string 
  pit_color = 3,    --矿坑品质-int 
  pit_type = 4,    --矿坑类型-int 
  is_battle = 5,    --可否交战-int 
  templet_id = 6,    --产量模板-int 
  unlock = 7,    --解锁条件-int 
  battle_bg = 8,    --战斗背景-string 
  pit_bg = 9,    --矿坑背景-string 
  pit_name_txt = 10,    --矿坑名称图片-string 
  pit_icon_png = 11,    --地区图标-string 
  rich_pit_icon_png = 12,    --高级地区图标-string 
  position_icon = 13,    --矿位图标-string 
  x = 14,    --坐标x值-int 
  y = 15,    --坐标y值-int 
  move_pit_1 = 16,    --迁移方向1-int 
  move_pit_2 = 17,    --迁移方向2-int 
  move_pit_3 = 18,    --迁移方向3-int 
  move_pit_4 = 19,    --迁移方向4-int 
  move_pit_5 = 20,    --迁移方向5-int 
  reborn_pit = 21,    --重生点-int 
  position_x_1 = 22,    --起始x值1-int 
  position_x_2 = 23,    --起始x值2-int 
  position_x_3 = 24,    --起始x值3-int 
  peace_effect = 25,    --和平矿特效-string 
  image_district = 26,    --镜像区域-int 
  district = 27,    --所属矿区-int 
  image_x = 28,    --镜像坐标x-int 
  image_y = 29,    --镜像坐标y-int 
  image_icon = 30,    --镜像图标-string 
  pit_icon = 31,    --地区图标-string 

}

-- key type
local __key_type = {
  pit_id = "int",    --矿坑id-1 
  pit_name = "string",    --矿坑名称-2 
  pit_color = "int",    --矿坑品质-3 
  pit_type = "int",    --矿坑类型-4 
  is_battle = "int",    --可否交战-5 
  templet_id = "int",    --产量模板-6 
  unlock = "int",    --解锁条件-7 
  battle_bg = "string",    --战斗背景-8 
  pit_bg = "string",    --矿坑背景-9 
  pit_name_txt = "string",    --矿坑名称图片-10 
  pit_icon_png = "string",    --地区图标-11 
  rich_pit_icon_png = "string",    --高级地区图标-12 
  position_icon = "string",    --矿位图标-13 
  x = "int",    --坐标x值-14 
  y = "int",    --坐标y值-15 
  move_pit_1 = "int",    --迁移方向1-16 
  move_pit_2 = "int",    --迁移方向2-17 
  move_pit_3 = "int",    --迁移方向3-18 
  move_pit_4 = "int",    --迁移方向4-19 
  move_pit_5 = "int",    --迁移方向5-20 
  reborn_pit = "int",    --重生点-21 
  position_x_1 = "int",    --起始x值1-22 
  position_x_2 = "int",    --起始x值2-23 
  position_x_3 = "int",    --起始x值3-24 
  peace_effect = "string",    --和平矿特效-25 
  image_district = "int",    --镜像区域-26 
  district = "int",    --所属矿区-27 
  image_x = "int",    --镜像坐标x-28 
  image_y = "int",    --镜像坐标y-29 
  image_icon = "string",    --镜像图标-30 
  pit_icon = "string",    --地区图标-31 

}


-- data
local mine_pit = {
    version =  1,
    _data = {
        [1] = {100,"洛阳",5,1,1,1,3,"1","img_mine_bg00","txt_mine01_100","img_mine_icon01","img_mine_icon41","moving_kuangzhan_jinkuangx",1385,649,101,201,301,0,0,0,320,240,150,"",0,0,0,0,"","",},
        [2] = {101,"许昌",5,1,1,1,3,"2","img_mine_bg01","txt_mine01_101","img_mine_icon11","img_mine_icon41","moving_kuangzhan_jinkuangx",1385,850,100,102,104,0,0,110,320,240,150,"",0,0,0,0,"","",},
        [3] = {102,"陈留",4,1,1,2,2,"2","img_mine_bg01","txt_mine01_102","img_mine_icon12","img_mine_icon42","moving_kuangzhan_yinkuangx",1163,932,101,103,105,0,0,110,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [4] = {103,"濮阳",4,1,1,2,2,"2","img_mine_bg01","txt_mine01_103","img_mine_icon12","img_mine_icon42","moving_kuangzhan_yinkuangx",1408,1044,102,107,0,0,0,110,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [5] = {104,"下邳",4,1,1,2,2,"2","img_mine_bg01","txt_mine01_104","img_mine_icon12","img_mine_icon42","moving_kuangzhan_yinkuangx",1653,929,101,109,0,0,0,110,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [6] = {105,"晋阳",3,1,1,3,1,"2","img_mine_bg01","txt_mine01_105","img_mine_icon13","img_mine_icon43","moving_kuangzhan_tongkuangx",833,1070,102,106,0,0,0,110,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [7] = {106,"南皮",3,1,1,3,1,"2","img_mine_bg01","txt_mine01_106","img_mine_icon13","img_mine_icon43","moving_kuangzhan_tongkuangx",1045,1295,105,110,107,0,0,110,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [8] = {107,"平原",3,1,1,3,1,"2","img_mine_bg01","txt_mine01_107","img_mine_icon13","img_mine_icon43","moving_kuangzhan_tongkuangx",1275,1242,103,106,0,0,0,110,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [9] = {108,"小沛",3,1,1,3,1,"2","img_mine_bg01","txt_mine01_108","img_mine_icon13","img_mine_icon43","moving_kuangzhan_tongkuangx",1691,1320,109,110,0,0,0,110,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [10] = {109,"北海",3,1,1,3,1,"2","img_mine_bg01","txt_mine01_109","img_mine_icon13","img_mine_icon43","moving_kuangzhan_tongkuangx",1859,1121,104,108,0,0,0,110,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [11] = {110,"邺城",5,2,0,0,1,"2","img_mine_bg01","txt_mine01_110","img_mine_icon10","img_mine_icon10","moving_kuangzhan_tongkuangx",1405,1392,106,108,0,0,0,0,320,240,150,"",0,0,0,0,"","",},
        [12] = {201,"长安",5,1,1,1,3,"3","img_mine_bg02","txt_mine01_201","img_mine_icon21","img_mine_icon41","moving_kuangzhan_jinkuangx",1148,604,100,202,204,0,0,210,320,240,150,"",0,0,0,0,"","",},
        [13] = {202,"襄阳",4,1,1,2,2,"3","img_mine_bg02","txt_mine01_202","img_mine_icon22","img_mine_icon42","moving_kuangzhan_yinkuangx",1011,430,201,203,205,0,0,210,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [14] = {203,"宛城",4,1,1,2,2,"3","img_mine_bg02","txt_mine01_203","img_mine_icon22","img_mine_icon42","moving_kuangzhan_yinkuangx",725,499,202,207,0,0,0,210,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [15] = {204,"汉中",4,1,1,2,2,"3","img_mine_bg02","txt_mine01_204","img_mine_icon22","img_mine_icon42","moving_kuangzhan_yinkuangx",918,745,201,209,0,0,0,210,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [16] = {205,"永安",3,1,1,3,1,"3","img_mine_bg02","txt_mine01_205","img_mine_icon23","img_mine_icon43","moving_kuangzhan_tongkuangx",823,247,202,206,0,0,0,210,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [17] = {206,"江州",3,1,1,3,1,"3","img_mine_bg02","txt_mine01_206","img_mine_icon23","img_mine_icon43","moving_kuangzhan_tongkuangx",495,220,205,210,0,0,0,210,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [18] = {207,"上庸",3,1,1,3,1,"3","img_mine_bg02","txt_mine01_207","img_mine_icon23","img_mine_icon43","moving_kuangzhan_tongkuangx",477,461,203,208,0,0,0,210,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [19] = {208,"天水",3,1,1,3,1,"3","img_mine_bg02","txt_mine01_208","img_mine_icon23","img_mine_icon43","moving_kuangzhan_tongkuangx",355,730,209,210,207,0,0,210,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [20] = {209,"安定",3,1,1,3,1,"3","img_mine_bg02","txt_mine01_209","img_mine_icon23","img_mine_icon43","moving_kuangzhan_tongkuangx",647,771,204,208,0,0,0,210,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [21] = {210,"成都",5,2,0,0,1,"3","img_mine_bg02","txt_mine01_210","img_mine_icon20","img_mine_icon20","moving_kuangzhan_tongkuangx",213,387,206,208,0,0,0,0,320,240,150,"",0,0,0,0,"","",},
        [22] = {301,"寿春",5,1,1,1,3,"4","img_mine_bg03","txt_mine01_301","img_mine_icon31","img_mine_icon41","moving_kuangzhan_jinkuangx",1675,600,100,302,304,0,0,310,320,240,150,"",0,0,0,0,"","",},
        [23] = {302,"江夏",4,1,1,2,2,"4","img_mine_bg03","txt_mine01_302","img_mine_icon32","img_mine_icon42","moving_kuangzhan_yinkuangx",1729,419,301,303,305,0,0,310,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [24] = {303,"柴桑",4,1,1,2,2,"4","img_mine_bg03","txt_mine01_303","img_mine_icon32","img_mine_icon42","moving_kuangzhan_yinkuangx",2039,526,302,307,0,0,0,310,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [25] = {304,"庐江",4,1,1,2,2,"4","img_mine_bg03","txt_mine01_304","img_mine_icon32","img_mine_icon42","moving_kuangzhan_yinkuangx",1831,739,301,309,0,0,0,310,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [26] = {305,"江陵",3,1,1,3,1,"4","img_mine_bg03","txt_mine01_305","img_mine_icon33","img_mine_icon43","moving_kuangzhan_tongkuangx",1872,212,302,306,0,0,0,310,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [27] = {306,"武陵",3,1,1,3,1,"4","img_mine_bg03","txt_mine01_306","img_mine_icon33","img_mine_icon43","moving_kuangzhan_tongkuangx",2196,185,305,310,307,0,0,310,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [28] = {307,"长沙",3,1,1,3,1,"4","img_mine_bg03","txt_mine01_307","img_mine_icon33","img_mine_icon43","moving_kuangzhan_tongkuangx",2324,396,303,306,0,0,0,310,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [29] = {308,"会稽",3,1,1,3,1,"4","img_mine_bg03","txt_mine01_308","img_mine_icon33","img_mine_icon43","moving_kuangzhan_tongkuangx",2396,673,309,310,0,0,0,310,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [30] = {309,"吴郡",3,1,1,3,1,"4","img_mine_bg03","txt_mine01_309","img_mine_icon33","img_mine_icon43","moving_kuangzhan_tongkuangx",2154,775,304,308,0,0,0,310,320,240,150,"effect_kuangzhan_hepingz",0,0,0,0,"","",},
        [31] = {310,"建邺",5,2,0,0,1,"4","img_mine_bg03","txt_mine01_310","img_mine_icon30","img_mine_icon30","moving_kuangzhan_tongkuangx",2563,466,306,308,0,0,0,0,320,240,150,"",0,0,0,0,"","",},
    }
}

-- index
local __index_pit_id = {
    [100] = 1,
    [101] = 2,
    [102] = 3,
    [103] = 4,
    [104] = 5,
    [105] = 6,
    [106] = 7,
    [107] = 8,
    [108] = 9,
    [109] = 10,
    [110] = 11,
    [201] = 12,
    [202] = 13,
    [203] = 14,
    [204] = 15,
    [205] = 16,
    [206] = 17,
    [207] = 18,
    [208] = 19,
    [209] = 20,
    [210] = 21,
    [301] = 22,
    [302] = 23,
    [303] = 24,
    [304] = 25,
    [305] = 26,
    [306] = 27,
    [307] = 28,
    [308] = 29,
    [309] = 30,
    [310] = 31,

}

-- index mainkey map
local __main_key_map = {
    [1] = 100,
    [2] = 101,
    [3] = 102,
    [4] = 103,
    [5] = 104,
    [6] = 105,
    [7] = 106,
    [8] = 107,
    [9] = 108,
    [10] = 109,
    [11] = 110,
    [12] = 201,
    [13] = 202,
    [14] = 203,
    [15] = 204,
    [16] = 205,
    [17] = 206,
    [18] = 207,
    [19] = 208,
    [20] = 209,
    [21] = 210,
    [22] = 301,
    [23] = 302,
    [24] = 303,
    [25] = 304,
    [26] = 305,
    [27] = 306,
    [28] = 307,
    [29] = 308,
    [30] = 309,
    [31] = 310,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in mine_pit")
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
function mine_pit.length()
    return #mine_pit._data
end

-- 
function mine_pit.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function mine_pit.isVersionValid(v)
    if mine_pit.version then
        if v then
            return mine_pit.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function mine_pit.indexOf(index)
    if index == nil or not mine_pit._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/mine_pit.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/mine_pit.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/mine_pit.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "mine_pit" )
                _isDataExist = mine_pit.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "mine_pit" )
                _isBaseExist = mine_pit.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "mine_pit" )
                _isExist = mine_pit.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "mine_pit" )
        local main_key = __main_key_map[index]
		local index_key = "__index_pit_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "mine_pit" )
        local main_key = __main_key_map[index]
		local index_key = "__index_pit_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = mine_pit._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "mine_pit" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function mine_pit.get(pit_id)
    
    return mine_pit.indexOf(__index_pit_id[pit_id])
        
end

--
function mine_pit.set(pit_id, key, value)
    local record = mine_pit.get(pit_id)
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
function mine_pit.index()
    return __index_pit_id
end

return mine_pit