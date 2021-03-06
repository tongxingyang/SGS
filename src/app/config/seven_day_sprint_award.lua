--seven_day_sprint_award

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  type = 2,    --类型-int 
  value = 3,    --奖励对象参数-int 
  rank_min = 4,    --最低名次-int 
  rank_max = 5,    --最高名次-int 
  award_type_1 = 6,    --奖励1类型-int 
  award_value_1 = 7,    --奖励1类型值-int 
  award_size_1 = 8,    --奖励1类型数量-int 
  award_type_2 = 9,    --奖励2类型-int 
  award_value_2 = 10,    --奖励2类型值-int 
  award_size_2 = 11,    --奖励2类型数量-int 
  award_type_3 = 12,    --奖励3类型-int 
  award_value_3 = 13,    --奖励3类型值-int 
  award_size_3 = 14,    --奖励3类型数量-int 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  type = "int",    --类型-2 
  value = "int",    --奖励对象参数-3 
  rank_min = "int",    --最低名次-4 
  rank_max = "int",    --最高名次-5 
  award_type_1 = "int",    --奖励1类型-6 
  award_value_1 = "int",    --奖励1类型值-7 
  award_size_1 = "int",    --奖励1类型数量-8 
  award_type_2 = "int",    --奖励2类型-9 
  award_value_2 = "int",    --奖励2类型值-10 
  award_size_2 = "int",    --奖励2类型数量-11 
  award_type_3 = "int",    --奖励3类型-12 
  award_value_3 = "int",    --奖励3类型值-13 
  award_size_3 = "int",    --奖励3类型数量-14 

}


-- data
local seven_day_sprint_award = {
    version =  1,
    _data = {
        [1] = {1,1,1,1,1,2,409,1,0,0,0,0,0,0,},
        [2] = {2,1,2,1,1,2,410,1,0,0,0,0,0,0,},
        [3] = {3,1,3,1,1,2,402,1,0,0,0,0,0,0,},
        [4] = {4,1,1,2,2,2,410,1,0,0,0,0,0,0,},
        [5] = {5,1,2,2,2,2,411,1,0,0,0,0,0,0,},
        [6] = {6,1,3,2,2,2,403,1,0,0,0,0,0,0,},
        [7] = {7,1,1,3,3,2,411,1,0,0,0,0,0,0,},
        [8] = {8,1,2,3,3,2,401,1,0,0,0,0,0,0,},
        [9] = {9,1,3,3,3,2,404,1,0,0,0,0,0,0,},
        [10] = {10,1,1,4,4,2,412,1,0,0,0,0,0,0,},
        [11] = {11,1,2,4,4,2,402,1,0,0,0,0,0,0,},
        [12] = {12,1,3,4,4,2,302,1,0,0,0,0,0,0,},
        [13] = {13,1,1,5,5,2,401,1,0,0,0,0,0,0,},
        [14] = {14,1,2,5,5,2,301,1,0,0,0,0,0,0,},
        [15] = {15,1,3,5,5,2,303,1,0,0,0,0,0,0,},
        [16] = {16,1,1,6,10,2,301,1,0,0,0,0,0,0,},
        [17] = {17,1,2,6,10,2,302,1,0,0,0,0,0,0,},
        [18] = {18,1,3,6,10,2,304,1,0,0,0,0,0,0,},
        [19] = {19,1,1,11,20,2,302,1,0,0,0,0,0,0,},
        [20] = {20,1,2,11,20,5,13,5000,0,0,0,0,0,0,},
        [21] = {21,1,3,11,20,5,13,2500,0,0,0,0,0,0,},
        [22] = {22,1,1,21,100,5,13,5000,0,0,0,0,0,0,},
        [23] = {23,1,2,21,100,5,13,2500,0,0,0,0,0,0,},
        [24] = {24,1,3,21,100,5,13,1000,0,0,0,0,0,0,},
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
        assert(key_map[k], "cannot find " .. k .. " in seven_day_sprint_award")
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
function seven_day_sprint_award.length()
    return #seven_day_sprint_award._data
end

-- 
function seven_day_sprint_award.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function seven_day_sprint_award.isVersionValid(v)
    if seven_day_sprint_award.version then
        if v then
            return seven_day_sprint_award.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function seven_day_sprint_award.indexOf(index)
    if index == nil or not seven_day_sprint_award._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/seven_day_sprint_award.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/seven_day_sprint_award.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/seven_day_sprint_award.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "seven_day_sprint_award" )
                _isDataExist = seven_day_sprint_award.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "seven_day_sprint_award" )
                _isBaseExist = seven_day_sprint_award.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "seven_day_sprint_award" )
                _isExist = seven_day_sprint_award.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "seven_day_sprint_award" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "seven_day_sprint_award" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = seven_day_sprint_award._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "seven_day_sprint_award" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function seven_day_sprint_award.get(id)
    
    return seven_day_sprint_award.indexOf(__index_id[id])
        
end

--
function seven_day_sprint_award.set(id, key, value)
    local record = seven_day_sprint_award.get(id)
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
function seven_day_sprint_award.index()
    return __index_id
end

return seven_day_sprint_award