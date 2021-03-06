--cross_boss_avatar_position

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  type = 2,    --类型-int 
  x = 3,    --横坐标-int 
  y = 4,    --纵坐标-int 
  hitorder = 5,    --击倒排序-int 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  type = "int",    --类型-2 
  x = "int",    --横坐标-3 
  y = "int",    --纵坐标-4 
  hitorder = "int",    --击倒排序-5 

}


-- data
local cross_boss_avatar_position = {
    version =  1,
    _data = {
        [1] = {1,0,568,280,0,},
        [2] = {2,1,425,280,1,},
        [3] = {3,1,711,280,1,},
        [4] = {4,2,262,190,3,},
        [5] = {5,2,885,159,3,},
        [6] = {6,2,350,90,4,},
        [7] = {7,2,794,88,4,},
        [8] = {8,2,177,254,3,},
        [9] = {9,2,978,264,3,},
        [10] = {10,2,217,81,4,},
        [11] = {11,2,999,153,4,},
        [12] = {12,2,140,148,4,},
        [13] = {13,2,936,74,4,},
        [14] = {14,2,79,84,5,},
        [15] = {15,2,1062,86,5,},
        [16] = {16,2,244,329,3,},
        [17] = {17,2,932,313,3,},
        [18] = {18,2,92,249,4,},
        [19] = {19,2,1066,249,4,},
        [20] = {20,2,37,159,5,},
        [21] = {21,2,1120,172,5,},
        [22] = {22,2,163,376,4,},
        [23] = {23,2,1001,338,4,},
        [24] = {24,2,85,373,5,},
        [25] = {25,2,1061,385,5,},
        [26] = {26,2,289,15,5,},
        [27] = {27,2,40,286,5,},
        [28] = {28,2,-54,140,6,},
        [29] = {29,2,1174,110,6,},
        [30] = {30,2,151,23,5,},
        [31] = {31,2,1213,209,6,},
        [32] = {32,2,240,404,4,},
        [33] = {33,2,901,391,4,},
        [34] = {34,2,328,409,4,},
        [35] = {35,2,813,412,4,},
        [36] = {36,2,0,351,6,},
        [37] = {37,2,1162,269,5,},
        [38] = {38,2,-21,232,6,},
        [39] = {39,2,1122,311,5,},
        [40] = {40,2,-55,312,6,},
        [41] = {41,2,995,396,5,},
        [42] = {42,2,-6,28,6,},
        [43] = {43,2,1189,354,6,},
        [44] = {44,3,366,263,1,},
        [45] = {45,3,681,232,1,},
        [46] = {46,3,428,205,2,},
        [47] = {47,3,815,275,1,},
        [48] = {48,3,303,242,2,},
        [49] = {49,3,756,339,1,},
        [50] = {50,3,415,348,1,},
        [51] = {51,3,775,212,2,},
        [52] = {52,3,336,327,1,},
        [53] = {53,3,256,296,2,},
        [54] = {54,3,851,314,2,},
        [55] = {55,3,733,251,1,},
        [56] = {56,3,691,356,1,},
        [57] = {57,4,-200,280,6,},
        [58] = {58,4,1336,280,6,},
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
    [54] = 54,
    [55] = 55,
    [56] = 56,
    [57] = 57,
    [58] = 58,
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
    [54] = 54,
    [55] = 55,
    [56] = 56,
    [57] = 57,
    [58] = 58,
    [6] = 6,
    [7] = 7,
    [8] = 8,
    [9] = 9,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in cross_boss_avatar_position")
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
function cross_boss_avatar_position.length()
    return #cross_boss_avatar_position._data
end

-- 
function cross_boss_avatar_position.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function cross_boss_avatar_position.isVersionValid(v)
    if cross_boss_avatar_position.version then
        if v then
            return cross_boss_avatar_position.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function cross_boss_avatar_position.indexOf(index)
    if index == nil or not cross_boss_avatar_position._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/cross_boss_avatar_position.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/cross_boss_avatar_position.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/cross_boss_avatar_position.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "cross_boss_avatar_position" )
                _isDataExist = cross_boss_avatar_position.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "cross_boss_avatar_position" )
                _isBaseExist = cross_boss_avatar_position.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "cross_boss_avatar_position" )
                _isExist = cross_boss_avatar_position.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "cross_boss_avatar_position" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "cross_boss_avatar_position" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = cross_boss_avatar_position._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "cross_boss_avatar_position" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function cross_boss_avatar_position.get(id)
    
    return cross_boss_avatar_position.indexOf(__index_id[id])
        
end

--
function cross_boss_avatar_position.set(id, key, value)
    local record = cross_boss_avatar_position.get(id)
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
function cross_boss_avatar_position.index()
    return __index_id
end

return cross_boss_avatar_position