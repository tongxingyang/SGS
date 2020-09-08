--gemstone

local gemstone = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --id-int 
      name = 2,    --名称-string 
      bag_description = 3,    --背包描述-string 
      description = 4,    --装备描述-string 
    
    },
    -- data
    _data = {
        [1] = {101,"攻撃の緑晶","きらきらと輝く宝石。全体が緑色で、ひんやりとした手触り。","きらきらと輝く宝石。全体が緑色で、ひんやりとした手触り。",},
        [2] = {102,"防御の緑晶","きらきらと輝く宝石。全体が緑色で、ひんやりとした手触り。","きらきらと輝く宝石。全体が緑色で、ひんやりとした手触り。",},
        [3] = {103,"生命の緑晶","きらきらと輝く宝石。全体が緑色で、ひんやりとした手触り。","きらきらと輝く宝石。全体が緑色で、ひんやりとした手触り。",},
        [4] = {104,"緑晶覚醒の巻物","緑の宝石を育む原始の巻物。不思議な力を持っている。","緑宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [5] = {201,"攻撃の青晶","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。",},
        [6] = {202,"防御の青晶","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。",},
        [7] = {203,"生命の青晶","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。",},
        [8] = {204,"青晶覚醒の巻物","青い宝石を育む原始の巻物。不思議な力を持っている。","青い宝石を育む原始の巻物。不思議な力を持ち、その威力は絶大と伝わる。",},
        [9] = {301,"攻撃の海青石","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。",},
        [10] = {302,"防御の海青石","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。",},
        [11] = {303,"生命の海青石","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。","きらきらと輝く宝石。全体が青く、ひんやりとした手触り。",},
        [12] = {304,"海青覚醒の巻物","青い宝石を育む原始の巻物。不思議な力を持っている。","青い宝石を育む原始の巻物。不思議な力を持ち、その威力は絶大と伝わる。",},
        [13] = {401,"攻撃の紫晶","高級な紫宝石。ひんやりとした手触り。","高級な紫宝石。ひんやりとした手触り。",},
        [14] = {402,"防御の紫晶","高級な紫宝石。ひんやりとした手触り。","高級な紫宝石。ひんやりとした手触り。",},
        [15] = {403,"生命の紫晶","高級な紫宝石。ひんやりとした手触り。","高級な紫宝石。ひんやりとした手触り。",},
        [16] = {404,"紫晶覚醒の巻物","紫の宝石を育む原始の巻物。不思議な力を持っている。","紫宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [17] = {501,"攻撃の紫耀石","高級な紫宝石。ひんやりとした手触り。","高級な紫宝石。ひんやりとした手触り。",},
        [18] = {502,"防御の紫耀石","高級な紫宝石。ひんやりとした手触り。","高級な紫宝石。ひんやりとした手触り。",},
        [19] = {503,"生命の紫耀石","高級な紫宝石。ひんやりとした手触り。","高級な紫宝石。ひんやりとした手触り。",},
        [20] = {504,"紫耀覚醒の巻物","紫の宝石を育む原始の巻物。不思議な力を持っている。","紫宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [21] = {601,"攻撃の星石","高級な紫宝石。ひんやりとした手触り。","高級な紫宝石。ひんやりとした手触り。",},
        [22] = {602,"防御の星石","高級な紫宝石。ひんやりとした手触り。","高級な紫宝石。ひんやりとした手触り。",},
        [23] = {603,"生命の星石","高級な紫宝石。ひんやりとした手触り。","高級な紫宝石。ひんやりとした手触り。",},
        [24] = {604,"星石覚醒の巻物","紫の宝石を育む原始の巻物。不思議な力を持っている。","紫宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [25] = {701,"攻撃の黄晶","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [26] = {702,"防御の黄晶","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [27] = {703,"生命の黄晶","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [28] = {704,"黄晶覚醒の巻物","宝石(ｵﾚﾝｼﾞ)を生み出す原始の巻物。不思議な活力を秘めている。","宝石(ｵﾚﾝｼﾞ)を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [29] = {801,"攻撃の龍晶","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [30] = {802,"防御の龍晶","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [31] = {803,"生命の龍晶","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [32] = {804,"龍晶覚醒の巻物","宝石(ｵﾚﾝｼﾞ)を生み出す原始の巻物。不思議な活力を秘めている。","宝石(ｵﾚﾝｼﾞ)を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [33] = {901,"攻撃の陽光石","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [34] = {902,"防御の陽光石","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [35] = {903,"生命の陽光石","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [36] = {904,"陽光覚醒の巻物","宝石(ｵﾚﾝｼﾞ)を生み出す原始の巻物。不思議な活力を秘めている。","宝石(ｵﾚﾝｼﾞ)を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [37] = {1001,"攻撃の玲瓏石","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [38] = {1002,"防御の玲瓏石","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [39] = {1003,"生命の玲瓏石","橙の光を放っている最高級の宝石。ひんやりとした手触り。","橙の光を放っている最高級の宝石。ひんやりとした手触り。",},
        [40] = {1004,"玲瓏覚醒の巻物","宝石(ｵﾚﾝｼﾞ)を生み出す原始の巻物。不思議な活力を秘めている。","宝石(ｵﾚﾝｼﾞ)を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [41] = {1101,"攻撃の紅晶","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [42] = {1102,"防御の紅晶","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [43] = {1103,"生命の紅晶","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [44] = {1104,"紅晶覚醒の巻物","赤宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。","赤宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [45] = {1201,"攻撃の緋炎石","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [46] = {1202,"防御の緋炎石","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [47] = {1203,"生命の緋炎石","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [48] = {1204,"緋炎覚醒の巻物","赤宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。","赤宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [49] = {1301,"攻撃の紅月石","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [50] = {1302,"防御の紅月石","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [51] = {1303,"生命の紅月石","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [52] = {1304,"紅月覚醒の巻物","赤宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。","赤宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
        [53] = {1401,"攻撃の輝煌石","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [54] = {1402,"防御の輝煌石","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [55] = {1403,"生命の輝煌石","赤い光を放っている最高級の宝石。ひんやりとした手触り。","赤い光を放っている最高級の宝石。ひんやりとした手触り。",},
        [56] = {1404,"輝煌覚醒の巻物","赤宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。","赤宝石を育む原始の巻物。強大な威力と、不思議なエネルギーを擁しているという。",},
    },

    -- index
    __index_id = {
        [1001] = 37,
        [1002] = 38,
        [1003] = 39,
        [1004] = 40,
        [101] = 1,
        [102] = 2,
        [103] = 3,
        [104] = 4,
        [1101] = 41,
        [1102] = 42,
        [1103] = 43,
        [1104] = 44,
        [1201] = 45,
        [1202] = 46,
        [1203] = 47,
        [1204] = 48,
        [1301] = 49,
        [1302] = 50,
        [1303] = 51,
        [1304] = 52,
        [1401] = 53,
        [1402] = 54,
        [1403] = 55,
        [1404] = 56,
        [201] = 5,
        [202] = 6,
        [203] = 7,
        [204] = 8,
        [301] = 9,
        [302] = 10,
        [303] = 11,
        [304] = 12,
        [401] = 13,
        [402] = 14,
        [403] = 15,
        [404] = 16,
        [501] = 17,
        [502] = 18,
        [503] = 19,
        [504] = 20,
        [601] = 21,
        [602] = 22,
        [603] = 23,
        [604] = 24,
        [701] = 25,
        [702] = 26,
        [703] = 27,
        [704] = 28,
        [801] = 29,
        [802] = 30,
        [803] = 31,
        [804] = 32,
        [901] = 33,
        [902] = 34,
        [903] = 35,
        [904] = 36,
    }
}

return gemstone