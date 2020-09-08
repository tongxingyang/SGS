--guild_war_road

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  road_id = 1,    --路线id-int 
  battlefield_type = 2,    --战场类型-int 
  start_stand_point = 3,    --路径点id-int 
  end_point_id = 4,    --终点的据点id-int 
  mid_point_1 = 5,    --路径点（起点）-string 
  mid_point_2 = 6,    --路径点-string 
  mid_point_3 = 7,    --路径点-string 
  mid_point_4 = 8,    --路径点-string 
  mid_point_5 = 9,    --路径点-string 

}

-- key type
local __key_type = {
  road_id = "int",    --路线id-1 
  battlefield_type = "int",    --战场类型-2 
  start_stand_point = "int",    --路径点id-3 
  end_point_id = "int",    --终点的据点id-4 
  mid_point_1 = "string",    --路径点（起点）-5 
  mid_point_2 = "string",    --路径点-6 
  mid_point_3 = "string",    --路径点-7 
  mid_point_4 = "string",    --路径点-8 
  mid_point_5 = "string",    --路径点-9 

}


-- data
local guild_war_road = {
    version =  1,
    _data = {
        [1] = {1,1,1,2,"511|513","509|647","842|712","","",},
        [2] = {2,1,1,3,"511|513","509|366","841|249","","",},
        [3] = {3,1,2,1,"843|715","509|647","511|513","","",},
        [4] = {4,1,2,4,"843|715","1142|717","","","",},
        [5] = {5,1,3,1,"842|268","512|369","511|513","","",},
        [6] = {6,1,3,5,"842|268","1141|267","","","",},
        [7] = {7,1,4,2,"1142|717","843|715","","","",},
        [8] = {8,1,4,6,"1142|717","1317|663","1477|494","1634|501","",},
        [9] = {9,1,5,3,"1141|267","842|268","","","",},
        [10] = {10,1,5,6,"1141|267","1307|317","1477|494","1634|501","",},
        [11] = {11,1,6,4,"1634|501","1477|494","1317|663","1142|717","",},
        [12] = {12,1,6,5,"1634|501","1477|494","1307|317","1141|267","",},
        [13] = {13,1,6,7,"1634|501","2239|490","","","",},
        [14] = {14,1,6,8,"1634|501","1860|485","2036|702","2590|680","",},
        [15] = {15,1,6,9,"1634|501","1860|485","2028|268","2589|295","",},
        [16] = {16,1,7,6,"2239|490","1634|501","","","",},
        [17] = {17,1,7,8,"2322|572","2353|680","2590|680","","",},
        [18] = {18,1,7,9,"2322|424","2360|282","2589|295","","",},
        [19] = {19,1,8,6,"2590|680","2036|702","1860|485","1634|501","",},
        [20] = {20,1,8,7,"2590|680","2353|680","2322|572","","",},
        [21] = {21,1,8,10,"2590|680","2865|493","2988|488","","",},
        [22] = {22,1,9,6,"2589|295","2028|268","1860|485","1634|501","",},
        [23] = {23,1,9,7,"2589|295","2360|282","2322|424","","",},
        [24] = {24,1,9,10,"2589|295","2865|493","2988|488","","",},
        [25] = {25,1,10,8,"2988|488","2865|493","2590|680","","",},
        [26] = {26,1,10,9,"2988|488","2865|493","2589|295","","",},
        [27] = {1001,2,1001,3,"695|829","1138|786","","","",},
        [28] = {1002,2,1002,4,"687|383","1138|411","","","",},
        [29] = {1003,2,1003,1,"1138|786","695|829","","","",},
        [30] = {1004,2,1003,4,"1138|786","1138|411","","","",},
        [31] = {1005,2,1003,5,"1138|786","1650|878","","","",},
        [32] = {1006,2,1003,6,"1138|786","1638|594","","","",},
        [33] = {1007,2,1004,2,"1138|411","687|383","","","",},
        [34] = {1008,2,1004,3,"1138|411","1138|786","","","",},
        [35] = {1009,2,1004,6,"1138|411","1638|594","","","",},
        [36] = {1010,2,1004,7,"1138|411","1654|323","","","",},
        [37] = {1011,2,1005,3,"1650|878","1138|786","","","",},
        [38] = {1012,2,1005,8,"1650|878","2112|795","","","",},
        [39] = {1013,2,1006,3,"1638|594","1138|786","","","",},
        [40] = {1014,2,1006,4,"1638|594","1138|411","","","",},
        [41] = {1015,2,1006,8,"1638|594","2112|795","","","",},
        [42] = {1016,2,1006,9,"1638|594","2108|403","","","",},
        [43] = {1017,2,1007,4,"1654|323","1138|411","","","",},
        [44] = {1018,2,1007,9,"1654|323","2108|403","","","",},
        [45] = {1019,2,1008,5,"2112|795","1650|878","","","",},
        [46] = {1020,2,1008,6,"2112|795","1638|594","","","",},
        [47] = {1021,2,1008,10,"2112|795","2773|786","2858|815","","",},
        [48] = {1022,2,1009,6,"2108|403","1638|594","","","",},
        [49] = {1023,2,1009,7,"2108|403","1654|323","","","",},
        [50] = {1024,2,1009,11,"2108|403","2770|405","2860|388","","",},
        [51] = {1025,2,1010,8,"2858|815","2773|786","2112|795","","",},
        [52] = {1026,2,1010,12,"2858|815","3048|712","","","",},
        [53] = {1027,2,1010,13,"2858|815","2928|850","3450|846","3516|813","",},
        [54] = {1028,2,1011,9,"2860|388","2770|405","2108|403","","",},
        [55] = {1029,2,1011,12,"2860|388","3074|527","","","",},
        [56] = {1030,2,1011,18,"2860|388","2957|342","3453|343","3514|387","",},
        [57] = {1031,2,1012,10,"3048|712","2858|815","","","",},
        [58] = {1032,2,1012,11,"3074|527","2860|388","","","",},
        [59] = {1033,2,1013,10,"3516|813","3452|846","2928|850","2858|815","",},
        [60] = {1034,2,1013,18,"3516|813","3562|731","3562|448","3514|387","",},
        [61] = {1035,2,1013,14,"3516|813","3565|591","4078|599","","",},
        [62] = {1036,2,1014,13,"4078|599","3565|591","3516|813","","",},
        [63] = {1037,2,1014,18,"4078|599","3565|591","3514|387","","",},
        [64] = {1038,2,1018,11,"3514|387","3453|343","2957|342","2860|388","",},
        [65] = {1039,2,1018,13,"3514|387","3562|448","3562|731","3516|813","",},
        [66] = {1040,2,1018,14,"3514|387","3565|591","4078|599","","",},
        [67] = {2001,3,2001,4,"784|1380","1195|1384","","","",},
        [68] = {2002,3,2002,5,"786|915","1200|921","","","",},
        [69] = {2003,3,2003,6,"779|426","1198|432","","","",},
        [70] = {2004,3,2004,1,"1195|1384","784|1380","","","",},
        [71] = {2005,3,2004,7,"1195|1384","1443|1334","1624|1156","","",},
        [72] = {2006,3,2005,2,"1200|921","786|915","","","",},
        [73] = {2007,3,2005,7,"1200|921","1484|971","1624|1156","","",},
        [74] = {2008,3,2005,8,"1200|921","1472|858","1634|702","","",},
        [75] = {2009,3,2006,3,"1198|432","779|426","","","",},
        [76] = {2010,3,2006,8,"1198|432","1479|490","1634|702","","",},
        [77] = {2011,3,2007,4,"1624|1156","1443|1334","1195|1384","","",},
        [78] = {2012,3,2007,5,"1624|1156","1484|971","1200|921","","",},
        [79] = {2013,3,2007,9,"1624|1156","2314|1203","","","",},
        [80] = {2014,3,2008,5,"1634|702","1472|858","1200|921","","",},
        [81] = {2015,3,2008,6,"1634|702","1479|490","1198|432","","",},
        [82] = {2016,3,2008,10,"1634|702","2315|692","","","",},
        [83] = {2017,3,2009,7,"2314|1203","1624|1156","","","",},
        [84] = {2018,3,2009,10,"2314|1203","2315|692","","","",},
        [85] = {2019,3,2009,11,"2314|1203","3024|1346","","","",},
        [86] = {2020,3,2009,12,"2314|1203","3022|959","","","",},
        [87] = {2021,3,2010,8,"2315|692","1634|702","","","",},
        [88] = {2022,3,2010,9,"2315|692","2314|1203","","","",},
        [89] = {2023,3,2010,12,"2315|692","3022|959","","","",},
        [90] = {2024,3,2010,13,"2315|692","3029|521","","","",},
        [91] = {2025,3,2011,9,"3024|1346","2314|1203","","","",},
        [92] = {2026,3,2011,14,"3024|1346","3602|1344","3674|1297","","",},
        [93] = {2027,3,2012,9,"3022|959","2314|1203","","","",},
        [94] = {2028,3,2012,10,"3022|959","2315|692","","","",},
        [95] = {2029,3,2012,23,"3022|959","3664|942","","","",},
        [96] = {2030,3,2013,10,"3029|521","2315|692","","","",},
        [97] = {2031,3,2013,15,"3029|521","3602|516","3676|564","","",},
        [98] = {2032,3,2014,11,"3674|1297","3602|1344","3024|1346","","",},
        [99] = {2033,3,2014,23,"3674|1297","3664|942","","","",},
        [100] = {2034,3,2014,16,"3674|1297","3754|1354","4029|1353","4036|1044","",},
        [101] = {2035,3,2014,17,"3674|1297","3754|1354","4338|1346","4409|1294","",},
        [102] = {2036,3,2015,13,"3676|564","3602|516","3029|521","","",},
        [103] = {2037,3,2015,23,"3676|564","3664|942","","","",},
        [104] = {2038,3,2015,16,"3676|564","3747|518","4026|520","4028|866","",},
        [105] = {2039,3,2015,18,"3676|564","3747|518","4348|511","4409|561","",},
        [106] = {2040,3,2016,23,"3962|949","3664|942","","","",},
        [107] = {2041,3,2016,14,"4036|1044","4029|1353","3754|1354","3674|1297","",},
        [108] = {2042,3,2016,15,"4028|866","4026|520","3747|518","3676|564","",},
        [109] = {2043,3,2016,17,"4036|1044","4029|1353","4338|1346","4409|1294","",},
        [110] = {2044,3,2016,18,"4028|866","4026|520","4348|511","4409|561","",},
        [111] = {2045,3,2017,14,"4409|1294","4338|1346","3754|1354","3674|1297","",},
        [112] = {2046,3,2017,16,"4409|1294","4338|1346","4029|1353","4036|1044","",},
        [113] = {2048,3,2017,24,"4409|1294","4405|940","","","",},
        [114] = {2049,3,2018,15,"4409|561","4348|511","3747|518","3676|564","",},
        [115] = {2050,3,2018,16,"4409|561","4348|511","4024|518","4028|866","",},
        [116] = {2052,3,2018,24,"4409|561","4405|940","","","",},
        [117] = {2053,3,2019,24,"4805|925","4405|940","","","",},
        [118] = {2054,3,2023,12,"3664|942","3022|959","","","",},
        [119] = {2055,3,2023,14,"3664|942","3674|1297","","","",},
        [120] = {2056,3,2023,15,"3664|942","3676|564","","","",},
        [121] = {2057,3,2023,16,"3664|942","3962|949","","","",},
        [122] = {2058,3,2024,17,"4405|940","4409|1294","","","",},
        [123] = {2059,3,2024,18,"4405|940","4409|561","","","",},
        [124] = {2060,3,2024,19,"4405|940","4805|925","","","",},
    }
}

