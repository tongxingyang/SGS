--guide

local guide = {
    -- key
    __key_map = {
      id = 1,    --引导ID_key-int 
      comment_name = 2,    --NPC名称-简中-string 
      comment = 3,    --引导文本-简中-string 
    
    },
    -- data
    _data = {
        [1] = {100,"","",},
        [2] = {101,"","",},
        [3] = {102,"","",},
        [4] = {103,"","",},
        [5] = {104,"","",},
        [6] = {200,"","",},
        [7] = {201,"","",},
        [8] = {202,"","",},
        [9] = {203,"","",},
        [10] = {204,"","",},
        [11] = {205,"","",},
        [12] = {206,"张星彩","主公, 去招募更厉害的武将吧!",},
        [13] = {207,"","",},
        [14] = {208,"","",},
        [15] = {209,"","",},
        [16] = {300,"","",},
        [17] = {301,"","",},
        [18] = {302,"张星彩","主公, 点击阵容, 让关银屏上阵吧!",},
        [19] = {303,"","",},
        [20] = {304,"","",},
        [21] = {305,"","",},
        [22] = {306,"","",},
        [23] = {400,"","",},
        [24] = {401,"","",},
        [25] = {402,"张星彩","主公, 快去征战吧!",},
        [26] = {403,"","",},
        [27] = {404,"张星彩","主公, 让我们去消灭精锐军吧!",},
        [28] = {405,"","",},
        [29] = {406,"","",},
        [30] = {500,"","",},
        [31] = {501,"","",},
        [32] = {502,"","",},
        [33] = {503,"","",},
        [34] = {504,"","",},
        [35] = {505,"","",},
        [36] = {506,"","",},
        [37] = {507,"","",},
        [38] = {600,"","",},
        [39] = {601,"","",},
        [40] = {602,"张星彩","主公, 关银屏早已蓄势待发, 快给她升级吧!",},
        [41] = {603,"","",},
        [42] = {604,"","",},
        [43] = {605,"","",},
        [44] = {606,"","",},
        [45] = {607,"","",},
        [46] = {700,"","",},
        [47] = {701,"","",},
        [48] = {702,"张星彩","主公, 快去杀敌吧!",},
        [49] = {703,"","",},
        [50] = {704,"张星彩","此乃大将袁绍, 主公请小心.",},
        [51] = {705,"","",},
        [52] = {706,"","",},
        [53] = {800,"","",},
        [54] = {801,"","",},
        [55] = {802,"","",},
        [56] = {803,"张星彩","主公, 星级宝箱里可有不少好东西哟!",},
        [57] = {804,"","",},
        [58] = {805,"","",},
        [59] = {806,"","",},
        [60] = {807,"","",},
        [61] = {900,"","",},
        [62] = {901,"","",},
        [63] = {902,"张星彩","主公, 突破是提升战力的关键, 快去突破吧!",},
        [64] = {903,"","",},
        [65] = {904,"","",},
        [66] = {905,"","",},
        [67] = {906,"","",},
        [68] = {907,"","",},
        [69] = {1000,"","",},
        [70] = {1001,"","",},
        [71] = {1002,"张星彩","请主公继续征战四方, 杀出一条通天大道来!",},
        [72] = {1003,"","",},
        [73] = {1004,"张星彩","主公, 袁绍已灭, 华雄何惧, 上!",},
        [74] = {1005,"","",},
        [75] = {1006,"","",},
        [76] = {1100,"","",},
        [77] = {1101,"","",},
        [78] = {1102,"张星彩","主公, 华雄已灭, 董卓何惧, 冲啊!",},
        [79] = {1103,"","",},
        [80] = {1104,"","",},
        [81] = {1200,"","",},
        [82] = {1201,"","",},
        [83] = {1202,"","",},
        [84] = {1203,"","",},
        [85] = {1204,"","",},
        [86] = {1205,"","",},
        [87] = {1206,"张星彩","主公, 黄巾乱党实在是太嚣张了, 快灭了他!",},
        [88] = {1300,"","",},
        [89] = {1302,"","",},
        [90] = {1303,"","",},
        [91] = {1304,"","",},
        [92] = {1305,"","",},
        [93] = {1306,"张星彩","主公, 让我们去激活武将名将册吧!",},
        [94] = {1307,"","",},
        [95] = {1308,"","",},
        [96] = {1309,"","",},
        [97] = {1310,"","",},
        [98] = {1311,"","",},
        [99] = {1312,"","",},
        [100] = {1313,"","",},
        [101] = {1400,"","",},
        [102] = {1401,"","",},
        [103] = {1402,"张星彩","",},
        [104] = {1403,"","",},
        [105] = {1404,"","",},
        [106] = {1405,"","",},
        [107] = {1406,"","",},
        [108] = {1500,"","",},
        [109] = {1501,"","",},
        [110] = {1502,"张星彩","主公, 让我们去穿戴装备吧!",},
        [111] = {1503,"","",},
        [112] = {1504,"","",},
        [113] = {1600,"","",},
        [114] = {1601,"","",},
        [115] = {1602,"","",},
        [116] = {1603,"","",},
        [117] = {1604,"","",},
        [118] = {1605,"","",},
        [119] = {1606,"","",},
        [120] = {1607,"","",},
        [121] = {1608,"","",},
        [122] = {1609,"","",},
        [123] = {1610,"","",},
        [124] = {1700,"","",},
        [125] = {1701,"","",},
        [126] = {1702,"","",},
        [127] = {1703,"","",},
        [128] = {1704,"","",},
        [129] = {1705,"张星彩","主公, 让我们去打开紫将合击礼包吧!",},
        [130] = {1706,"","",},
        [131] = {1707,"","",},
        [132] = {1708,"","",},
        [133] = {1709,"","",},
        [134] = {1710,"","",},
        [135] = {1800,"","",},
        [136] = {1801,"","",},
        [137] = {1802,"","",},
        [138] = {1803,"","",},
        [139] = {1804,"","",},
        [140] = {1805,"张星彩","主公, 请点击游历!",},
        [141] = {1806,"","",},
        [142] = {1807,"","",},
        [143] = {1808,"张星彩","主公, 请开始游历!",},
        [144] = {1809,"","",},
        [145] = {1900,"","",},
        [146] = {1901,"","",},
        [147] = {1902,"张星彩","哇!触发奇遇水镜学堂, 主公真不愧为真命天子!让我们去学堂拜访下吧.",},
        [148] = {1903,"","",},
        [149] = {1904,"","",},
        [150] = {1905,"","",},
        [151] = {1906,"张星彩","主公, 让我们继续去游历吧!",},
        [152] = {1907,"","",},
        [153] = {2000,"","",},
        [154] = {2001,"","",},
        [155] = {2002,"","",},
        [156] = {2003,"","",},
        [157] = {2004,"张星彩","主公, 让我们去穿戴宝物吧!",},
        [158] = {2005,"","",},
        [159] = {2006,"","",},
        [160] = {2100,"","",},
        [161] = {2101,"","",},
        [162] = {2102,"","",},
        [163] = {2103,"","",},
        [164] = {2104,"","",},
        [165] = {2105,"","",},
        [166] = {2106,"","",},
        [167] = {2107,"","",},
        [168] = {2108,"张星彩","主公, 让我们继续游历吧!",},
        [169] = {2109,"","",},
        [170] = {2200,"","",},
        [171] = {2201,"","",},
        [172] = {2202,"","",},
        [173] = {2203,"","",},
        [174] = {2204,"","",},
        [175] = {2205,"","",},
        [176] = {2206,"张星彩","主公, 请点击冒险!",},
        [177] = {2207,"","",},
        [178] = {2208,"","",},
        [179] = {2300,"","",},
        [180] = {2301,"","",},
        [181] = {2302,"","",},
        [182] = {2303,"","",},
        [183] = {2304,"","",},
        [184] = {2305,"","",},
        [185] = {2306,"张星彩","主公, 请点击购买!",},
        [186] = {2307,"","",},
        [187] = {2308,"","",},
        [188] = {3000,"","",},
        [189] = {3001,"","",},
        [190] = {3002,"","",},
        [191] = {3003,"","",},
        [192] = {3004,"","",},
        [193] = {3005,"","",},
        [194] = {3006,"张星彩","主公, 请点击官衔!",},
        [195] = {3007,"","",},
        [196] = {3008,"","",},
        [197] = {3009,"","",},
        [198] = {3010,"","",},
        [199] = {3200,"","",},
        [200] = {3201,"","",},
        [201] = {3202,"","",},
        [202] = {3203,"","",},
        [203] = {3204,"","",},
        [204] = {3205,"张星彩","主公, 请点此加入军团吧!",},
        [205] = {4000,"","",},
        [206] = {4001,"","",},
        [207] = {4002,"","",},
        [208] = {4003,"","",},
        [209] = {4004,"","",},
        [210] = {4005,"张星彩","主公, 请点击征战!",},
        [211] = {4006,"","",},
        [212] = {4007,"","",},
        [213] = {4008,"","",},
        [214] = {4009,"","",},
        [215] = {4010,"","",},
        [216] = {4011,"","",},
        [217] = {4012,"","",},
        [218] = {4500,"","",},
        [219] = {4501,"","",},
        [220] = {4502,"","",},
        [221] = {4503,"","",},
        [222] = {4504,"","",},
        [223] = {4505,"张星彩","主公, 请点击冒险!",},
        [224] = {4506,"","",},
        [225] = {4507,"张星彩","主公, 请点击银两副本!",},
        [226] = {4508,"","",},
        [227] = {5500,"","",},
        [228] = {5501,"","",},
        [229] = {5502,"","",},
        [230] = {5503,"","",},
        [231] = {5504,"","",},
        [232] = {5505,"张星彩","主公, 请点击冒险!",},
        [233] = {5506,"","",},
        [234] = {5507,"","",},
        [235] = {5508,"","",},
        [236] = {5600,"","",},
        [237] = {5601,"","",},
        [238] = {5602,"","",},
        [239] = {5603,"","",},
        [240] = {5604,"","",},
        [241] = {5605,"张星彩","主公, 请点击购买!",},
        [242] = {5606,"","",},
        [243] = {5607,"","",},
        [244] = {5608,"","",},
        [245] = {7500,"","",},
        [246] = {7501,"","",},
        [247] = {7502,"","",},
        [248] = {7503,"张星彩","主公, 请点击更多!",},
        [249] = {7504,"","",},
        [250] = {7505,"张星彩","主公, 点这里添加武将!",},
        [251] = {7506,"","",},
        [252] = {7507,"","",},
        [253] = {7508,"","",},
        [254] = {7600,"","",},
        [255] = {7601,"","",},
        [256] = {7602,"","",},
        [257] = {7603,"","",},
        [258] = {8000,"","",},
        [259] = {8001,"","",},
        [260] = {8002,"张星彩","主公, 南蛮来了, 我们快去看看!",},
        [261] = {8003,"","",},
        [262] = {8004,"","",},
        [263] = {8005,"张星彩","主公, 全力进攻入侵的南蛮!",},
        [264] = {9000,"","",},
        [265] = {9001,"","",},
        [266] = {9002,"","",},
        [267] = {9003,"","",},
        [268] = {9004,"","",},
        [269] = {9005,"张星彩","主公, 我们快去穿戴锦囊吧!",},
        [270] = {9006,"","",},
        [271] = {9007,"","",},
        [272] = {9008,"","",},
        [273] = {12000,"","",},
        [274] = {12001,"","",},
        [275] = {12002,"","",},
        [276] = {12003,"","",},
        [277] = {12004,"","",},
        [278] = {12005,"张星彩","主公, 我们快去让熊猫出战吧!",},
        [279] = {12006,"","",},
        [280] = {12007,"","",},
        [281] = {12008,"","",},
        [282] = {12009,"","",},
        [283] = {14000,"","",},
        [284] = {14001,"","",},
        [285] = {14002,"张星彩","主公, 我们快去升级神树吧!",},
        [286] = {14003,"","",},
        [287] = {14004,"","",},
        [288] = {14005,"","",},
        [289] = {99999,"","",},
    }
}

return guide