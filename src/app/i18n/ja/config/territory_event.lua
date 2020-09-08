--territory_event

local territory_event = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --序号-int 
      description = 2,    --事件描述-string 
    
    },
    -- data
    _data = {
        [1] = {1,"[#hero#]は巡邏中に宦官に遭遇。そのうろたえぶりを見て、隠し持っていた#reward#を押収した。",},
        [2] = {2,"[#hero#]は、妓楼のやり手婆が街で女性を威して無理やり遊女にしようとしていたのを見て美人を救出し、彼女から#reward#を贈られました",},
        [3] = {3,"[#hero#]は老婦人が道を渡るのを助け、#reward#をもらいました",},
        [4] = {4,"入水自殺した女性を[#hero#]が救い、美女から#reward#を贈られました。",},
        [5] = {5,"[#hero#]は隊商に遭遇、税金を徴収し#reward#を獲得。",},
        [6] = {6,"[#hero#]は巡回中、地面に突き立ててある札を見つけた。ここに銀貨があると書いてある。掘ってみると#reward#が出てきた",},
        [7] = {7,"[#hero#]は捕らえたコソ泥から#reward#を獲得しました",},
        [8] = {8,"[#hero#]は賭場で石を賭け、運良く#reward#を儲けました",},
        [9] = {9,"[#hero#]は山洞を見かけ、好奇心から中に入って先人の墓地を見つけ、#reward#を獲得しました",},
        [10] = {10,"[#hero#]は悪人に襲われていた商隊を助け、#reward#を贈られました",},
        [11] = {11,"[#hero#]は城内の高官の豪邸新築を助け、#reward#を贈られた。",},
        [12] = {12,"[#hero#]は裕福そうな老夫人が悪人に絡まれているのを目撃。飛んで行って悪人を懲らしめると、#reward#を贈られた。",},
        [13] = {13,"[#hero#]は高僧に遭遇。高僧から武芸に向いていると#reward#を贈られた。",},
        [14] = {14,"[#hero#]は占い師に気に入られて、#reward#を贈られた。",},
        [15] = {15,"[#hero#]は凱旋した将軍に会い、意気投合した結果、#reward#を贈られた。",},
        [16] = {16,"[#hero#]は宝の山を見つけ、#reward#を掘り当てました",},
        [17] = {17,"[#hero#]は隊商に遭遇、税金を徴収し#reward#を獲得。",},
        [18] = {18,"[#hero#]は巡回中、地面に突き立ててある札を見つけた。ここに銀貨があると書いてある。掘ってみると#reward#が出てきた",},
        [19] = {19,"[#hero#]は捕らえたコソ泥から#reward#を獲得しました",},
        [20] = {20,"[#hero#]は賭場で石を賭け、運良く#reward#を儲けました",},
        [21] = {21,"[#hero#]は易者に財産を騙し取られそうになっていた人を助け、#reward#を贈られました",},
        [22] = {22,"[#hero#]は町のある山の上にある廟が霊験あらたかだと聞いてお参りに行き、#reward#を獲得しました",},
        [23] = {23,"[#hero#]は城内の高官の豪邸新築を助け、#reward#を贈られた。",},
        [24] = {24,"[#hero#]は裕福そうな老夫人が悪人に絡まれているのを目撃。飛んで行って悪人を懲らしめると、#reward#を贈られた。",},
        [25] = {25,"[#hero#]は修行中に閃きを得て、自身の真気で#reward#を生み出した。",},
        [26] = {26,"[#hero#]が酒楼で酒を飲んで人と語らっていると、その人が興奮して修行の秘訣を教えてくれ、#reward#を贈ってくれた",},
        [27] = {27,"[#hero#]は鍛冶屋を助けて工具を磨き、#reward#を贈られました",},
        [28] = {28,"鍛冶屋の娘が婿選びの腕比べを開催。[#hero#]は張り切って参加し、報酬#reward#を獲得しました",},
        [29] = {29,"[#hero#]は隊商に遭遇、税金を徴収し#reward#を獲得。",},
        [30] = {30,"[#hero#]は巡回中、地面に突き立ててある札を見つけた。ここに銀貨があると書いてある。掘ってみると#reward#が出てきた",},
        [31] = {31,"[#hero#]は捕らえたコソ泥から#reward#を獲得しました",},
        [32] = {32,"[#hero#]は賭場で石を賭け、運良く#reward#を儲けました",},
        [33] = {33,"[#hero#]は山洞を見かけ、好奇心から中に入って先人の墓地を見つけ、#reward#を獲得しました",},
        [34] = {34,"[#hero#]は悪人に襲われていた商隊を助け、#reward#を贈られました",},
        [35] = {35,"[#hero#]は城内の高官の豪邸新築を助け、#reward#を贈られた。",},
        [36] = {36,"[#hero#]は裕福そうな老夫人が悪人に絡まれているのを目撃。飛んで行って悪人を懲らしめると、#reward#を贈られた。",},
        [37] = {37,"鍛冶屋の娘が婿選びの腕比べを開催。[#hero#]は張り切って参加し、報酬#reward#を獲得しました",},
        [38] = {38,"[#hero#]は鍛冶屋を助けて工具を磨き、#reward#を贈られました",},
        [39] = {39,"[#hero#]は酔って落水した女性を助けましたが、彼女は鍛冶屋の娘で、#reward#を贈られました",},
        [40] = {40,"[#hero#]は山中で偶然見つけた鉱石を鍛錬し、#reward#を獲得されました",},
        [41] = {41,"[#hero#]は隊商に遭遇、税金を徴収し#reward#を獲得。",},
        [42] = {42,"[#hero#]は巡回中、地面に突き立ててある札を見つけた。ここに銀貨があると書いてある。掘ってみると#reward#が出てきた",},
        [43] = {43,"[#hero#]は捕らえたコソ泥から#reward#を獲得しました",},
        [44] = {44,"[#hero#]は賭場で石を賭け、運良く#reward#を儲けました",},
        [45] = {45,"[#hero#]は賭けをし、幸運にも勝ち、#reward#を獲得しました",},
        [46] = {46,"[#hero#]は鍛冶屋を助けて工具を磨き、#reward#を贈られました",},
        [47] = {47,"[#hero#]は城内の高官の豪邸新築を助け、#reward#を贈られた。",},
        [48] = {48,"[#hero#]は裕福そうな老夫人が悪人に絡まれているのを目撃。飛んで行って悪人を懲らしめると、#reward#を贈られた。",},
        [49] = {49,"[#hero#]は手合わせで勝った相手から認められ、#reward#を贈られました",},
        [50] = {50,"[#hero#]は私塾で真剣に文学を研究し、塾長から#reward#を贈られました",},
        [51] = {51,"[#hero#]はおばさんを助けて迷子の子犬を捜し出し、#reward#をもらいました",},
        [52] = {52,"[#hero#]は墓泥棒を見かけて捕らえ、#reward#を見つけました",},
        [53] = {53,"[#hero#]は老婦人が道を渡るのを助け、#reward#をもらいました",},
        [54] = {54,"入水自殺した女性を[#hero#]が救い、美女から#reward#を贈られました。",},
        [55] = {55,"[#hero#]は隊商に遭遇、税金を徴収し#reward#を獲得。",},
        [56] = {56,"[#hero#]は巡回中、地面に突き立ててある札を見つけた。ここに銀貨があると書いてある。掘ってみると#reward#が出てきた",},
        [57] = {57,"[#hero#]は墓泥棒を見かけて捕らえ、#reward#を見つけました",},
        [58] = {58,"[#hero#]は手合わせで勝った相手から認められ、#reward#を贈られました",},
        [59] = {59,"[#hero#]は城内の高官の豪邸新築を助け、#reward#を贈られた。",},
        [60] = {60,"[#hero#]は裕福そうな老夫人が悪人に絡まれているのを目撃。飛んで行って悪人を懲らしめると、#reward#を贈られた。",},
        [61] = {61,"[#hero#]は付近で神器が出土したと聞き、試しに探してみると、なんと#reward#を手に入れた。",},
        [62] = {62,"[#hero#]は捕らえたコソ泥から#reward#を獲得しました",},
        [63] = {63,"[#hero#]は競技場で勇敢に敵を倒し、報酬#reward#を獲得されました",},
        [64] = {64,"[#hero#]は美女が痴漢に遭っているのを見て、救助にかけつけると、なんと彼女は城主の娘だった。報酬として#reward#を獲得。",},
        [65] = {65,"[#hero#]は老婦人が道を渡るのを助け、#reward#をもらいました",},
        [66] = {66,"入水自殺した女性を[#hero#]が救い、美女から#reward#を贈られました。",},
        [67] = {67,"[#hero#]は隊商に遭遇、税金を徴収し#reward#を獲得。",},
        [68] = {68,"[#hero#]は巡回中、地面に突き立ててある札を見つけた。ここに銀貨があると書いてある。掘ってみると#reward#が出てきた",},
        [69] = {69,"鍛冶屋の娘が婿選びの腕比べを開催。[#hero#]は張り切って参加し、報酬#reward#を獲得しました",},
        [70] = {70,"[#hero#]は山洞を見かけ、好奇心から中に入って先人の墓地を見つけ、#reward#を獲得しました",},
        [71] = {71,"[#hero#]は城内の高官の豪邸新築を助け、#reward#を贈られた。",},
        [72] = {72,"[#hero#]は裕福そうな老夫人が悪人に絡まれているのを目撃。飛んで行って悪人を懲らしめると、#reward#を贈られた。",},
        [73] = {73,"4時間の駐屯後、[#hero#]は駐屯任務を終え、#reward#を獲得しました",},
        [74] = {74,"[#hero#]は8時間駐留して駐留任務を完了し、#reward#を獲得しました",},
        [75] = {75,"12時間の駐屯後、[#hero#]は任務を完了し#reward#を獲得しました。",},
    },

    -- index
    __index_id = {
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
        [8] = 8,
        [9] = 9,
    }
}

return territory_event