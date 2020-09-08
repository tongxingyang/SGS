--instrument_level

local instrument_level = {
    -- key
    __key_map = {
      level = 1,    --神兵等级_key-int 
      name = 2,    --天赋名称-string 
      description = 3,    --天赋描述-string 
    
    },
    -- data
    _data = {
        [1] = {0,"","",},
        [2] = {1,"","",},
        [3] = {2,"","",},
        [4] = {3,"","",},
        [5] = {4,"","",},
        [6] = {5,"攻击1","攻击+400",},
        [7] = {6,"","",},
        [8] = {7,"","",},
        [9] = {8,"","",},
        [10] = {9,"","",},
        [11] = {10,"","",},
        [12] = {0,"","",},
        [13] = {1,"","",},
        [14] = {2,"","    ",},
        [15] = {3,"","",},
        [16] = {4,"","",},
        [17] = {5,"攻击1","攻击+600",},
        [18] = {6,"","",},
        [19] = {7,"","",},
        [20] = {8,"","",},
        [21] = {9,"","",},
        [22] = {10,"强命2","生命+4800",},
        [23] = {11,"","",},
        [24] = {12,"","",},
        [25] = {13,"","",},
        [26] = {14,"","",},
        [27] = {15,"专注3","伤害减免+8%",},
        [28] = {16,"","",},
        [29] = {17,"","",},
        [30] = {18,"","",},
        [31] = {19,"","",},
        [32] = {20,"无双4","伤害加成+8%",},
        [33] = {21,"","",},
        [34] = {22,"","",},
        [35] = {23,"","",},
        [36] = {24,"","",},
        [37] = {25,"","",},
        [38] = {26,"","",},
        [39] = {27,"","",},
        [40] = {28,"","",},
        [41] = {29,"","",},
        [42] = {30,"磨砺5","攻击加成+10%",},
        [43] = {31,"","",},
        [44] = {32,"","",},
        [45] = {33,"","",},
        [46] = {34,"","",},
        [47] = {35,"壁垒6","伤害减免+10%",},
        [48] = {36,"","",},
        [49] = {37,"","",},
        [50] = {38,"","",},
        [51] = {39,"","",},
        [52] = {40,"强韧7","生命加成+10%",},
        [53] = {41,"","",},
        [54] = {42,"","",},
        [55] = {43,"","",},
        [56] = {44,"","",},
        [57] = {45,"荣耀8","伤害加成+8%",},
        [58] = {46,"","",},
        [59] = {47,"","",},
        [60] = {48,"","",},
        [61] = {49,"","",},
        [62] = {50,"","",},
        [63] = {0,"","",},
        [64] = {1,"","",},
        [65] = {2,"","    ",},
        [66] = {3,"","",},
        [67] = {4,"","",},
        [68] = {5,"攻击1","攻击+1000",},
        [69] = {6,"","",},
        [70] = {7,"","",},
        [71] = {8,"","",},
        [72] = {9,"","",},
        [73] = {10,"强命2","生命+8000",},
        [74] = {11,"","",},
        [75] = {12,"","",},
        [76] = {13,"","",},
        [77] = {14,"","",},
        [78] = {15,"专注3","伤害减免+10%",},
        [79] = {16,"","",},
        [80] = {17,"","",},
        [81] = {18,"","",},
        [82] = {19,"","",},
        [83] = {20,"无双4","伤害加成+10%",},
        [84] = {21,"","",},
        [85] = {22,"","",},
        [86] = {23,"","",},
        [87] = {24,"","",},
        [88] = {25,"","",},
        [89] = {26,"","",},
        [90] = {27,"","",},
        [91] = {28,"","",},
        [92] = {29,"","",},
        [93] = {30,"磨砺5","攻击加成+12%",},
        [94] = {31,"","",},
        [95] = {32,"","",},
        [96] = {33,"","",},
        [97] = {34,"","",},
        [98] = {35,"壁垒6","伤害减免+12%",},
        [99] = {36,"","",},
        [100] = {37,"","",},
        [101] = {38,"","",},
        [102] = {39,"","",},
        [103] = {40,"强韧7","生命加成+12%",},
        [104] = {41,"","",},
        [105] = {42,"","",},
        [106] = {43,"","",},
        [107] = {44,"","",},
        [108] = {45,"荣耀8","伤害加成+10%",},
        [109] = {46,"","",},
        [110] = {47,"","",},
        [111] = {48,"","",},
        [112] = {49,"","",},
        [113] = {50,"","",},
        [114] = {51,"","",},
        [115] = {52,"","",},
        [116] = {53,"","",},
        [117] = {54,"","",},
        [118] = {55,"磨砺9","攻击加成+12%",},
        [119] = {56,"","",},
        [120] = {57,"","",},
        [121] = {58,"","",},
        [122] = {59,"","",},
        [123] = {60,"壁垒10","伤害减免+12%",},
        [124] = {61,"","",},
        [125] = {62,"","",},
        [126] = {63,"","",},
        [127] = {64,"","",},
        [128] = {65,"强韧11","生命加成+12%",},
        [129] = {66,"","",},
        [130] = {67,"","",},
        [131] = {68,"","",},
        [132] = {69,"","",},
        [133] = {70,"荣耀12","伤害加成+10%",},
        [134] = {71,"","",},
        [135] = {72,"","",},
        [136] = {73,"","",},
        [137] = {74,"","",},
        [138] = {75,"","",},
        [139] = {0,"","",},
        [140] = {1,"","",},
        [141] = {2,"","    ",},
        [142] = {3,"","",},
        [143] = {4,"","",},
        [144] = {5,"攻击1","攻击+600",},
        [145] = {6,"","",},
        [146] = {7,"","",},
        [147] = {8,"","",},
        [148] = {9,"","",},
        [149] = {10,"强命2","生命+4800",},
        [150] = {11,"","",},
        [151] = {12,"","",},
        [152] = {13,"","",},
        [153] = {14,"","",},
        [154] = {15,"专注3","伤害加成+8%",},
        [155] = {16,"","",},
        [156] = {17,"","",},
        [157] = {18,"","",},
        [158] = {19,"","",},
        [159] = {20,"无双4","生命加成+8%",},
        [160] = {21,"","",},
        [161] = {22,"","",},
        [162] = {23,"","",},
        [163] = {24,"","",},
        [164] = {25,"","",},
        [165] = {26,"","",},
        [166] = {27,"","",},
        [167] = {28,"","",},
        [168] = {29,"","",},
        [169] = {30,"暴烈5","暴击几率+10%",},
        [170] = {31,"","",},
        [171] = {32,"","",},
        [172] = {33,"","",},
        [173] = {34,"","",},
        [174] = {35,"铁壁6","抗暴几率+10%",},
        [175] = {36,"","",},
        [176] = {37,"","",},
        [177] = {38,"","",},
        [178] = {39,"","",},
        [179] = {40,"强韧7","生命加成+10%",},
        [180] = {41,"","",},
        [181] = {42,"","",},
        [182] = {43,"","",},
        [183] = {44,"","",},
        [184] = {45,"磨砺8","攻击加成+10%",},
        [185] = {46,"","",},
        [186] = {47,"","",},
        [187] = {48,"","",},
        [188] = {49,"","",},
        [189] = {50,"","",},
        [190] = {0,"","",},
        [191] = {1,"","",},
        [192] = {2,"","",},
        [193] = {3,"","",},
        [194] = {4,"","",},
        [195] = {5,"攻击1","攻击+1000",},
        [196] = {6,"","",},
        [197] = {7,"","",},
        [198] = {8,"","",},
        [199] = {9,"","",},
        [200] = {10,"强命2","生命+8000",},
        [201] = {11,"","",},
        [202] = {12,"","",},
        [203] = {13,"","",},
        [204] = {14,"","",},
        [205] = {15,"专注3","伤害减免+10%",},
        [206] = {16,"","",},
        [207] = {17,"","",},
        [208] = {18,"","",},
        [209] = {19,"","",},
        [210] = {20,"无双4","伤害加成+10%",},
        [211] = {21,"","",},
        [212] = {22,"","",},
        [213] = {23,"","",},
        [214] = {24,"","",},
        [215] = {25,"","",},
        [216] = {26,"","",},
        [217] = {27,"","",},
        [218] = {28,"","",},
        [219] = {29,"","",},
        [220] = {30,"磨砺5","攻击加成+12%",},
        [221] = {31,"","",},
        [222] = {32,"","",},
        [223] = {33,"","",},
        [224] = {34,"","",},
        [225] = {35,"壁垒6","伤害减免+12%",},
        [226] = {36,"","",},
        [227] = {37,"","",},
        [228] = {38,"","",},
        [229] = {39,"","",},
        [230] = {40,"强韧7","生命加成+12%",},
        [231] = {41,"","",},
        [232] = {42,"","",},
        [233] = {43,"","",},
        [234] = {44,"","",},
        [235] = {45,"荣耀8","伤害加成+10%",},
        [236] = {46,"","",},
        [237] = {47,"","",},
        [238] = {48,"","",},
        [239] = {49,"","",},
        [240] = {50,"","",},
        [241] = {51,"","",},
        [242] = {52,"","",},
        [243] = {53,"","",},
        [244] = {54,"","",},
        [245] = {55,"磨砺9","攻击加成+12%",},
        [246] = {56,"","",},
        [247] = {57,"","",},
        [248] = {58,"","",},
        [249] = {59,"","",},
        [250] = {60,"壁垒10","伤害减免+12%",},
        [251] = {61,"","",},
        [252] = {62,"","",},
        [253] = {63,"","",},
        [254] = {64,"","",},
        [255] = {65,"强韧11","生命加成+12%",},
        [256] = {66,"","",},
        [257] = {67,"","",},
        [258] = {68,"","",},
        [259] = {69,"","",},
        [260] = {70,"荣耀12","伤害加成+10%",},
        [261] = {71,"","",},
        [262] = {72,"","",},
        [263] = {73,"","",},
        [264] = {74,"","",},
        [265] = {75,"","",},
        [266] = {0,"","",},
        [267] = {1,"","",},
        [268] = {2,"","",},
        [269] = {3,"","",},
        [270] = {4,"","",},
        [271] = {5,"攻击1","攻击+1500",},
        [272] = {6,"","",},
        [273] = {7,"","",},
        [274] = {8,"","",},
        [275] = {9,"","",},
        [276] = {10,"强命2","生命+12000",},
        [277] = {11,"","",},
        [278] = {12,"","",},
        [279] = {13,"","",},
        [280] = {14,"","",},
        [281] = {15,"专注3","伤害减免+12%",},
        [282] = {16,"","",},
        [283] = {17,"","",},
        [284] = {18,"","",},
        [285] = {19,"","",},
        [286] = {20,"无双4","伤害加成+12%",},
        [287] = {21,"","",},
        [288] = {22,"","",},
        [289] = {23,"","",},
        [290] = {24,"","",},
        [291] = {25,"","",},
        [292] = {26,"","",},
        [293] = {27,"","",},
        [294] = {28,"","",},
        [295] = {29,"","",},
        [296] = {30,"磨砺5","攻击加成+14%",},
        [297] = {31,"","",},
        [298] = {32,"","",},
        [299] = {33,"","",},
        [300] = {34,"","",},
        [301] = {35,"壁垒6","伤害减免+14%",},
        [302] = {36,"","",},
        [303] = {37,"","",},
        [304] = {38,"","",},
        [305] = {39,"","",},
        [306] = {40,"强韧7","生命加成+14%",},
        [307] = {41,"","",},
        [308] = {42,"","",},
        [309] = {43,"","",},
        [310] = {44,"","",},
        [311] = {45,"荣耀8","伤害加成+12%",},
        [312] = {46,"","",},
        [313] = {47,"","",},
        [314] = {48,"","",},
        [315] = {49,"","",},
        [316] = {50,"","",},
        [317] = {51,"","",},
        [318] = {52,"","",},
        [319] = {53,"","",},
        [320] = {54,"","",},
        [321] = {55,"磨砺9","攻击加成+14%",},
        [322] = {56,"","",},
        [323] = {57,"","",},
        [324] = {58,"","",},
        [325] = {59,"","",},
        [326] = {60,"壁垒10","伤害减免+14%",},
        [327] = {61,"","",},
        [328] = {62,"","",},
        [329] = {63,"","",},
        [330] = {64,"","",},
        [331] = {65,"强韧11","生命加成+14%",},
        [332] = {66,"","",},
        [333] = {67,"","",},
        [334] = {68,"","",},
        [335] = {69,"","",},
        [336] = {70,"荣耀12","伤害加成+12%",},
        [337] = {71,"","",},
        [338] = {72,"","",},
        [339] = {73,"","",},
        [340] = {74,"","",},
        [341] = {75,"","",},
    }
}

return instrument_level