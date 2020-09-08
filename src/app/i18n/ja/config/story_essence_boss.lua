--story_essence_boss

local story_essence_boss = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --id-int 
      talk = 2,    --副本对话-string 
      name = 3,    --怪物名-string 
    
    },
    -- data
    _data = {
        [1] = {1,"荀攸","荀攸",},
        [2] = {2,"楽進","楽進",},
        [3] = {3,"荀彧","荀彧",},
        [4] = {4,"馬岱","馬岱",},
        [5] = {5,"孟獲","孟獲",},
        [6] = {6,"劉備","劉備",},
        [7] = {7,"程普","程普",},
        [8] = {8,"韓当","韓当",},
        [9] = {9,"大喬","大喬",},
        [10] = {10,"張梁","張梁",},
        [11] = {11,"顔良","顔良",},
        [12] = {12,"華佗","華佗",},
        [13] = {13,"程昱","程昱",},
        [14] = {14,"徐晃","徐晃",},
        [15] = {15,"郭嘉","郭嘉",},
        [16] = {16,"馬謖","馬謖",},
        [17] = {17,"祝融","祝融",},
        [18] = {18,"黄月英","黄月英",},
        [19] = {19,"顧雍","顧雍",},
        [20] = {20,"周泰","周泰",},
        [21] = {21,"小喬","小喬",},
        [22] = {22,"張宝","張宝",},
        [23] = {23,"文醜","文醜",},
        [24] = {24,"貂蝉","貂蝉",},
        [25] = {25,"龐徳","龐徳",},
        [26] = {26,"曹沖","曹沖",},
        [27] = {27,"夏侯惇","夏侯惇",},
        [28] = {28,"廖化","廖化",},
        [29] = {29,"阿斗","阿斗",},
        [30] = {30,"関羽","関羽",},
        [31] = {31,"呉国太","呉国太",},
        [32] = {32,"黄蓋","黄蓋",},
        [33] = {33,"太史慈","太史慈",},
        [34] = {34,"沮授","沮授",},
        [35] = {35,"蔡文姫","蔡文姫",},
        [36] = {36,"董卓","董卓",},
        [37] = {37,"王異","王異",},
        [38] = {38,"曹植","曹植",},
        [39] = {39,"曹仁","曹仁",},
        [40] = {40,"劉琮","劉琮",},
        [41] = {41,"張星彩","張星彩",},
        [42] = {42,"張飛","張飛",},
        [43] = {43,"孫魯育","孫魯育",},
        [44] = {44,"凌統","凌統",},
        [45] = {45,"孫権","孫権",},
        [46] = {46,"劉表","劉表",},
        [47] = {47,"陳宮","陳宮",},
        [48] = {48,"華雄","華雄",},
        [49] = {49,"曹昂","曹昂",},
        [50] = {50,"夏侯淵","夏侯淵",},
        [51] = {51,"典韋","典韋",},
        [52] = {52,"劉封","劉封",},
        [53] = {53,"関銀屏","関銀屏",},
        [54] = {54,"馬超","馬超",},
        [55] = {55,"孫茹","孫茹",},
        [56] = {56,"張昭","張昭",},
        [57] = {57,"呂蒙","呂蒙",},
        [58] = {58,"李儒","李儒",},
        [59] = {59,"孔融","孔融",},
        [60] = {60,"賈詡","賈詡",},
        [61] = {61,"郭照","郭照",},
        [62] = {62,"張春華","張春華",},
        [63] = {63,"許褚","許褚",},
        [64] = {64,"張苞","張苞",},
        [65] = {65,"関平","関平",},
        [66] = {66,"黄忠","黄忠",},
        [67] = {67,"朱然","朱然",},
        [68] = {68,"歩練師","歩練師",},
        [69] = {69,"甘寧","甘寧",},
        [70] = {70,"何進","何進",},
        [71] = {71,"呂霊雎","呂霊雎",},
        [72] = {72,"公孫瓚","公孫瓚",},
        [73] = {73,"曹叡","曹叡",},
        [74] = {74,"于禁","于禁",},
        [75] = {75,"張遼","張遼",},
        [76] = {76,"司馬徽","司馬徽",},
        [77] = {77,"法正","法正",},
        [78] = {78,"姜維","姜維",},
        [79] = {79,"虞翻","虞翻",},
        [80] = {80,"諸葛瑾","諸葛瑾",},
        [81] = {81,"孫堅","孫堅",},
        [82] = {82,"潘鳳","潘鳳",},
        [83] = {83,"張譲","張譲",},
        [84] = {84,"張角","張角",},
        [85] = {85,"鍾会","鍾会",},
        [86] = {86,"曹沖","曹沖",},
        [87] = {87,"張郃","張郃",},
        [88] = {88,"夏侯涓","夏侯涓",},
        [89] = {89,"孟獲","孟獲",},
        [90] = {90,"魏延","魏延",},
        [91] = {91,"陸抗","陸抗",},
        [92] = {92,"韓当","韓当",},
        [93] = {93,"孫尚香","孫尚香",},
        [94] = {94,"王允","王允",},
        [95] = {95,"顔良","顔良",},
        [96] = {96,"于吉","于吉",},
        [97] = {97,"鄧艾","鄧艾",},
        [98] = {98,"夏侯淵","夏侯淵",},
        [99] = {99,"曹丕","曹丕",},
        [100] = {100,"鮑三娘","鮑三娘",},
        [101] = {101,"祝融","祝融",},
        [102] = {102,"龐統","龐統",},
        [103] = {103,"徐盛","徐盛",},
        [104] = {104,"周泰","周泰",},
        [105] = {105,"陸遜","陸遜",},
        [106] = {106,"袁譚","袁譚",},
        [107] = {107,"文醜","文醜",},
        [108] = {108,"袁紹","袁紹",},
        [109] = {109,"郭淮","郭淮",},
        [110] = {110,"于禁","于禁",},
        [111] = {111,"甄姫","甄姫",},
        [112] = {112,"沙摩柯","沙摩柯",},
        [113] = {113,"関平","関平",},
        [114] = {114,"徐庶","徐庶",},
        [115] = {115,"諸葛恪","諸葛恪",},
        [116] = {116,"黄蓋","黄蓋",},
        [117] = {117,"魯粛","魯粛",},
        [118] = {118,"李傕","李傕",},
        [119] = {119,"陳宮","陳宮",},
        [120] = {120,"袁術","袁術",},
    },

    -- index
    __index_id = {
        [1] = 1,
        [10] = 10,
        [100] = 100,
        [101] = 101,
        [102] = 102,
        [103] = 103,
        [104] = 104,
        [105] = 105,
        [106] = 106,
        [107] = 107,
        [108] = 108,
        [109] = 109,
        [11] = 11,
        [110] = 110,
        [111] = 111,
        [112] = 112,
        [113] = 113,
        [114] = 114,
        [115] = 115,
        [116] = 116,
        [117] = 117,
        [118] = 118,
        [119] = 119,
        [12] = 12,
        [120] = 120,
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
        [59] = 59,
        [6] = 6,
        [60] = 60,
        [61] = 61,
        [62] = 62,
        [63] = 63,
        [64] = 64,
        [65] = 65,
        [66] = 66,
        [67] = 67,
        [68] = 68,
        [69] = 69,
        [7] = 7,
        [70] = 70,
        [71] = 71,
        [72] = 72,
        [73] = 73,
        [74] = 74,
        [75] = 75,
        [76] = 76,
        [77] = 77,
        [78] = 78,
        [79] = 79,
        [8] = 8,
        [80] = 80,
        [81] = 81,
        [82] = 82,
        [83] = 83,
        [84] = 84,
        [85] = 85,
        [86] = 86,
        [87] = 87,
        [88] = 88,
        [89] = 89,
        [9] = 9,
        [90] = 90,
        [91] = 91,
        [92] = 92,
        [93] = 93,
        [94] = 94,
        [95] = 95,
        [96] = 96,
        [97] = 97,
        [98] = 98,
        [99] = 99,
    }
}

return story_essence_boss