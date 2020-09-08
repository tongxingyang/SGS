--equip_stage

local equip_stage = {
    -- key
    __key_map = {
      id = 1,    --关卡id_key-int 
      name = 2,    --关卡名-简中-string 
      talk = 3,    --副本对话-简中-string 
    
    },
    -- data
    _data = {
        [1] = {1,"第1关 乐进","看我先登城头, 立下首功!",},
        [2] = {2,"第2关 曹仁","固若金汤, 坚如磐石!",},
        [3] = {3,"第3关 夏侯惇","以彼之道, 还施彼身!",},
        [4] = {4,"第4关 祝融","尝尝我飞刀的厉害!",},
        [5] = {5,"第5关 张飞","燕人张飞在此!!! ",},
        [6] = {6,"第6关 关羽","观尔乃插标卖首.",},
        [7] = {7,"第7关 凌统","伤敌于千里之外!",},
        [8] = {8,"第8关 孙权","容我三思!",},
        [9] = {9,"第9关 太史慈","请助我一臂之力!",},
        [10] = {10,"第10关 颜良","吾乃河北上将颜良是也!",},
        [11] = {11,"第11关 公孙瓒","众将听令, 排好阵势, 御敌!",},
        [12] = {12,"第12关 贾诩","神仙难救, 神仙难救啊!",},
        [13] = {13,"第13关 典韦","看我三步之内取你小命!",},
        [14] = {14,"第14关 许褚","谁来和我大战300回合!",},
        [15] = {15,"第15关 曹操","来人, 护驾!",},
        [16] = {16,"第16关 黄忠","百步穿杨!",},
        [17] = {17,"第17关 马超","全军突击!",},
        [18] = {18,"第18关 赵云","吾乃常山赵子龙也!",},
        [19] = {19,"第19关 甘宁","接招吧.",},
        [20] = {20,"第20关 吕蒙","留得青山在, 不怕没柴烧!",},
        [21] = {21,"第21关 孙策","吾乃江东小霸王孙伯符.",},
        [22] = {22,"第22关 华雄","好大一股酒气啊!",},
        [23] = {23,"第23关 董卓","美人儿~来香一个!",},
        [24] = {24,"第24关 吕布","神挡杀神, 佛挡杀佛!",},
        [25] = {25,"第25关 张郃","兵无常势, 水无常形.",},
        [26] = {26,"第26关 张辽","哼~没想到吧!",},
        [27] = {27,"第27关 司马懿","出来混, 早晚要还的!",},
        [28] = {28,"第28关 魏延","我会怕你吗?",},
        [29] = {29,"第29关 姜维","汝等小儿, 可敢杀我?",},
        [30] = {30,"第30关 诸葛亮","观今夜之天象, 知天下之大事.",},
        [31] = {31,"第31关 孙尚香","他好我也好.",},
        [32] = {32,"第32关 孙坚","以吾魂魄, 保佑吾儿之基业.",},
        [33] = {33,"第33关 周瑜","汝等看好了!",},
        [34] = {34,"第34关 袁术","玉玺在手, 天下我有!",},
        [35] = {35,"第35关 袁绍","弓箭手, 准备放箭!",},
        [36] = {36,"第36关 左慈","哼, 肉眼凡胎, 岂能窥视仙人变幻?",},
        [37] = {37,"第37关 甄姬","凌波微步, 罗袜生尘.",},
        [38] = {38,"第38关 曹丕","死罪可免, 活罪难赦!",},
        [39] = {39,"第39关 郭嘉","咳, 咳~~~~",},
        [40] = {40,"第40关 徐庶","嘘~言多必失啊.",},
        [41] = {41,"第41关 庞统","伤一敌可连其百!",},
        [42] = {42,"第42关 刘备","蜀将何在!",},
        [43] = {43,"第43关 鲁肃","拿去拿去, 莫跟哥哥客气!",},
        [44] = {44,"第44关 陆逊","旧的不去新的不来.",},
        [45] = {45,"第45关 大乔","请休息吧.",},
        [46] = {46,"第46关 于吉","你信吗?",},
        [47] = {47,"第47关 张角","以我之真气, 合天地之造化!",},
        [48] = {48,"第48关 貂蝉","夫君, 你要替妾身做主啊!",},
        [49] = {49,"第49关 典韦","看我三步之内取你小命!",},
        [50] = {50,"第50关 张辽","哼~没想到吧!",},
        [51] = {51,"第51关 曹操","来人, 护驾!",},
        [52] = {52,"第52关 马超","全军突击!",},
        [53] = {53,"第53关 姜维","汝等小儿, 可敢杀我?",},
        [54] = {54,"第54关 赵云","吾乃常山赵子龙也!",},
        [55] = {55,"第55关 吕蒙","留得青山在, 不怕没柴烧!",},
        [56] = {56,"第56关 孙坚","以吾魂魄, 保佑吾儿之基业.",},
        [57] = {57,"第57关 孙策","吾乃江东小霸王孙伯符.",},
        [58] = {58,"第58关 董卓","美人儿~来香一个!",},
        [59] = {59,"第59关 袁绍","弓箭手, 准备放箭!",},
        [60] = {60,"第60关 吕布","神挡杀神, 佛挡杀佛!",},
        [61] = {61,"第61关 夏侯惇","以彼之道, 还施彼身!",},
        [62] = {62,"第62关 张郃","兵无常势, 水无常形.",},
        [63] = {63,"第63关 司马懿","出来混, 早晚要还的!",},
        [64] = {64,"第64关 关羽","观尔乃插标卖首.",},
        [65] = {65,"第65关 魏延","我会怕你吗?",},
        [66] = {66,"第66关 诸葛亮","观今夜之天象, 知天下之大事.",},
        [67] = {67,"第67关 太史慈","请助我一臂之力!",},
        [68] = {68,"第68关 孙尚香","他好我也好.",},
        [69] = {69,"第69关 周瑜","汝等看好了!",},
        [70] = {70,"第70关 贾诩","神仙难救, 神仙难救啊!",},
        [71] = {71,"第71关 袁术","玉玺在手, 天下我有!",},
        [72] = {72,"第72关 左慈","哼, 肉眼凡胎, 岂能窥视仙人变幻?",},
        [73] = {73,"第73关 曹仁","固若金汤, 坚如磐石!",},
        [74] = {74,"第74关 张辽","哼~没想到吧!",},
        [75] = {75,"第75关 曹操","来人, 护驾!",},
        [76] = {76,"第76关 张飞","燕人张飞在此!!! ",},
        [77] = {77,"第77关 黄忠","百步穿杨!",},
        [78] = {78,"第78关 赵云","吾乃常山赵子龙也!",},
        [79] = {79,"第79关 孙权","容我三思!",},
        [80] = {80,"第80关 孙坚","以吾魂魄, 保佑吾儿之基业.",},
        [81] = {81,"第81关 孙策","吾乃江东小霸王孙伯符.",},
        [82] = {82,"第82关 公孙瓒","众将听令, 排好阵势, 御敌!",},
        [83] = {83,"第83关 袁绍","弓箭手, 准备放箭!",},
        [84] = {84,"第84关 吕布","神挡杀神, 佛挡杀佛!",},
        [85] = {85,"第85关 许褚","谁来和我大战300回合!",},
        [86] = {86,"第86关 曹丕","死罪可免, 活罪难赦!",},
        [87] = {87,"第87关 郭嘉","咳, 咳~~~~",},
        [88] = {88,"第88关 马超","全军突击!",},
        [89] = {89,"第89关 庞统","伤一敌可连其百!",},
        [90] = {90,"第90关 刘备","蜀将何在!",},
        [91] = {91,"第91关 吕蒙","留得青山在, 不怕没柴烧!",},
        [92] = {92,"第92关 陆逊","旧的不去新的不来.",},
        [93] = {93,"第93关 大乔","请休息吧.",},
        [94] = {94,"第94关 董卓","美人儿~来香一个!",},
        [95] = {95,"第95关 张角","以我之真气, 合天地之造化!",},
        [96] = {96,"第96关 貂蝉","夫君, 你要替妾身做主啊!",},
        [97] = {97,"第97关 甄姬","凌波微步, 罗袜生尘.",},
        [98] = {98,"第98关 张郃","兵无常势, 水无常形.",},
        [99] = {99,"第99关 典韦","看我三步之内取你小命!",},
        [100] = {100,"第100关 黄忠","百步穿杨!",},
        [101] = {101,"第101关 坦克阵","有我们在, 别想通过这里!",},
        [102] = {102,"第102关 追击阵","你, 听说过追击吗?",},
        [103] = {103,"第103关 眩晕阵","看你能不能醒过来.",},
        [104] = {104,"第104关 反伤阵","挨最痛的揍, 刚最强的烈!",},
        [105] = {105,"第105关 吸血阵","以战养战, 方能持久.",},
        [106] = {106,"第106关 永动阵","技能, 我们是无限的.",},
        [107] = {107,"第107关 沉默阵","沉默, 是无声的抗议.",},
        [108] = {108,"第108关 暴力阵","第一回合, 我们是最强的.",},
        [109] = {109,"第109关 减怒阵","你能存下怒气算你厉害.",},
        [110] = {110,"第110关 麻痹阵","普攻?不存在的.",},
        [111] = {111,"第111关 毒奶阵","打不死你, 我耗死你.",},
        [112] = {112,"第112关 六奶阵","你输出够吗?",},
        [113] = {113,"第113关 后排阵","你后排够硬吗?",},
        [114] = {114,"第114关 美女阵","英雄难过美人关.",},
        [115] = {115,"第115关 弓手阵","我们都是神射手.",},
        [116] = {116,"第116关 谋士阵","动动嘴皮子, 谋天下.",},
        [117] = {117,"第117关 全体阵","单体攻击, 不存在的.",},
        [118] = {118,"第118关 五虎阵","我们是, 五虎上将!",},
        [119] = {119,"第119关 猛将阵","五虎上将什么的, 都是吹出来的.",},
        [120] = {120,"第120关 都督阵","要说厉害, 还是我们四大都督厉害.",},
        [121] = {121,"第121关 秒杀阵","你等着, 等我有十点怒气的时候!",},
        [122] = {122,"第122关 光环阵","堆光环, 我们是认真的.",},
        [123] = {123,"第123关 纵火阵","放火不是诸葛亮的看家本领么?",},
        [124] = {124,"第124关 碰瓷阵","打着打着你就死了.",},
        [125] = {125,"第125关 风火阵","魏武的霸业, 就由朕来继承!",},
        [126] = {126,"第126关 普攻阵","吾虽老矣, 但永不服老!",},
        [127] = {127,"第127关 爆炎阵","只要有我在, 尔等就休想越国境一步!",},
        [128] = {128,"第128关 无敌阵","统率三军, 怎能不识变数!",},
        [129] = {129,"第129关 联姻阵","乱世清君侧, 挥师复江山.",},
        [130] = {130,"第130关 免伤阵","敌人阵型已乱, 随我杀~",},
        [131] = {131,"第131关 华容道","关云长, 孤当年待你不薄!",},
        [132] = {132,"第132关 仙风道骨","将军究竟是败于我身后何人之手呢, 哈哈哈!",},
        [133] = {133,"第133关 严防据守","想突破我的阵地?再回去练个一百年吧!",},
        [134] = {134,"第134关 妙不可言","唉~一切尽在不言中.",},
        [135] = {135,"第135关 谦谦君子","旧的不去新的不来.",},
        [136] = {136,"第136关 魑魅魍魉","杀或是被杀自己选择吧, 哼哈哈哈.",},
        [137] = {137,"第137关 荀令留香","借你之手与他一搏吧!",},
        [138] = {138,"第138关 巾帼须眉","孔明先生, 这次, 你还能拿得出超过我的计谋吗?",},
        [139] = {139,"第139关 江洋大盗","二十年后, 又是一条好汉!",},
        [140] = {140,"第140关 四世三公"," 乱世豪杰, 当有开天辟地的气概.",},
        [141] = {141,"第141关 虎牢关","没见过这么欺负人的, 三个打一个!",},
        [142] = {142,"第142关 长坂坡","贼将休走, 可敢与我一战?",},
        [143] = {143,"第143关 小霸王","父亲在上, 魂佑江东；公瑾在旁, 智定天下.",},
        [144] = {144,"第144关 医者仁心","别紧张, 有老夫呢～",},
        [145] = {145,"第145关 潼关之战","谁来和我大战300回合!",},
        [146] = {146,"第146关 夜观星象","这仁德之世, 我会拼死守护!",},
        [147] = {147,"第147关 群雄逐鹿","夫君, 身体要紧~",},
        [148] = {148,"第148关 河北白马","匹夫, 让这白马义从, 成为你挥之不去的噩梦!",},
        [149] = {149,"第149关 择君而侍","行军打仗, 须得随机应变!",},
        [150] = {150,"第150关 三国英雄","滚滚长江东逝水, 浪花淘尽英雄.",},
    }
}

return equip_stage