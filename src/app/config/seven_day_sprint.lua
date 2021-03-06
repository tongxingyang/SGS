--seven_day_sprint

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --id-int 
  type = 2,    --类型-int 
  name = 3,    --活动名称-string 
  function_id = 4,    --开启等级-int 
  is_work = 5,    --是否生效-int 
  open_day = 6,    --开启时间-int 
  over_day = 7,    --结束时间-int 
  over_view_day = 8,    --结束后显示时间-int 
  order = 9,    --页签排序-int 
  activity_content_text = 10,    --活动内容文本-string 

}

-- key type
local __key_type = {
  id = "int",    --id-1 
  type = "int",    --类型-2 
  name = "string",    --活动名称-3 
  function_id = "int",    --开启等级-4 
  is_work = "int",    --是否生效-5 
  open_day = "int",    --开启时间-6 
  over_day = "int",    --结束时间-7 
  over_view_day = "int",    --结束后显示时间-8 
  order = "int",    --页签排序-9 
  activity_content_text = "string",    --活动内容文本-10 

}


-- data
local seven_day_sprint = {
    version =  1,
    _data = {
        [1] = {1,1,"百大军团",5,1,1,9,10,1,"为鼓励各主公征召人马开疆辟土，开服第#num#天将评选出百大军团并发放对应奖励。参与军团活动越多，军团排名越高！",},
    }
}

-- index
local __index_id = {
    [1] = 1,

}

-- index mainkey map
local __main_key_map = {
    [1] = 1,

}

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in seven_day_sprint")
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
function seven_day_sprint.length()
    return #seven_day_sprint._data
end

-- 
function seven_day_sprint.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function seven_day_sprint.isVersionValid(v)
    if seven_day_sprint.version then
        if v then
            return seven_day_sprint.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function seven_day_sprint.indexOf(index)
    if index == nil or not seven_day_sprint._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/seven_day_sprint.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/seven_day_sprint.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/seven_day_sprint.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "seven_day_sprint" )
                _isDataExist = seven_day_sprint.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "seven_day_sprint" )
                _isBaseExist = seven_day_sprint.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "seven_day_sprint" )
                _isExist = seven_day_sprint.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "seven_day_sprint" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "seven_day_sprint" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = seven_day_sprint._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "seven_day_sprint" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function seven_day_sprint.get(id)
    
    return seven_day_sprint.indexOf(__index_id[id])
        
end

--
function seven_day_sprint.set(id, key, value)
    local record = seven_day_sprint.get(id)
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
function seven_day_sprint.index()
    return __index_id
end

return seven_day_sprint