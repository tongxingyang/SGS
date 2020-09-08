--horse_star

local horse_star = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --编号-int 
      name = 2,    --装备名称-string 
      skill = 3,    --技能描述-string 
    
    },
    -- data
    _data = {
        [1] = {1,"青騅","[青騅] 騎乗武将の攻撃ボーナス+1%",},
        [2] = {1,"青騅-追風","[青騅-追風] 騎乗武将の攻撃ボーナス+2%",},
        [3] = {1,"青騅-逐日","[青騅-逐日] 騎乗武将の攻撃ボーナス+3%",},
        [4] = {2,"緑耳","[緑耳] 騎乗中は防御ボーナス+1%",},
        [5] = {2,"緑耳-追風","[緑耳-追風] 騎乗中は防御ボーナス+2%",},
        [6] = {2,"緑耳-逐日","[緑耳-逐日] 騎乗武将の防御ボーナス+3%",},
        [7] = {3,"渠黄","[渠黄] 騎乗武将のHPボーナス+1%",},
        [8] = {3,"渠黄-追風","[渠黄-追風] 騎乗武将のHPボーナス+2%",},
        [9] = {3,"渠黄-逐日","[渠黄-逐日] 騎乗武将のHPボーナス+3%",},
        [10] = {4,"棗騮","[棗騮] 騎乗武将の会心ダメージボーナス+1%",},
        [11] = {4,"棗騮-追風","[棗騮-追風] 騎乗武将の会心ダメージボーナス+2%",},
        [12] = {4,"棗騮-逐日","[棗騮-逐日] 騎乗武将の会心ダメージボーナス+3%",},
        [13] = {5,"雪里白","[雪里白] 騎乗武将のダメージボーナス+3%",},
        [14] = {5,"雪里白-追風","[雪里白-追風] 騎乗武将のダメージボーナス+6%",},
        [15] = {5,"雪里白-逐日","[雪里白-逐日] 騎乗中は武将のダメージボーナス+9%",},
        [16] = {6,"颯露紫","[颯露紫] 騎乗武将の被ダメージ軽減+3%",},
        [17] = {6,"颯露紫-追風","[颯露紫-追風] 騎乗武将が受けるダメージ軽減+6%",},
        [18] = {6,"颯露紫-逐日","[颯露紫-逐日] 騎乗武将の被ダメージ軽減+9%",},
        [19] = {7,"紅玉輦","[紅玉輦] 騎乗中はHPボーナス+3%",},
        [20] = {7,"紅玉輦-追風","[紅玉輦-追風] 騎乗武将のHPボーナス+6%",},
        [21] = {7,"逐日-紅玉輦","[逐日-紅玉輦] 騎乗武将のHPボーナス+9%",},
        [22] = {8,"碧驄駒","[碧驄駒] 騎乗武将の会心率ボーナス+3%",},
        [23] = {8,"碧驄駒-追風","[碧驄駒-追風] 騎乗中は会心率ボーナス+6%",},
        [24] = {8,"碧驄駒-逐日","[碧驄駒-逐日] 騎乗武将の会心率+9%",},
        [25] = {9,"飛霜千里","[飛霜千里] 敵に与える直接ダメージの20%を回復に転換し、HP最少の味方ターゲットを回復する。",},
        [26] = {9,"飛霜千里-追風","[飛霜千里-追風] 敵に与える直接ダメージの30%を回復に転換し、HP最少の味方ターゲットのHPを最大HPの10%分回復する。",},
        [27] = {9,"飛霜千里-逐日","[飛霜千里-逐日] 敵に与える直接ダメージの30%を回復に転換し、HP最少の味方ターゲットのHPを最大HPの30%分回復する。",},
        [28] = {10,"烏雲踏雪","[烏雲踏雪] 敵に与えるダメージ+16%。",},
        [29] = {10,"烏雲踏雪-追風","[烏雲踏雪-追風] 敵に与えるダメージ+25%、直接ダメージでターゲットを倒すと50%の確率で自身の怒気を1pt回復。",},
        [30] = {10,"烏雲踏雪-逐日","[烏雲踏雪-逐日] 敵に与えるダメージ+25%。直接ダメージでターゲットを倒すと自身の怒気を1pt回復。かつ次の怒気回復時に自身の怒気を1pt回復",},
        [31] = {11,"赤炎龍","[赤炎龍] 回復効果+10%。回復不能状態のターゲットを治療し、1ターン持続するダメージ吸収シールドを付与して、回復量の40%分のダメージを吸収する",},
        [32] = {11,"赤炎龍-追風","[赤炎龍-追風] 回復効果+18%。また回復を封じられている目標にはシールド(回復量70%分のダメージを吸収)を与える、1ターン持続。",},
        [33] = {11,"赤炎龍-逐日","[赤炎龍-逐日] 回復効果+25%、回復不能状態のターゲットを治療し、1ターン持続するダメージ吸収シールドを付与して、回復量100%のダメージを吸収する",},
        [34] = {12,"夜照玉獅","[夜照玉獅] 戦闘中、毎ターン最大2ptの怒気引き下げ効果を受ける",},
        [35] = {12,"夜照玉獅-追風","[夜照玉獅-追風] 戦闘前は最大で1pt、戦闘中は毎ターン最大で2pt怒気を下げる効果を受ける",},
        [36] = {12,"夜照玉獅-逐日","[夜照玉獅-逐日] 戦闘前: 受ける怒気削減効果は1pt以下。戦闘中: 受ける怒気削減効果は1ターンにつき1P以下。",},
        [37] = {15,"奔雷青驄","[迅雷青驄] HPの最大値+15%。戦闘中に致命的なダメージを受けた時、初回は死なず、最大HPの20%のHPを回復する",},
        [38] = {15,"迅雷青驄-追風","[迅雷青驄-追風] 最大HP+30%。戦闘中、致命的なダメージを受けても最初の1回は討死せず、HPを最大HPの40%分、怒気を2pt回復する。",},
        [39] = {15,"奔雷青驄-逐日","[迅雷青驄-追風] 最大HP+45%。戦闘中に初めて致命的なダメージを受けた際、戦闘不能せずにHPを最大HPの60%分回復し、自身の怒気を4pt回復する",},
        [40] = {13,"爪黄飛電","[爪黄飛電] 乞うご期待",},
        [41] = {13,"爪黄飛電-望月","[爪黄飛電-望月] どうぞご期待ください。",},
        [42] = {13,"爪黄飛電-踏天","[爪黄飛電-踏天] 乞うご期待",},
        [43] = {14,"霹靂的盧","[霹雳的盧] 乞うご期待",},
        [44] = {14,"霹靂的盧-望月","[霹靂的盧-望月] 乞うご期待",},
        [45] = {14,"霹靂的盧-踏天","[霹靂的盧-踏天] 乞うご期待",},
        [46] = {16,"鉄血紅鬃","[鉄血紅鬃] 最大HP+15%。奥義発動時にターゲットがやけど状態だった場合、最大HPの4%分の追加ダメージを与える。",},
        [47] = {16,"鉄血紅鬃-追風","[鉄血紅鬃-追風] 最大HP+30%。奥義発動時に目標がやけど状態の場合は最大HP6%のダメージを追加する。",},
        [48] = {16,"鉄血紅鬃-逐日","[鉄血紅鬃-逐日] 最大HP+45%。奥義発動時にターゲットがやけど状態だった場合、最大HPの8%分の追加ダメージを与える。",},
        [49] = {17,"闇夜の紫騂","[闇夜の紫騂] 各ターン開始前、同陣営で生存中の他の武将に、騎乗武将の最大HPの8%分の直接ダメージを吸収するシールドを付与する。持続1ターン",},
        [50] = {17,"闇夜の紫騂-追風","[闇夜の紫騂-追風] ターン開始前に、生存している同陣営の各武将がシールド(騎乗武将自身の最大HP16%分の直接ダメージを吸収)を与える。1ターン持続。",},
        [51] = {17,"闇夜の紫騂-逐日","[闇夜の紫騂-逐日] 各ターン開始前、同陣営で生存中の他の武将に、騎乗武将の最大HPの24%分の直接ダメージを吸収するシールドを付与する。持続1ターン",},
    },

    -- index
    __index_id_star = {
        ["10_1"] = 28,
        ["10_2"] = 29,
        ["10_3"] = 30,
        ["11_1"] = 31,
        ["11_2"] = 32,
        ["11_3"] = 33,
        ["12_1"] = 34,
        ["12_2"] = 35,
        ["12_3"] = 36,
        ["13_1"] = 40,
        ["13_2"] = 41,
        ["13_3"] = 42,
        ["14_1"] = 43,
        ["14_2"] = 44,
        ["14_3"] = 45,
        ["15_1"] = 37,
        ["15_2"] = 38,
        ["15_3"] = 39,
        ["16_1"] = 46,
        ["16_2"] = 47,
        ["16_3"] = 48,
        ["17_1"] = 49,
        ["17_2"] = 50,
        ["17_3"] = 51,
        ["1_1"] = 1,
        ["1_2"] = 2,
        ["1_3"] = 3,
        ["2_1"] = 4,
        ["2_2"] = 5,
        ["2_3"] = 6,
        ["3_1"] = 7,
        ["3_2"] = 8,
        ["3_3"] = 9,
        ["4_1"] = 10,
        ["4_2"] = 11,
        ["4_3"] = 12,
        ["5_1"] = 13,
        ["5_2"] = 14,
        ["5_3"] = 15,
        ["6_1"] = 16,
        ["6_2"] = 17,
        ["6_3"] = 18,
        ["7_1"] = 19,
        ["7_2"] = 20,
        ["7_3"] = 21,
        ["8_1"] = 22,
        ["8_2"] = 23,
        ["8_3"] = 24,
        ["9_1"] = 25,
        ["9_2"] = 26,
        ["9_3"] = 27,
    }
}

return horse_star