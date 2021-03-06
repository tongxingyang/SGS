--cross_boss_parameter

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --序号-int 
  key = 2,    --参数名称-string 
  content = 3,    --参数内容-string 

}

-- key type
local __key_type = {
  id = "int",    --序号-1 
  key = "string",    --参数名称-2 
  content = "string",    --参数内容-3 

}


-- data
local cross_boss_parameter = {
    version =  1,
    _data = {
        [1] = {1,"server_num","4",},
        [2] = {2,"week_open_time","1|3|5|7",},
        [3] = {3,"group_fix_time","12|10",},
        [4] = {4,"stamina_compute_time","12|20",},
        [5] = {5,"stamina_parameter","6.4",},
        [6] = {6,"stamina_default","10000000",},
        [7] = {7,"enter_show_time","18|40",},
        [8] = {8,"server_info_upload_time","12|10",},
        [9] = {9,"server_divide_time","12|11",},
        [10] = {10,"enter_available_time","18|40",},
        [11] = {11,"day_open_time","19|00",},
        [12] = {12,"last_time","600",},
        [13] = {13,"boss_update_time","1",},
        [14] = {14,"rank_show_max","50",},
        [15] = {15,"rank_update_interval","2",},
        [16] = {16,"chat_open_time","18|40",},
        [17] = {17,"chat_close_time","19|30",},
        [18] = {18,"blood_times","10000",},
        [19] = {19,"battle_max","5",},
        [20] = {20,"challenge_time_interval","60",},
        [21] = {21,"point_parameter","50000",},
        [22] = {22,"rob_time_interval","60",},
        [23] = {23,"rot_show_num","10",},
        [24] = {24,"rot_point_permillage","250",},
        [25] = {25,"hatred_change_condition_1","1",},
        [26] = {26,"hatred_change_condition_2","2",},
        [27] = {27,"hatred_change_condition_3","0",},
        [28] = {28,"hatred_change_condition_4","1",},
        [29] = {29,"charge_start_time","60|210|360|510",},
        [30] = {30,"charge_last_time","30",},
        [31] = {31,"weak_last_time","60",},
        [32] = {32,"lose_point_permillage","200",},
        [33] = {33,"weak_damage_permillage","2000",},
        [34] = {34,"battle_scene_1","18",},
        [35] = {35,"battle_scene_2","19",},
        [36] = {36,"normal_barrage_color_weight","55|30|15",},
        [37] = {37,"normal_barrage_speed_section","6000|12000",},
        [38] = {38,"normal_barrage_interval","1500",},
        [39] = {39,"normal_barrage_coordinate","1136,550|1136,520|1136,490|1136,460|1136,430|1136,400",},
        [40] = {40,"bottom_barrage_coordinate","580,320|580,270|580,220",},
        [41] = {41,"bottom_barrage_last","3000",},
        [42] = {42,"x_boundary","-130|1266",},
        [43] = {43,"y_boundary","0|640",},
        [44] = {44,"walk_x_boundary","-300|300",},
        [45] = {45,"walk_y_boundary","-180|180",},
        [46] = {46,"walk_speed","2|3",},
        [47] = {47,"walk_pause","0|6",},
        [48] = {48,"bonus_sold","500",},
        [49] = {49,"bonus_passed","300",},
        [50] = {50,"yubi_bonus_sold","500",},
        [51] = {51,"yubi_bonus_passed","300",},
        [52] = {52,"drop_limit","250",},
        [53] = {53,"drop_type_limit","2|5|6|8|9",},
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
    [30] = 30,
    [31] = 31,
    [32] = 32,
    [33] = 33,
    [34] = 34,
    [35] = 35,
    [36] = 36,
    [37] = 37,
    [38] = 38,
    [39] = 39,
    [4] = 4,
    [40] = 40,
    [41] = 41,
    [42] = 42,
    [43] = 43,
    [44] = 44,
    [45] = 45,
    [46] = 46,
    [47] = 47,
    [48] = 48,
    [49] = 49,
    [5] = 5,
    [50] = 50,
    [51] = 51,
    [52] = 52,
    [53] = 53,
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
    [30] = 30,
    [31] = 31,
    [32] = 32,
    [33] = 33,
    [34] = 34,
    [35] = 35,
    [36] = 36,
    [37] = 37,
    [38] = 38,
    [39] = 39,
    [4] = 4,
    [40] = 40,
    [41] = 41,
    [42] = 42,
    [43] = 43,
    [44] = 44,
    [45] = 45,
    [46] = 46,
    [47] = 47,
    [48] = 48,
    [49] = 49,
    [5] = 5,
    [50] = 50,
    [51] = 51,
    [52] = 52,
    [53] = 53,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in cross_boss_parameter")
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
function cross_boss_parameter.length()
    return #cross_boss_parameter._data
end

-- 
function cross_boss_parameter.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function cross_boss_parameter.isVersionValid(v)
    if cross_boss_parameter.version then
        if v then
            return cross_boss_parameter.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function cross_boss_parameter.indexOf(index)
    if index == nil or not cross_boss_parameter._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/cross_boss_parameter.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/cross_boss_parameter.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/cross_boss_parameter.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "cross_boss_parameter" )
                _isDataExist = cross_boss_parameter.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "cross_boss_parameter" )
                _isBaseExist = cross_boss_parameter.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "cross_boss_parameter" )
                _isExist = cross_boss_parameter.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "cross_boss_parameter" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "cross_boss_parameter" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = cross_boss_parameter._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "cross_boss_parameter" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function cross_boss_parameter.get(id)
    
    return cross_boss_parameter.indexOf(__index_id[id])
        
end

--
function cross_boss_parameter.set(id, key, value)
    local record = cross_boss_parameter.get(id)
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
function cross_boss_parameter.index()
    return __index_id
end

return cross_boss_parameter