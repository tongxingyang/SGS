--net_msg_error

local net_msg_error = {
    -- key
    __key_map = {
      error_id = 1,    --id_key-int 
      error_msg = 2,    --错误信息-string 
    
    },
    -- data
    _data = {
        [1] = {0,"未知错误, 请联系客服",},
        [2] = {1,"正常",},
        [3] = {2,"服务器维护中, 请关注公告",},
        [4] = {3,"未找到对应的玩家信息",},
        [5] = {4,"您的账号在其他位置登录了, 请关注您的账号安全",},
        [6] = {5,"已经有人叫这个名字了, 请输入其他名字",},
        [7] = {6,"你登录的服务器已经被挤爆了, 请稍后再试",},
        [8] = {7,"你的账号已经被封禁, 若有疑问, 请联系客服",},
        [9] = {8,"服务器尚未开服, 请关注开服时间",},
        [10] = {9,"此服务器竞争非常激烈, 已关闭注册了.",},
        [11] = {10,"登录超时, 请检查您的网络或稍后尝试",},
        [12] = {11,"检测到新的版本, 请更新",},
        [13] = {12,"你的账号尚未激活",},
        [14] = {13,"此激活码已经被使用了",},
        [15] = {14,"此激活码无效",},
        [16] = {15,"充值尚未开放",},
        [17] = {16,"非法字符",},
        [18] = {17,"异常",},
        [19] = {18,"该玩家正在登陆",},
        [20] = {19,"该功能暂未开放",},
        [21] = {20,"战报不存在",},
        [22] = {21,"同一IP创建角色过多",},
        [23] = {22,"次数已经用完",},
        [24] = {23,"战报已经过期",},
        [25] = {24,"玩家已退出军团",},
        [26] = {25,"您当前的IP已经被限制登录此服务器",},
        [27] = {26,"您当前的设备已经被限制登录此服务器",},
        [28] = {1004,"配置异常",},
        [29] = {1005,"道具不存在",},
        [30] = {1006,"碎片不存在",},
        [31] = {1007,"战斗出现错误, 请联系客服",},
        [32] = {1008,"武将不存在",},
        [33] = {1009,"你选择了一个错误的目标, 请联系客服",},
        [34] = {1010,"大于主角等级",},
        [35] = {1011,"材料品质不匹配",},
        [36] = {1012,"武将在阵上",},
        [37] = {1013,"武将培养过, 不可被吞噬",},
        [38] = {1014,"装备不存在",},
        [39] = {1015,"物品不足",},
        [40] = {1016,"请收入正确的手机号码",},
        [41] = {1017,"等级已达上限",},
        [42] = {1018,"同名卡数量不足",},
        [43] = {1019,"缘分数据错误",},
        [44] = {1020,"缘分不能激活",},
        [45] = {1021,"上阵武将不能动",},
        [46] = {1022,"宝物以强化至最大等级",},
        [47] = {1023,"宝物以精炼至最大等级",},
        [48] = {1024,"宝物养成过",},
        [49] = {1025,"聊天内容超过长度",},
        [50] = {1026,"聊天过于频繁",},
        [51] = {1027,"技能配置找不到",},
        [52] = {1028,"禁言",},
        [53] = {1029,"宝石不存在",},
        [54] = {1030,"先加入军团",},
        [55] = {1031,"暴动已过期",},
        [56] = {1032,"暴动中",},
        [57] = {1033,"武将巡逻中",},
        [58] = {1034,"物品已售馨",},
        [59] = {1035,"游历事件已经完成",},
        [60] = {1036,"聊天次数限制",},
        [61] = {1037,"拍卖时间未到",},
        [62] = {1038,"拍卖时间已过",},
        [63] = {1039,"每天最多只能私聊5个陌生人, 等级30或vip1可无限畅聊",},
        [64] = {1040,"今天已签到",},
        [65] = {1041,"每日boss不存在",},
        [66] = {1042,"游历前置关卡未通关",},
        [67] = {1043,"副本未解锁",},
        [68] = {1044,"置换武将需要时同一阵营的",},
        [69] = {1045,"该领地暴动已被成功平定",},
        [70] = {1050,"无法装备相同锦囊",},
        [71] = {1061,"今天的使用次数已经用完.",},
        [72] = {2001,"主角等级不足",},
        [73] = {2002,"VIP等级不足",},
        [74] = {2003,"达到18级才可以同玩家进行私聊",},
        [75] = {2010,"阵营竞技暂时关闭, 详情请联系客服",},
        [76] = {3001,"卡牌背包满",},
        [77] = {3002,"装备背包满",},
        [78] = {3003,"宝物背包满",},
        [79] = {3004,"神兵背包满",},
        [80] = {3005,"战马背包满",},
        [81] = {4001,"章节宝箱奖励已经领取",},
        [82] = {4002,"章节宝箱星星数不够",},
        [83] = {4003,"不存在的星数",},
        [84] = {7003,"没有挑战次数",},
        [85] = {7004,"星数不够",},
        [86] = {7005,"时间不对",},
        [87] = {8000,"时间没到",},
        [88] = {8001,"没有免费次数",},
        [89] = {8002,"没有招募令",},
        [90] = {8003,"招募奖励错误",},
        [91] = {8004,"元宝不够",},
        [92] = {8005,"积分获取英雄错误",},
        [93] = {8006,"该宝箱已经领取",},
        [94] = {8007,"积分获取英雄积分不够",},
        [95] = {8008,"已经最大经验了",},
        [96] = {8009,"碎片不足",},
        [97] = {8010,"宝石不足",},
        [98] = {8014,"未穿戴的装备无法镶嵌玉石",},
        [99] = {8015,"每件装备最多只能镶嵌两颗相同玉石",},
        [100] = {8020,"商店购买次数上限",},
        [101] = {8021,"商店物品不存在",},
        [102] = {8022,"商店物类型错误",},
        [103] = {8023,"商店物刷新类型错误",},
        [104] = {8024,"商店刷新免费次数不够",},
        [105] = {8025,"商店刷新不能使用刷新令",},
        [106] = {8026,"商店刷新次数不足",},
        [107] = {8050,"爬塔到顶了",},
        [108] = {8051,"不能扫荡",},
        [109] = {8052,"上层宝箱没领",},
        [110] = {8053,"没有宝箱可以领取",},
        [111] = {8054,"宝箱领取过了",},
        [112] = {8055,"层数id错误",},
        [113] = {8056,"奇遇不存在",},
        [114] = {8057,"奇遇打过了",},
        [115] = {8058,"过关斩将的精英挑战次数不够",},
        [116] = {8060,"官衔等级最大",},
        [117] = {8061,"所需资源不够",},
        [118] = {8063,"战力不够",},
        [119] = {8065,"重复订单",},
        [120] = {8070,"每日任务条件不足",},
        [121] = {8071,"每日任务重复领取",},
        [122] = {8072,"商店购买限制",},
        [123] = {8075,"入侵南蛮已被击杀",},
        [124] = {8076,"没有共享",},
        [125] = {8077,"南蛮令不足",},
        [126] = {8078,"奖励领取过了",},
        [127] = {8079,"奖励领取条件不够",},
        [128] = {8080,"入侵南蛮已被击杀",},
        [129] = {8081,"不是自己军团的",},
        [130] = {8082,"需要加入军团才能进行分享",},
        [131] = {8085,"目标正在被挑战, 请稍后再来",},
        [132] = {8086,"目标排名大于自己",},
        [133] = {8087,"挑战次数不够",},
        [134] = {8088,"排名不够",},
        [135] = {8089,"奖励领取过了",},
        [136] = {8090,"成就条件不够",},
        [137] = {8095,"已经加入军团",},
        [138] = {8096,"军团名称最多七个字",},
        [139] = {8097,"军团名字已经被使用",},
        [140] = {8098,"加入军团方才可参加活动",},
        [141] = {8099,"军团成员不存在",},
        [142] = {8100,"退出时间没有超过24小时",},
        [143] = {8101,"申请条目上限",},
        [144] = {8102,"军团申请上限",},
        [145] = {8103,"没有申请",},
        [146] = {8104,"军团职位不够",},
        [147] = {8105,"军团人数已满",},
        [148] = {8106,"军团不能解散",},
        [149] = {8107,"弹劾正在进行中",},
        [150] = {8108,"军团职位已满",},
        [151] = {8109,"军团申请援助位置不对",},
        [152] = {8110,"军团申请援助id不对",},
        [153] = {8111,"军团援助正在被进行",},
        [154] = {8112,"军团援助已经领完啦",},
        [155] = {8113,"主公, 此求援已经完成了哦, 请选择其他成员进行援助.",},
        [156] = {8114,"军团援助上限",},
        [157] = {8115,"军团援助完成次数不够",},
        [158] = {8116,"军团等级不够",},
        [159] = {8117,"军团试炼不存在",},
        [160] = {8118,"军团试炼次数不够",},
        [161] = {8119,"军团试炼挑战cd",},
        [162] = {8120,"军团试炼积分不够",},
        [163] = {8121,"军团试炼时间没到",},
        [164] = {8122,"军团试炼积分奖励领取过了",},
        [165] = {8123,"军团援助武将冷却中",},
        [166] = {8124,"军团援助奖励重复领取",},
        [167] = {8125,"军团奖励已经领取",},
        [168] = {8126,"军团答题此题不能作答",},
        [169] = {8127,"军团答题没有该题目",},
        [170] = {8128,"军团答题重复设置时间",},
        [171] = {8129,"军团答题设置时间次数上限",},
        [172] = {8130,"军团答题已经答完不能改时间",},
        [173] = {8131,"军团答题已经打过一轮题不能再答了",},
        [174] = {8132,"敌将已被讨伐, 请选择其他目标",},
        [175] = {8133,"军团公告不对",},
        [176] = {8134,"军团答题重复答题",},
        [177] = {8135,"军团活动时间内无法退出军团",},
        [178] = {8137,"主公, 对方今天的次数已经用完",},
        [179] = {8138,"主公, 与对方等级太接近, 不能演武",},
        [180] = {8139,"主公, 对方正在传习武义",},
        [181] = {8140,"主公, 对方已不在本军团",},
        [182] = {8200,"新手引导ID错误",},
        [183] = {8201,"礼包码校验码错误",},
        [184] = {8202,"礼包码时间过期",},
        [185] = {8203,"礼包码缺少参数",},
        [186] = {8204,"礼包码参数错误",},
        [187] = {8205,"活动批次的礼包码失效",},
        [188] = {8206,"礼包码已经失效",},
        [189] = {8207,"礼包码不存在",},
        [190] = {8208,"礼包码活动过期",},
        [191] = {8209,"礼包码超过使用次数",},
        [192] = {8210,"礼包码错误",},
        [193] = {8211,"用户名非该码绑定用户",},
        [194] = {8212,"用户礼包码兑换操作频繁",},
        [195] = {8213,"礼包码参数为空",},
        [196] = {8214,"礼包码已经领取过",},
        [197] = {8215,"礼包码平台网络超时",},
        [198] = {8216,"该服务器并未发布该礼品码",},
        [199] = {8217,"该礼品码的使用时间还没到",},
        [200] = {8220,"用户激活操作频繁",},
        [201] = {8221,"激活码为空",},
        [202] = {8222,"激活码校验出错",},
        [203] = {8223,"激活码缺少参数",},
        [204] = {8224,"只有在白名单中才能登录",},
        [205] = {8225,"世界boss没有开放",},
        [206] = {8226,"挑战次数上限",},
        [207] = {8227,"挑战CD",},
        [208] = {8228,"被挑战次数上限",},
        [209] = {8229,"该玩家正在被挑战",},
        [210] = {8235,"神兵不存在",},
        [211] = {8236,"神兵不能穿戴",},
        [212] = {8237,"神兵等级上限",},
        [213] = {8238,"神兵进阶资源不够",},
        [214] = {8250,"现在不在活动期间内",},
        [215] = {8251,"奖励不能重复领取",},
        [216] = {8252,"未找到你的信息",},
        [217] = {8253,"领奖条件未满足",},
        [218] = {8254,"跨服服务器维护中",},
        [219] = {8255,"现在不在充值返利活动期间",},
        [220] = {8256,"奖励不能重复领取",},
        [221] = {8257,"未找到对应的主公",},
        [222] = {8345,"您的好友数量已达上限",},
        [223] = {8346,"对方好友数量已达上限",},
        [224] = {8347,"TA不是你的好友",},
        [225] = {8348,"该玩家已是您好友",},
        [226] = {8349,"次数已满, 无法领取",},
        [227] = {8350,"你的黑名单太多了",},
        [228] = {8351,"该玩家被您拉黑了, 请先解除拉黑",},
        [229] = {8352,"这个玩家不在列表中",},
        [230] = {8353,"冷却刷新中",},
        [231] = {8354,"你的精力已满",},
        [232] = {8355,"你不能添加自己为好友",},
        [233] = {8360,"此红包不存在",},
        [234] = {8361,"此红包尚未发放",},
        [235] = {8362,"此红包已经发放过了",},
        [236] = {8363,"今日抢红包次数已达上限",},
        [237] = {8365,"军团捐献已经捐过了",},
        [238] = {8366,"军团捐献的积分不够",},
        [239] = {8367,"军团捐献的奖励已经领取过了",},
        [240] = {8380,"已有相同类型神兽上阵",},
        [241] = {8381,"变身卡图鉴已激活",},
        [242] = {8382,"变身卡图鉴激活条件不足",},
        [243] = {8383,"已经预约",},
        [244] = {8384,"请收入正确的手机号码",},
        [245] = {8390,"矿战该区域还未开放",},
        [246] = {8391,"矿战该点不能迁移",},
        [247] = {8392,"矿战挑战目标不存在",},
        [248] = {8393,"矿战该区域没有重生点",},
        [249] = {8394,"矿战同一军团不能战斗",},
        [250] = {8395,"兵力太低无法出城",},
        [251] = {8396,"操作无效",},
        [252] = {8400,"此BOSS已被击杀",},
        [253] = {8401,"已经完成投票了",},
        [254] = {8420,"只有在大本营才能切换战场",},
        [255] = {8421,"移动cd中",},
        [256] = {8422,"大本营中无法进行战斗",},
        [257] = {8423,"无法移动",},
        [258] = {8424,"挑战cd中",},
        [259] = {8425,"此城池宣战军团数量已达上限",},
        [260] = {8426,"军团战停战中",},
        [261] = {8427,"此城池已经宣战过了, 无需重复宣战",},
        [262] = {8428,"军团战不能进入此城池",},
        [263] = {8429,"军团战不能移动到该据点",},
        [264] = {8430,"军团战战斗错误",},
        [265] = {8431,"军团战已经被摧毁",},
        [266] = {8440,"界限突破投资源满了",},
        [267] = {8450,"您已有队伍",},
        [268] = {8451,"创建队伍失败",},
        [269] = {8452,"队伍不存在",},
        [270] = {8453,"队伍人数已满",},
        [271] = {8454,"队伍不能解散",},
        [272] = {8455,"您不是队长, 请等待队长操作",},
        [273] = {8456,"对方已有队伍",},
        [274] = {8457,"申请不存在",},
        [275] = {8458,"队伍设置异常",},
        [276] = {8459,"您已经不在队伍中了",},
        [277] = {8460,"您已经是队长了",},
        [278] = {8461,"队伍人数已满",},
        [279] = {8462,"该玩家已经离线",},
        [280] = {8463,"该玩家皇陵剩余时间不足",},
        [281] = {8464,"已经在皇陵中了",},
        [282] = {8465,"已在申请列表内",},
        [283] = {8466,"不符合队伍要求的等级",},
        [284] = {8467,"该玩家已离线",},
        [285] = {8468,"您邀请的主公已有队伍, 无法邀请",},
        [286] = {8480,"主公您点太快了",},
        [287] = {8481,"该位置上当前没有怪物",},
        [288] = {8482,"该怪物正在被争夺",},
        [289] = {8483,"不能移动",},
        [290] = {8484,"正在攻打怪物中",},
        [291] = {8485,"怪物已经死了",},
        [292] = {8486,"先秦皇陵不能进入",},
        [293] = {8487,"先秦皇陵暂时关闭, 详情请联系客服",},
        [294] = {8511,"活动任务还未完成, 不能领取奖励",},
        [295] = {8512,"活动任务奖励已领取",},
        [296] = {8513,"不能领取蛋糕升级奖励",},
        [297] = {8514,"不能捐献给其他军团的蛋糕",},
        [298] = {8515,"周年庆暂时关闭, 详情请联系客服",},
        [299] = {10000,"资源不足",},
        [300] = {10001,"元宝不足",},
        [301] = {10002,"银两不足",},
        [302] = {10003,"体力不足",},
        [303] = {10004,"精力不足",},
        [304] = {10005,"经验不足",},
        [305] = {10006,"VIP经验不足",},
        [306] = {10007,"威望不足",},
        [307] = {10008,"功勋不足",},
        [308] = {10009,"将魂不足",},
        [309] = {10010,"精铁不足",},
        [310] = {10011,"挑战次数不足",},
        [311] = {10012,"挑战次数不足",},
        [312] = {10013,"军团个人贡献不足",},
        [313] = {10014,"神魂不足",},
        [314] = {10015,"神兵之魂不足",},
        [315] = {10016,"充值额度不足",},
        [316] = {10017,"宝物之魂不足",},
        [317] = {10018,"军团声望不足",},
        [318] = {10019,"兽魂不足",},
        [319] = {10020,"充值水晶不足",},
        [320] = {10021,"充值积分不足",},
        [321] = {10022,"粮草不足",},
        [322] = {10023,"攻击次数不足",},
        [323] = {10024,"变身碎片不足",},
        [324] = {10025,"追击次数不足",},
        [325] = {10026,"观星次数不足",},
        [326] = {10027,"额度不足",},
        [327] = {10028,"马魂不足",},
        [328] = {10030,"活动尚未开启",},
        [329] = {10031,"不能重复支持",},
        [330] = {10032,"当前不在支持时间",},
        [331] = {10033,"比赛尚未开始",},
        [332] = {10034,"支持已达上限",},
        [333] = {10035,"不可以同时支持两位参赛选手",},
        [334] = {10036,"不可以投注的选手",},
        [335] = {10126,"活动未开启",},
        [336] = {10127,"追击次数不足",},
        [337] = {10128,"已经领过三国杀相关的礼包码",},
        [338] = {10129,"追击次数限制",},
        [339] = {10130,"活动未开启",},
        [340] = {10131,"不能重复支持",},
        [341] = {10132,"不在支持时间",},
        [342] = {10133,"等待活动开启",},
        [343] = {10134,"支持已达上限",},
        [344] = {10135,"不可以同时支持两位参赛选手",},
        [345] = {10136,"不可以支持的参赛选手",},
        [346] = {10137,"人数上限",},
        [347] = {10138,"赛季不正确",},
        [348] = {10139,"未到第1赛季开赛时间",},
        [349] = {10140,"匹配超时",},
        [350] = {10141,"开服太晚",},
        [351] = {10142,"该位置武将已上阵",},
        [352] = {10143,"取消匹配超时",},
        [353] = {10144,"选人超时",},
        [354] = {10145,"王者之战暂时关闭, 详情请联系客服",},
        [355] = {10146,"禁赛期间无法匹配",},
        [356] = {10147,"上赛季奖励已领取",},
        [357] = {10148,"未到比赛开放时间",},
        [358] = {10149,"匹配失败",},
        [359] = {10150,"武将不符合品质要求",},
        [360] = {10151,"相同上阵武将数量超出范围",},
        [361] = {10152,"正在匹配中",},
        [362] = {10153,"战斗次数不足, 无法领取奖励",},
        [363] = {10154,"胜利次数不足, 无法领取奖励",},
        [364] = {10155,"赛季奖励未领取",},
        [365] = {10156,"不能佩戴2个相同锦囊",},
        [366] = {10157,"此锦囊不能佩戴",},
        [367] = {10158,"非法的锦囊名称",},
        [368] = {10159,"找不到段位匹配信息",},
        [369] = {10160,"战马星数已经达到最高",},
        [370] = {10161,"未升星的战马无需重生",},
        [371] = {10162,"战马不可被此类型武将骑乘",},
        [372] = {10163,"此战马已经被其他武将骑乘了",},
        [373] = {10166,"上一场对战未结束, 请稍后再匹配",},
        [374] = {10210,"主公, 您的蟠螭龙纹壁用完了呢~",},
        [375] = {10211,"主公, 暂时无法获取抽卡信息, 稍后再来试试~",},
        [376] = {10212,"主公, 您的免费次数用完了呢~",},
        [377] = {10213,"主公, 您的免费次数正在冷却中~",},
        [378] = {10214,"招募已结束, 请去金将商店看看吧~",},
        [379] = {10350,"玩家已经参加过红包雨活动",},
        [380] = {10351,"红包不存在",},
        [381] = {40010,"日常副本等级不足",},
        [382] = {40011,"日常副本今天不开放",},
        [383] = {40012,"日常副本前置关卡没有通关",},
        [384] = {40013,"日常副本次数用完",},
        [385] = {1004097,"语音参数错误",},
        [386] = {1004098,"语音API调用错误",},
        [387] = {1004099,"语音初始化错误",},
        [388] = {1004100,"语音输入中",},
        [389] = {1004101,"语音轮询无效",},
        [390] = {1004102,"语音API模式错误",},
        [391] = {1004103,"语音参数异常或无效",},
        [392] = {1004104,"语音文件打开异常",},
        [393] = {1004105,"语音未初始化",},
        [394] = {1004106,"语音引擎未实例化",},
        [395] = {1004107,"语音C#API错误",},
        [396] = {1004108,"语音没有消息更新",},
        [397] = {1008193,"语音实时错误",},
        [398] = {1008194,"加入聊天室错误",},
        [399] = {1008195,"退出聊天室错误",},
        [400] = {1008196,"聊天室语音错误",},
        [401] = {1008197,"聊天室创建失败",},
        [402] = {1008198,"没有对应的聊天室",},
        [403] = {1008199,"退出聊天室不对了",},
        [404] = {1008200,"你已经在聊天室里了",},
        [405] = {1012289,"语音秘钥错误",},
        [406] = {1012290,"语音路径错误",},
        [407] = {1012291,"Dynasty Heroes使用游戏内语音功能需要录音权限.\n您可以从应用设置里面, 更改权限设置进行重新授权, 即可使用该功能",},
        [408] = {1012292,"语音密码不对",},
        [409] = {1012293,"上传语音失败",},
        [410] = {1012294,"网络繁忙",},
        [411] = {1012295,"下载语音失败",},
        [412] = {1012296,"语音文件异常",},
        [413] = {1012297,"语音文件异常",},
        [414] = {1012298,"语音文件处理中",},
        [415] = {1012299,"上传语音限制",},
        [416] = {1020481,"请在设置中开启语音权限",},
        [417] = {1020482,"网络异常",},
        [418] = {1020483,"网络异常",},
        [419] = {1024577,"语音网络异常",},
        [420] = {1028673,"已经在处理中",},
        [421] = {1032769,"角色错误",},
        [422] = {1032770,"已经角色处理中",},
        [423] = {1032771,"角色不在房间中",},
        [424] = {1036865,"sync异常",},
        [425] = {1036866,"聊天室太小了",},
        [426] = {2000001,"加入聊天错误",},
        [427] = {2000002,"加入聊天室超时",},
        [428] = {2000003,"聊天数据异常",},
        [429] = {2000004,"异常错误码",},
        [430] = {2000005,"网络错误, 请检查您的网络",},
        [431] = {2000006,"离开聊天室成功",},
        [432] = {2000007,"聊天秘钥获取成功",},
        [433] = {2000008,"聊天秘钥获取超时",},
        [434] = {2000009,"通信出现异常",},
        [435] = {2000010,"异常错误码",},
        [436] = {2000011,"上传语音成功",},
        [437] = {2000012,"上传语音文件错误",},
        [438] = {2000013,"下载语音成功",},
        [439] = {2000014,"下载语音失败",},
        [440] = {2000015,"语音转化成功",},
        [441] = {2000016,"语音转化超时",},
        [442] = {2000017,"语音服务器异常",},
        [443] = {2000018,"语音转化成功",},
        [444] = {2000019,"语音转化超时",},
        [445] = {2000020,"语音服务器异常",},
        [446] = {2000021,"语音播放结束",},
        [447] = {2000022,"聊天室已断开",},
        [448] = {2000023,"语音未知错误",},
        [449] = {2000024,"切换角色成功",},
        [450] = {2000025,"切换角色失败",},
        [451] = {2000026,"语音梳理异常",},
        [452] = {2000027,"角色异常",},
        [453] = {2000028,"聊天服务器异常",},
        [454] = {2000029,"语音需重试",},
    }
}

return net_msg_error