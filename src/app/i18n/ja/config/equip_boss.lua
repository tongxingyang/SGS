--equip_boss

local equip_boss = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --强敌id-int 
      talk = 2,    --强敌对话-string 
      name = 3,    --强敌名称-string 
    
    },
    -- data
    _data = {
        [1] = {1001,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [2] = {1002,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [3] = {1003,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [4] = {1004,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [5] = {1005,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [6] = {1006,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [7] = {1007,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [8] = {1008,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [9] = {1009,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [10] = {1010,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [11] = {1011,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [12] = {1012,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [13] = {1013,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [14] = {1014,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [15] = {1015,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [16] = {1016,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [17] = {1017,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [18] = {1018,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [19] = {1019,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [20] = {1020,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [21] = {1021,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [22] = {1022,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [23] = {1023,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [24] = {1024,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [25] = {1025,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [26] = {1026,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [27] = {1027,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [28] = {1028,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [29] = {1029,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [30] = {1030,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [31] = {1031,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [32] = {1032,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [33] = {1033,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [34] = {1034,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [35] = {1035,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [36] = {1036,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [37] = {1037,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [38] = {1038,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [39] = {1039,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [40] = {1040,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [41] = {1041,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [42] = {1042,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [43] = {1043,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [44] = {1044,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [45] = {1045,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [46] = {1046,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [47] = {1047,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [48] = {1048,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [49] = {1049,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [50] = {1050,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [51] = {1051,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [52] = {1052,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [53] = {1053,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [54] = {1054,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [55] = {1055,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [56] = {1056,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [57] = {1057,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [58] = {1058,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [59] = {1059,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [60] = {1060,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [61] = {1061,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [62] = {1062,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [63] = {1063,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [64] = {1064,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [65] = {1065,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [66] = {1066,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [67] = {1067,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [68] = {1068,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [69] = {1069,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [70] = {1070,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [71] = {1071,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [72] = {1072,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [73] = {1073,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [74] = {1074,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [75] = {1075,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [76] = {1076,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [77] = {1077,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [78] = {1078,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [79] = {1079,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [80] = {1080,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [81] = {1081,"我こそ河北上将の顔良だ。わしとやり合いたい奴はいるか?","顔良",},
        [82] = {2001,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [83] = {2002,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [84] = {2003,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [85] = {2004,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [86] = {2005,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [87] = {2006,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [88] = {2007,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [89] = {2008,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [90] = {2009,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [91] = {2010,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [92] = {2011,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [93] = {2012,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [94] = {2013,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [95] = {2014,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [96] = {2015,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [97] = {2016,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [98] = {2017,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [99] = {2018,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [100] = {2019,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [101] = {2020,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [102] = {2021,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [103] = {2022,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [104] = {2023,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [105] = {2024,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [106] = {2025,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [107] = {2026,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [108] = {2027,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [109] = {2028,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [110] = {2029,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [111] = {2030,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [112] = {2031,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [113] = {2032,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [114] = {2033,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [115] = {2034,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [116] = {2035,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [117] = {2036,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [118] = {2037,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [119] = {2038,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [120] = {2039,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [121] = {2040,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [122] = {2041,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [123] = {2042,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [124] = {2043,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [125] = {2044,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [126] = {2045,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [127] = {2046,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [128] = {2047,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [129] = {2048,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [130] = {2049,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [131] = {2050,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [132] = {2051,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [133] = {2052,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [134] = {2053,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [135] = {2054,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [136] = {2055,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [137] = {2056,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [138] = {2057,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [139] = {2058,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [140] = {2059,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [141] = {2060,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [142] = {2061,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [143] = {2062,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [144] = {2063,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [145] = {2064,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [146] = {2065,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [147] = {2066,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [148] = {2067,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [149] = {2068,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [150] = {2069,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [151] = {2070,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [152] = {2071,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [153] = {2072,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [154] = {2073,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [155] = {2074,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [156] = {2075,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [157] = {2076,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [158] = {2077,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [159] = {2078,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [160] = {2079,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [161] = {2080,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [162] = {2081,"華雄はここだ！逆らえる者などおるまい！","華雄",},
        [163] = {3001,"私を止められる者はいないのか！","呂布",},
        [164] = {3002,"私を止められる者はいないのか！","呂布",},
        [165] = {3003,"私を止められる者はいないのか！","呂布",},
        [166] = {3004,"私を止められる者はいないのか！","呂布",},
        [167] = {3005,"私を止められる者はいないのか！","呂布",},
        [168] = {3006,"私を止められる者はいないのか！","呂布",},
        [169] = {3007,"私を止められる者はいないのか！","呂布",},
        [170] = {3008,"私を止められる者はいないのか！","呂布",},
        [171] = {3009,"私を止められる者はいないのか！","呂布",},
        [172] = {3010,"私を止められる者はいないのか！","呂布",},
        [173] = {3011,"私を止められる者はいないのか！","呂布",},
        [174] = {3012,"私を止められる者はいないのか！","呂布",},
        [175] = {3013,"私を止められる者はいないのか！","呂布",},
        [176] = {3014,"私を止められる者はいないのか！","呂布",},
        [177] = {3015,"私を止められる者はいないのか！","呂布",},
        [178] = {3016,"私を止められる者はいないのか！","呂布",},
        [179] = {3017,"私を止められる者はいないのか！","呂布",},
        [180] = {3018,"私を止められる者はいないのか！","呂布",},
        [181] = {3019,"私を止められる者はいないのか！","呂布",},
        [182] = {3020,"私を止められる者はいないのか！","呂布",},
        [183] = {3021,"私を止められる者はいないのか！","呂布",},
        [184] = {3022,"私を止められる者はいないのか！","呂布",},
        [185] = {3023,"私を止められる者はいないのか！","呂布",},
        [186] = {3024,"私を止められる者はいないのか！","呂布",},
        [187] = {3025,"私を止められる者はいないのか！","呂布",},
        [188] = {3026,"私を止められる者はいないのか！","呂布",},
        [189] = {3027,"私を止められる者はいないのか！","呂布",},
        [190] = {3028,"私を止められる者はいないのか！","呂布",},
        [191] = {3029,"私を止められる者はいないのか！","呂布",},
        [192] = {3030,"私を止められる者はいないのか！","呂布",},
        [193] = {3031,"私を止められる者はいないのか！","呂布",},
        [194] = {3032,"私を止められる者はいないのか！","呂布",},
        [195] = {3033,"私を止められる者はいないのか！","呂布",},
        [196] = {3034,"私を止められる者はいないのか！","呂布",},
        [197] = {3035,"私を止められる者はいないのか！","呂布",},
        [198] = {3036,"私を止められる者はいないのか！","呂布",},
        [199] = {3037,"私を止められる者はいないのか！","呂布",},
        [200] = {3038,"私を止められる者はいないのか！","呂布",},
        [201] = {3039,"私を止められる者はいないのか！","呂布",},
        [202] = {3040,"私を止められる者はいないのか！","呂布",},
        [203] = {3041,"私を止められる者はいないのか！","呂布",},
        [204] = {3042,"私を止められる者はいないのか！","呂布",},
        [205] = {3043,"私を止められる者はいないのか！","呂布",},
        [206] = {3044,"私を止められる者はいないのか！","呂布",},
        [207] = {3045,"私を止められる者はいないのか！","呂布",},
        [208] = {3046,"私を止められる者はいないのか！","呂布",},
        [209] = {3047,"私を止められる者はいないのか！","呂布",},
        [210] = {3048,"私を止められる者はいないのか！","呂布",},
        [211] = {3049,"私を止められる者はいないのか！","呂布",},
        [212] = {3050,"私を止められる者はいないのか！","呂布",},
        [213] = {3051,"私を止められる者はいないのか！","呂布",},
        [214] = {3052,"私を止められる者はいないのか！","呂布",},
        [215] = {3053,"私を止められる者はいないのか！","呂布",},
        [216] = {3054,"私を止められる者はいないのか！","呂布",},
        [217] = {3055,"私を止められる者はいないのか！","呂布",},
        [218] = {3056,"私を止められる者はいないのか！","呂布",},
        [219] = {3057,"私を止められる者はいないのか！","呂布",},
        [220] = {3058,"私を止められる者はいないのか！","呂布",},
        [221] = {3059,"私を止められる者はいないのか！","呂布",},
        [222] = {3060,"私を止められる者はいないのか！","呂布",},
        [223] = {3061,"私を止められる者はいないのか！","呂布",},
        [224] = {3062,"私を止められる者はいないのか！","呂布",},
        [225] = {3063,"私を止められる者はいないのか！","呂布",},
        [226] = {3064,"私を止められる者はいないのか！","呂布",},
        [227] = {3065,"私を止められる者はいないのか！","呂布",},
        [228] = {3066,"私を止められる者はいないのか！","呂布",},
        [229] = {3067,"私を止められる者はいないのか！","呂布",},
        [230] = {3068,"私を止められる者はいないのか！","呂布",},
        [231] = {3069,"私を止められる者はいないのか！","呂布",},
        [232] = {3070,"私を止められる者はいないのか！","呂布",},
        [233] = {3071,"私を止められる者はいないのか！","呂布",},
        [234] = {3072,"私を止められる者はいないのか！","呂布",},
        [235] = {3073,"私を止められる者はいないのか！","呂布",},
        [236] = {3074,"私を止められる者はいないのか！","呂布",},
        [237] = {3075,"私を止められる者はいないのか！","呂布",},
        [238] = {3076,"私を止められる者はいないのか！","呂布",},
        [239] = {3077,"私を止められる者はいないのか！","呂布",},
        [240] = {3078,"私を止められる者はいないのか！","呂布",},
        [241] = {3079,"私を止められる者はいないのか！","呂布",},
        [242] = {3080,"私を止められる者はいないのか！","呂布",},
        [243] = {3081,"私を止められる者はいないのか！","呂布",},
    },

    -- index
    __index_id = {
        [1001] = 1,
        [1002] = 2,
        [1003] = 3,
        [1004] = 4,
        [1005] = 5,
        [1006] = 6,
        [1007] = 7,
        [1008] = 8,
        [1009] = 9,
        [1010] = 10,
        [1011] = 11,
        [1012] = 12,
        [1013] = 13,
        [1014] = 14,
        [1015] = 15,
        [1016] = 16,
        [1017] = 17,
        [1018] = 18,
        [1019] = 19,
        [1020] = 20,
        [1021] = 21,
        [1022] = 22,
        [1023] = 23,
        [1024] = 24,
        [1025] = 25,
        [1026] = 26,
        [1027] = 27,
        [1028] = 28,
        [1029] = 29,
        [1030] = 30,
        [1031] = 31,
        [1032] = 32,
        [1033] = 33,
        [1034] = 34,
        [1035] = 35,
        [1036] = 36,
        [1037] = 37,
        [1038] = 38,
        [1039] = 39,
        [1040] = 40,
        [1041] = 41,
        [1042] = 42,
        [1043] = 43,
        [1044] = 44,
        [1045] = 45,
        [1046] = 46,
        [1047] = 47,
        [1048] = 48,
        [1049] = 49,
        [1050] = 50,
        [1051] = 51,
        [1052] = 52,
        [1053] = 53,
        [1054] = 54,
        [1055] = 55,
        [1056] = 56,
        [1057] = 57,
        [1058] = 58,
        [1059] = 59,
        [1060] = 60,
        [1061] = 61,
        [1062] = 62,
        [1063] = 63,
        [1064] = 64,
        [1065] = 65,
        [1066] = 66,
        [1067] = 67,
        [1068] = 68,
        [1069] = 69,
        [1070] = 70,
        [1071] = 71,
        [1072] = 72,
        [1073] = 73,
        [1074] = 74,
        [1075] = 75,
        [1076] = 76,
        [1077] = 77,
        [1078] = 78,
        [1079] = 79,
        [1080] = 80,
        [1081] = 81,
        [2001] = 82,
        [2002] = 83,
        [2003] = 84,
        [2004] = 85,
        [2005] = 86,
        [2006] = 87,
        [2007] = 88,
        [2008] = 89,
        [2009] = 90,
        [2010] = 91,
        [2011] = 92,
        [2012] = 93,
        [2013] = 94,
        [2014] = 95,
        [2015] = 96,
        [2016] = 97,
        [2017] = 98,
        [2018] = 99,
        [2019] = 100,
        [2020] = 101,
        [2021] = 102,
        [2022] = 103,
        [2023] = 104,
        [2024] = 105,
        [2025] = 106,
        [2026] = 107,
        [2027] = 108,
        [2028] = 109,
        [2029] = 110,
        [2030] = 111,
        [2031] = 112,
        [2032] = 113,
        [2033] = 114,
        [2034] = 115,
        [2035] = 116,
        [2036] = 117,
        [2037] = 118,
        [2038] = 119,
        [2039] = 120,
        [2040] = 121,
        [2041] = 122,
        [2042] = 123,
        [2043] = 124,
        [2044] = 125,
        [2045] = 126,
        [2046] = 127,
        [2047] = 128,
        [2048] = 129,
        [2049] = 130,
        [2050] = 131,
        [2051] = 132,
        [2052] = 133,
        [2053] = 134,
        [2054] = 135,
        [2055] = 136,
        [2056] = 137,
        [2057] = 138,
        [2058] = 139,
        [2059] = 140,
        [2060] = 141,
        [2061] = 142,
        [2062] = 143,
        [2063] = 144,
        [2064] = 145,
        [2065] = 146,
        [2066] = 147,
        [2067] = 148,
        [2068] = 149,
        [2069] = 150,
        [2070] = 151,
        [2071] = 152,
        [2072] = 153,
        [2073] = 154,
        [2074] = 155,
        [2075] = 156,
        [2076] = 157,
        [2077] = 158,
        [2078] = 159,
        [2079] = 160,
        [2080] = 161,
        [2081] = 162,
        [3001] = 163,
        [3002] = 164,
        [3003] = 165,
        [3004] = 166,
        [3005] = 167,
        [3006] = 168,
        [3007] = 169,
        [3008] = 170,
        [3009] = 171,
        [3010] = 172,
        [3011] = 173,
        [3012] = 174,
        [3013] = 175,
        [3014] = 176,
        [3015] = 177,
        [3016] = 178,
        [3017] = 179,
        [3018] = 180,
        [3019] = 181,
        [3020] = 182,
        [3021] = 183,
        [3022] = 184,
        [3023] = 185,
        [3024] = 186,
        [3025] = 187,
        [3026] = 188,
        [3027] = 189,
        [3028] = 190,
        [3029] = 191,
        [3030] = 192,
        [3031] = 193,
        [3032] = 194,
        [3033] = 195,
        [3034] = 196,
        [3035] = 197,
        [3036] = 198,
        [3037] = 199,
        [3038] = 200,
        [3039] = 201,
        [3040] = 202,
        [3041] = 203,
        [3042] = 204,
        [3043] = 205,
        [3044] = 206,
        [3045] = 207,
        [3046] = 208,
        [3047] = 209,
        [3048] = 210,
        [3049] = 211,
        [3050] = 212,
        [3051] = 213,
        [3052] = 214,
        [3053] = 215,
        [3054] = 216,
        [3055] = 217,
        [3056] = 218,
        [3057] = 219,
        [3058] = 220,
        [3059] = 221,
        [3060] = 222,
        [3061] = 223,
        [3062] = 224,
        [3063] = 225,
        [3064] = 226,
        [3065] = 227,
        [3066] = 228,
        [3067] = 229,
        [3068] = 230,
        [3069] = 231,
        [3070] = 232,
        [3071] = 233,
        [3072] = 234,
        [3073] = 235,
        [3074] = 236,
        [3075] = 237,
        [3076] = 238,
        [3077] = 239,
        [3078] = 240,
        [3079] = 241,
        [3080] = 242,
        [3081] = 243,
    }
}

return equip_boss