-- index
local __index_road_id = {
    [1] = 1,
    [10] = 10,
    [1001] = 27,
    [1002] = 28,
    [1003] = 29,
    [1004] = 30,
    [1005] = 31,
    [1006] = 32,
    [1007] = 33,
    [1008] = 34,
    [1009] = 35,
    [1010] = 36,
    [1011] = 37,
    [1012] = 38,
    [1013] = 39,
    [1014] = 40,
    [1015] = 41,
    [1016] = 42,
    [1017] = 43,
    [1018] = 44,
    [1019] = 45,
    [1020] = 46,
    [1021] = 47,
    [1022] = 48,
    [1023] = 49,
    [1024] = 50,
    [1025] = 51,
    [1026] = 52,
    [1027] = 53,
    [1028] = 54,
    [1029] = 55,
    [1030] = 56,
    [1031] = 57,
    [1032] = 58,
    [1033] = 59,
    [1034] = 60,
    [1035] = 61,
    [1036] = 62,
    [1037] = 63,
    [1038] = 64,
    [1039] = 65,
    [1040] = 66,
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
    [2001] = 67,
    [2002] = 68,
    [2003] = 69,
    [2004] = 70,
    [2005] = 71,
    [2006] = 72,
    [2007] = 73,
    [2008] = 74,
    [2009] = 75,
    [2010] = 76,
    [2011] = 77,
    [2012] = 78,
    [2013] = 79,
    [2014] = 80,
    [2015] = 81,
    [2016] = 82,
    [2017] = 83,
    [2018] = 84,
    [2019] = 85,
    [2020] = 86,
    [2021] = 87,
    [2022] = 88,
    [2023] = 89,
    [2024] = 90,
    [2025] = 91,
    [2026] = 92,
    [2027] = 93,
    [2028] = 94,
    [2029] = 95,
    [2030] = 96,
    [2031] = 97,
    [2032] = 98,
    [2033] = 99,
    [2034] = 100,
    [2035] = 101,
    [2036] = 102,
    [2037] = 103,
    [2038] = 104,
    [2039] = 105,
    [2040] = 106,
    [2041] = 107,
    [2042] = 108,
    [2043] = 109,
    [2044] = 110,
    [2045] = 111,
    [2046] = 112,
    [2048] = 113,
    [2049] = 114,
    [2050] = 115,
    [2052] = 116,
    [2053] = 117,
    [2054] = 118,
    [2055] = 119,
    [2056] = 120,
    [2057] = 121,
    [2058] = 122,
    [2059] = 123,
    [2060] = 124,
    [21] = 21,
    [22] = 22,
    [23] = 23,
    [24] = 24,
    [25] = 25,
    [26] = 26,
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
    [27] = 1001,
    [28] = 1002,
    [29] = 1003,
    [30] = 1004,
    [31] = 1005,
    [32] = 1006,
    [33] = 1007,
    [34] = 1008,
    [35] = 1009,
    [36] = 1010,
    [37] = 1011,
    [38] = 1012,
    [39] = 1013,
    [40] = 1014,
    [41] = 1015,
    [42] = 1016,
    [43] = 1017,
    [44] = 1018,
    [45] = 1019,
    [46] = 1020,
    [47] = 1021,
    [48] = 1022,
    [49] = 1023,
    [50] = 1024,
    [51] = 1025,
    [52] = 1026,
    [53] = 1027,
    [54] = 1028,
    [55] = 1029,
    [56] = 1030,
    [57] = 1031,
    [58] = 1032,
    [59] = 1033,
    [60] = 1034,
    [61] = 1035,
    [62] = 1036,
    [63] = 1037,
    [64] = 1038,
    [65] = 1039,
    [66] = 1040,
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
    [67] = 2001,
    [68] = 2002,
    [69] = 2003,
    [70] = 2004,
    [71] = 2005,
    [72] = 2006,
    [73] = 2007,
    [74] = 2008,
    [75] = 2009,
    [76] = 2010,
    [77] = 2011,
    [78] = 2012,
    [79] = 2013,
    [80] = 2014,
    [81] = 2015,
    [82] = 2016,
    [83] = 2017,
    [84] = 2018,
    [85] = 2019,
    [86] = 2020,
    [87] = 2021,
    [88] = 2022,
    [89] = 2023,
    [90] = 2024,
    [91] = 2025,
    [92] = 2026,
    [93] = 2027,
    [94] = 2028,
    [95] = 2029,
    [96] = 2030,
    [97] = 2031,
    [98] = 2032,
    [99] = 2033,
    [100] = 2034,
    [101] = 2035,
    [102] = 2036,
    [103] = 2037,
    [104] = 2038,
    [105] = 2039,
    [106] = 2040,
    [107] = 2041,
    [108] = 2042,
    [109] = 2043,
    [110] = 2044,
    [111] = 2045,
    [112] = 2046,
    [113] = 2048,
    [114] = 2049,
    [115] = 2050,
    [116] = 2052,
    [117] = 2053,
    [118] = 2054,
    [119] = 2055,
    [120] = 2056,
    [121] = 2057,
    [122] = 2058,
    [123] = 2059,
    [124] = 2060,
    [21] = 21,
    [22] = 22,
    [23] = 23,
    [24] = 24,
    [25] = 25,
    [26] = 26,
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
        assert(key_map[k], "cannot find " .. k .. " in guild_war_road")
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
function guild_war_road.length()
    return #guild_war_road._data
end

-- 
function guild_war_road.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function guild_war_road.isVersionValid(v)
    if guild_war_road.version then
        if v then
            return guild_war_road.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function guild_war_road.indexOf(index)
    if index == nil or not guild_war_road._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/guild_war_road.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/guild_war_road.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/guild_war_road.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "guild_war_road" )
                _isDataExist = guild_war_road.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "guild_war_road" )
                _isBaseExist = guild_war_road.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "guild_war_road" )
                _isExist = guild_war_road.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "guild_war_road" )
        local main_key = __main_key_map[index]
		local index_key = "__index_road_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "guild_war_road" )
        local main_key = __main_key_map[index]
		local index_key = "__index_road_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = guild_war_road._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "guild_war_road" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function guild_war_road.get(road_id)
    
    return guild_war_road.indexOf(__index_road_id[road_id])
        
end

--
function guild_war_road.set(road_id, key, value)
    local record = guild_war_road.get(road_id)
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
function guild_war_road.index()
    return __index_road_id
end

return guild_war_road