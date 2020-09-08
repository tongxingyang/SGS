--equip_stage

local _lang = "cn"
local _isExist = false
local _isBaseExist = false
local _isDataExist = false

-- key
local __key_map = {
  id = 1,    --关卡id-int 
  next_id = 2,    --后置关卡-int 
  name = 3,    --关卡名-string 
  lv = 4,    --等级需求-int 
  wave = 5,    --波数-int 
  win_type = 6,    --过关条件-int 
  win_value = 7,    --条件参数-int 
  monster_team_id_1 = 8,    --1星难度怪物组-int 
  team1_combat = 9,    --1星推荐战力-int 
  team1_drop = 10,    --1星难度怪物掉落-int 
  monster_team_id_2 = 11,    --2星难度怪物组-int 
  team2_combat = 12,    --2星推荐战力-int 
  team2_drop = 13,    --2星难度怪物掉落-int 
  monster_team_id_3 = 14,    --3星难度怪物组-int 
  team3_combat = 15,    --3星推荐战力-int 
  team3_drop = 16,    --3星难度怪物掉落1-int 
  box_id = 17,    --宝箱掉落-int 
  color = 18,    --品质-int 
  res_id = 19,    --资源形象-int 
  talk = 20,    --副本对话-string 
  group = 21,    --层数-int 
  in_res = 22,    --战斗场景-int 
  map = 23,    --战斗场景-int 

}

-- key type
local __key_type = {
  id = "int",    --关卡id-1 
  next_id = "int",    --后置关卡-2 
  name = "string",    --关卡名-3 
  lv = "int",    --等级需求-4 
  wave = "int",    --波数-5 
  win_type = "int",    --过关条件-6 
  win_value = "int",    --条件参数-7 
  monster_team_id_1 = "int",    --1星难度怪物组-8 
  team1_combat = "int",    --1星推荐战力-9 
  team1_drop = "int",    --1星难度怪物掉落-10 
  monster_team_id_2 = "int",    --2星难度怪物组-11 
  team2_combat = "int",    --2星推荐战力-12 
  team2_drop = "int",    --2星难度怪物掉落-13 
  monster_team_id_3 = "int",    --3星难度怪物组-14 
  team3_combat = "int",    --3星推荐战力-15 
  team3_drop = "int",    --3星难度怪物掉落1-16 
  box_id = "int",    --宝箱掉落-17 
  color = "int",    --品质-18 
  res_id = "int",    --资源形象-19 
  talk = "string",    --副本对话-20 
  group = "int",    --层数-21 
  in_res = "int",    --战斗场景-22 
  map = "int",    --战斗场景-23 

}


-- data
local equip_stage = {
    version =  1,
    _data = {
        [1] = {1,2,"第1关 乐进",20,1,1,0,3100101,4500,4001,3100102,6300,4101,3100103,7400,4201,0,3,116,"看我先登城头，立下首功！",1,1,108,},
        [2] = {2,3,"第2关 曹仁",20,1,1,0,3100201,8100,4001,3100202,12900,4101,3100203,15900,4201,0,4,106,"固若金汤，坚如磐石！",1,1,108,},
        [3] = {3,4,"第3关 夏侯惇",20,1,1,0,3100301,12700,4001,3100302,15700,4101,3100303,24600,4201,4501,5,105,"以彼之道，还施彼身！",1,1,108,},
        [4] = {4,5,"第4关 祝融",20,1,1,0,3100401,14300,4002,3100402,17000,4102,3100403,37500,4202,0,3,209,"尝尝我飞刀的厉害！",2,2,108,},
        [5] = {5,6,"第5关 张飞",20,1,1,0,3100501,16800,4002,3100502,26000,4102,3100503,57000,4202,0,4,206,"燕人张飞在此！！！ ",2,2,108,},
        [6] = {6,7,"第6关 关羽",20,1,1,0,3100601,23600,4002,3100602,40000,4102,3100603,65000,4202,4502,5,205,"观尔乃插标卖首。",2,2,108,},
        [7] = {7,8,"第7关 凌统",20,1,1,0,3100701,35900,4003,3100702,59000,4103,3100703,80000,4203,0,3,313,"伤敌于千里之外！",3,3,108,},
        [8] = {8,9,"第8关 孙权",20,1,1,0,3100801,54500,4003,3100802,73000,4103,3100803,93000,4203,0,4,306,"容我三思！",3,3,108,},
        [9] = {9,10,"第9关 太史慈",20,1,1,0,3100901,62300,4003,3100902,83000,4103,3100903,123000,4203,4503,5,305,"请助我一臂之力！",3,3,108,},
        [10] = {10,11,"第10关 颜良",20,1,1,0,3101001,76900,4004,3101002,97000,4104,3101003,161000,4204,0,3,413,"吾乃河北上将颜良是也！",4,1,108,},
        [11] = {11,12,"第11关 公孙瓒",20,1,1,0,3101101,89000,4004,3101102,152000,4104,3101103,173000,4204,0,4,418,"众将听令，排好阵势，御敌！",4,1,108,},
        [12] = {12,13,"第12关 贾诩",20,1,1,0,3101201,118000,4004,3101202,164000,4104,3101203,206000,4204,4504,5,415,"神仙难救，神仙难救啊！",4,1,108,},
        [13] = {13,14,"第13关 典韦",20,1,1,0,3101301,154000,4005,3101302,197000,4105,3101303,220000,4205,0,3,117,"看我三步之内取你小命！",5,2,108,},
        [14] = {14,15,"第14关 许褚",20,1,1,0,3101401,167000,4005,3101402,209000,4105,3101403,270000,4205,0,4,113,"谁来和我大战300回合！",5,2,108,},
        [15] = {15,16,"第15关 曹操",20,1,1,0,3101501,191000,4005,3101502,214000,4105,3101503,289000,4205,4505,5,103,"来人，护驾！",5,2,108,},
        [16] = {16,17,"第16关 黄忠",20,1,1,0,3101601,196000,4006,3101602,220000,4106,3101603,299000,4206,0,3,208,"百步穿杨！",6,3,108,},
        [17] = {17,18,"第17关 马超",20,1,1,0,3101701,201000,4006,3101702,259000,4106,3101703,311000,4206,0,4,207,"全军突击！",6,3,108,},
        [18] = {18,19,"第18关 赵云",20,1,1,0,3101801,206000,4006,3101802,277000,4106,3101803,333000,4206,4506,5,201,"吾乃常山赵子龙也！",6,3,108,},
        [19] = {19,20,"第19关 甘宁",20,1,1,0,3101901,212000,4007,3101902,288000,4107,3101903,383000,4207,0,3,308,"接招吧。",7,1,108,},
        [20] = {20,21,"第20关 吕蒙",20,1,1,0,3102001,248000,4007,3102002,299000,4107,3102003,447000,4207,0,4,307,"留得青山在，不怕没柴烧！",7,1,108,},
        [21] = {21,22,"第21关 孙策",20,1,1,0,3102101,265000,4007,3102102,320000,4107,3102103,533000,4207,4507,5,301,"吾乃江东小霸王孙伯符。",7,1,108,},
        [22] = {22,23,"第22关 华雄",20,1,1,0,3102201,276000,4008,3102202,366000,4108,3102203,607000,4208,0,3,406,"好大一股酒气啊！",8,2,108,},
        [23] = {23,24,"第23关 董卓",20,1,1,0,3102301,287000,4008,3102302,428000,4108,3102303,711000,4208,0,4,405,"美人儿~来香一个！",8,2,108,},
        [24] = {24,25,"第24关 吕布",20,1,1,0,3102401,307000,4008,3102402,511000,4108,3102403,861000,4208,4508,5,403,"神挡杀神，佛挡杀佛!",8,2,108,},
        [25] = {25,26,"第25关 张郃",20,1,1,0,3102501,350000,4009,3102502,582000,4109,3102503,968000,4209,0,3,110,"兵无常势，水无常形。",9,3,108,},
        [26] = {26,27,"第26关 张辽",20,1,1,0,3102601,409000,4009,3102602,683000,4109,3102603,1075000,4209,0,4,109,"哼~没想到吧！",9,3,108,},
        [27] = {27,28,"第27关 司马懿",20,1,1,0,3102701,489000,4009,3102702,823000,4109,3102703,1201000,4209,4509,5,101,"出来混，早晚要还的！",9,3,108,},
        [28] = {28,29,"第28关 魏延",20,1,1,0,3102801,558000,4010,3102802,926000,4110,3102803,1364000,4210,0,3,213,"我会怕你吗？",10,1,108,},
        [29] = {29,30,"第29关 姜维",20,1,1,0,3102901,654000,4010,3102902,1029000,4110,3102903,1685000,4210,0,4,214,"汝等小儿，可敢杀我？",10,1,108,},
        [30] = {30,31,"第30关 诸葛亮",20,1,1,0,3103001,784000,4010,3103002,1151000,4110,3103003,1836000,4210,4510,5,203,"观今夜之天象，知天下之大事。",10,1,108,},
        [31] = {31,32,"第31关 孙尚香",20,1,1,0,3103101,884000,4011,3103102,1304000,4111,3103103,2181000,4211,0,3,310,"他好我也好。",11,2,108,},
        [32] = {32,33,"第32关 孙坚",20,1,1,0,3103201,982000,4011,3103202,1606000,4111,3103203,2361000,4211,0,4,309,"以吾魂魄，保佑吾儿之基业。",11,2,108,},
        [33] = {33,34,"第33关 周瑜",20,1,1,0,3103301,1100000,4011,3103302,1751000,4111,3103303,2589000,4211,4511,5,303,"汝等看好了！",11,2,108,},
        [34] = {34,35,"第34关 袁术",20,1,1,0,3103401,1245000,4012,3103402,2078000,4112,3103403,2850000,4212,0,3,412,"玉玺在手，天下我有！",12,3,108,},
        [35] = {35,36,"第35关 袁绍",20,1,1,0,3103501,1526000,4012,3103502,2252000,4112,3103503,3272000,4212,0,4,411,"弓箭手，准备放箭！",12,3,108,},
        [36] = {36,37,"第36关 左慈",20,1,1,0,3103601,1665000,4012,3103602,2471000,4112,3103603,3405000,4212,4512,5,401,"哼，肉眼凡胎，岂能窥视仙人变幻？",12,3,108,},
        [37] = {37,38,"第37关 甄姬",20,1,1,0,3103701,1976000,4013,3103702,2703000,4113,3103703,3727000,4213,0,3,112,"凌波微步，罗袜生尘。",13,1,108,},
        [38] = {38,39,"第38关 曹丕",20,1,1,0,3103801,2144000,4013,3103802,3107000,4113,3103803,3885000,4213,0,4,111,"死罪可免，活罪难赦！",13,1,108,},
        [39] = {39,40,"第39关 郭嘉",20,1,1,0,3103901,2354000,4013,3103902,3237000,4113,3103903,4652000,4213,4513,5,104,"咳、咳~~~~",13,1,108,},
        [40] = {40,41,"第40关 徐庶",20,1,1,0,3104001,2557000,4014,3104002,3543000,4114,3104003,4943000,4214,0,3,212,"嘘~言多必失啊。",14,2,108,},
        [41] = {41,42,"第41关 庞统",20,1,1,0,3104101,2942000,4014,3104102,3698000,4114,3104103,5431000,4214,0,4,211,"伤一敌可连其百！",14,2,108,},
        [42] = {42,43,"第42关 刘备",20,1,1,0,3104201,3125000,4014,3104202,4482000,4114,3104203,5849000,4214,4514,5,202,"蜀将何在！",14,2,108,},
        [43] = {43,44,"第43关 鲁肃",20,1,1,0,3104301,3482000,4015,3104302,4853000,4115,3104303,6545000,4215,0,3,319,"拿去拿去，莫跟哥哥客气！",15,3,108,},
        [44] = {44,45,"第44关 陆逊",20,1,1,0,3104401,3698000,4015,3104402,5431000,4115,3104403,7172000,4215,0,4,311,"旧的不去新的不来。",15,3,108,},
        [45] = {45,46,"第45关 大乔",20,1,1,0,3104501,4482000,4015,3104502,5849000,4115,3104503,7665000,4215,4515,5,302,"请休息吧。",15,3,108,},
        [46] = {46,47,"第46关 于吉",20,1,1,0,3104601,4853000,4016,3104602,6545000,4116,3104603,8599000,4216,0,3,410,"你信吗？",16,1,108,},
        [47] = {47,48,"第47关 张角",20,1,1,0,3104701,5431000,4016,3104702,7172000,4116,3104703,9458000,4216,0,4,409,"以我之真气，合天地之造化！",16,1,108,},
        [48] = {48,49,"第48关 貂蝉",20,1,1,0,3104801,5849000,4016,3104802,7665000,4116,3104803,10120000,4216,4516,5,404,"夫君，你要替妾身做主啊！",16,1,108,},
        [49] = {49,50,"第49关 典韦",20,1,1,0,3104901,6545000,4017,3104902,8599000,4117,3104903,11009000,4217,0,3,117,"看我三步之内取你小命！",17,2,108,},
        [50] = {50,51,"第50关 张辽",20,1,1,0,3105001,7172000,4017,3105002,9458000,4117,3105003,11778000,4217,0,4,109,"哼~没想到吧！",17,2,108,},
        [51] = {51,52,"第51关 曹操",20,1,1,0,3105101,7665000,4017,3105102,10120000,4117,3105103,13020000,4217,4517,5,103,"来人，护驾！",17,2,108,},
        [52] = {52,53,"第52关 马超",20,1,1,0,3105201,8599000,4018,3105202,11009000,4118,3105203,13980000,4218,0,3,207,"全军突击！",18,3,108,},
        [53] = {53,54,"第53关 姜维",20,1,1,0,3105301,9458000,4018,3105302,11778000,4118,3105303,14968000,4218,0,4,214,"汝等小儿，可敢杀我？",18,3,108,},
        [54] = {54,55,"第54关 赵云",20,1,1,0,3105401,10120000,4018,3105402,13020000,4118,3105403,16833000,4218,4518,5,201,"吾乃常山赵子龙也！",18,3,108,},
        [55] = {55,56,"第55关 吕蒙",20,1,1,0,3105501,11009000,4019,3105502,13980000,4119,3105503,18516000,4219,0,3,307,"留得青山在，不怕没柴烧！",19,1,108,},
        [56] = {56,57,"第56关 孙坚",20,1,1,0,3105601,11778000,4019,3105602,14968000,4119,3105603,19846000,4219,0,4,309,"以吾魂魄，保佑吾儿之基业。",19,1,108,},
        [57] = {57,58,"第57关 孙策",20,1,1,0,3105701,13020000,4019,3105702,16833000,4119,3105703,21262000,4219,4519,5,301,"吾乃江东小霸王孙伯符。",19,1,108,},
        [58] = {58,59,"第58关 董卓",20,1,1,0,3105801,13980000,4020,3105802,18516000,4120,3105803,22830000,4220,0,3,405,"美人儿~来香一个！",20,2,108,},
        [59] = {59,60,"第59关 袁绍",20,1,1,0,3105901,14968000,4020,3105902,19846000,4120,3105903,25415000,4220,0,4,411,"弓箭手，准备放箭！",20,2,108,},
        [60] = {60,61,"第60关 吕布",20,1,1,0,3106001,16833000,4020,3106002,21262000,4120,3106003,27254000,4220,4520,5,403,"神挡杀神，佛挡杀佛!",20,2,108,},
        [61] = {61,62,"第61关 夏侯惇",20,1,1,0,3106101,18516000,4021,3106102,22830000,4121,3106103,29290000,4221,0,3,105,"以彼之道，还施彼身！",21,3,108,},
        [62] = {62,63,"第62关 张郃",20,1,1,0,3106201,19846000,4021,3106202,25415000,4121,3106203,31420000,4221,0,4,110,"兵无常势，水无常形。",21,3,108,},
        [63] = {63,64,"第63关 司马懿",20,1,1,0,3106301,21262000,4021,3106302,27254000,4121,3106303,35840000,4221,4521,5,101,"出来混，早晚要还的！",21,3,108,},
        [64] = {64,65,"第64关 关羽",20,1,1,0,3106401,22830000,4022,3106402,29291000,4122,3106403,38910000,4222,0,3,205,"观尔乃插标卖首。",22,1,108,},
        [65] = {65,66,"第65关 魏延",20,1,1,0,3106501,25415000,4022,3106502,31420000,4122,3106503,41770000,4222,0,4,213,"我会怕你吗？",22,1,108,},
        [66] = {66,67,"第66关 诸葛亮",20,1,1,0,3106601,27254000,4022,3106602,35840000,4122,3106603,44830000,4222,4522,5,203,"观今夜之天象，知天下之大事。",22,1,108,},
        [67] = {67,68,"第67关 太史慈",20,1,1,0,3106701,29291000,4023,3106702,38910000,4123,3106703,49510000,4223,0,3,305,"请助我一臂之力！",23,2,108,},
        [68] = {68,69,"第68关 孙尚香",20,1,1,0,3106801,31422000,4023,3106802,41770000,4123,3106803,53270000,4223,0,4,310,"他好我也好。",23,2,108,},
        [69] = {69,70,"第69关 周瑜",20,1,1,0,3106901,35837000,4023,3106902,44830000,4123,3106903,57730000,4223,4523,5,303,"汝等看好了！",23,2,108,},
        [70] = {70,71,"第70关 贾诩",20,1,1,0,3107001,38907000,4024,3107002,49510000,4124,3107003,62200000,4224,0,3,415,"神仙难救，神仙难救啊！",24,3,108,},
        [71] = {71,72,"第71关 袁术",20,1,1,0,3107101,41770000,4024,3107102,53270000,4124,3107103,70260000,4224,0,4,412,"玉玺在手，天下我有！",24,3,108,},
        [72] = {72,73,"第72关 左慈",20,1,1,0,3107201,44830000,4024,3107202,57730000,4124,3107203,75670000,4224,4524,5,401,"哼，肉眼凡胎，岂能窥视仙人变幻？",24,3,108,},
        [73] = {73,74,"第73关 曹仁",20,1,1,0,3107301,49510000,4025,3107302,62200000,4125,3107303,81520000,4225,0,3,106,"固若金汤，坚如磐石！",25,1,108,},
        [74] = {74,75,"第74关 张辽",20,1,1,0,3107401,53270000,4025,3107402,70260000,4125,3107403,88460000,4225,0,4,109,"哼~没想到吧！",25,1,108,},
        [75] = {75,76,"第75关 曹操",20,1,1,0,3107501,57730000,4025,3107502,75670000,4125,3107503,97470000,4225,4525,5,103,"来人，护驾！",25,1,108,},
        [76] = {76,77,"第76关 张飞",20,1,1,0,3107601,62200000,4026,3107602,81520000,4126,3107603,104990000,4226,0,3,206,"燕人张飞在此！！！ ",26,2,108,},
        [77] = {77,78,"第77关 黄忠",20,1,1,0,3107701,70260000,4026,3107702,88460000,4126,3107703,113200000,4226,0,4,208,"百步穿杨！",26,2,108,},
        [78] = {78,79,"第78关 赵云",20,1,1,0,3107801,75670000,4026,3107802,97470000,4126,3107803,122030000,4226,4526,5,201,"吾乃常山赵子龙也！",26,2,108,},
        [79] = {79,80,"第79关 孙权",20,1,1,0,3107901,81520000,4027,3107902,104990000,4127,3107903,138490000,4227,0,3,306,"容我三思！",27,3,108,},
        [80] = {80,81,"第80关 孙坚",20,1,1,0,3108001,88460000,4027,3108002,113200000,4127,3108003,149250000,4227,0,4,309,"以吾魂魄，保佑吾儿之基业。",27,3,108,},
        [81] = {81,82,"第81关 孙策",20,1,1,0,3108101,97470000,4027,3108102,122030000,4127,3108103,161020000,4227,4527,5,301,"吾乃江东小霸王孙伯符。",27,3,108,},
        [82] = {82,83,"第82关 公孙瓒",20,1,1,0,3108201,104990000,4028,3108202,138490000,4128,3108203,173650000,4228,0,3,418,"众将听令，排好阵势，御敌！",28,1,108,},
        [83] = {83,84,"第83关 袁绍",20,1,1,0,3108301,113200000,4028,3108302,149250000,4128,3108303,191180000,4228,0,4,411,"弓箭手，准备放箭！",28,1,108,},
        [84] = {84,85,"第84关 吕布",20,1,1,0,3108401,122030000,4028,3108402,161020000,4128,3108403,206260000,4228,4528,5,403,"神挡杀神，佛挡杀佛!",28,1,108,},
        [85] = {85,86,"第85关 许褚",20,1,1,0,3108501,138490000,4029,3108502,173650000,4129,3108503,222590000,4229,0,3,113,"谁来和我大战300回合！",29,2,108,},
        [86] = {86,87,"第86关 曹丕",20,1,1,0,3108601,149250000,4029,3108602,191180000,4129,3108603,240230000,4229,0,4,111,"死罪可免，活罪难赦！",29,2,108,},
        [87] = {87,88,"第87关 郭嘉",20,1,1,0,3108701,161020000,4029,3108702,206260000,4129,3108703,264020000,4229,4529,5,104,"咳、咳~~~~",29,2,108,},
        [88] = {88,89,"第88关 马超",20,1,1,0,3108801,173650000,4030,3108802,222590000,4130,3108803,291260000,4230,0,3,207,"全军突击！",30,3,108,},
        [89] = {89,90,"第89关 庞统",20,1,1,0,3108901,191180000,4030,3108902,240230000,4130,3108903,314920000,4230,0,4,211,"伤一敌可连其百！",30,3,108,},
        [90] = {90,91,"第90关 刘备",20,1,1,0,3109001,206260000,4030,3109002,264020000,4130,3109003,339780000,4230,4530,5,202,"蜀将何在！",30,3,108,},
        [91] = {91,92,"第91关 吕蒙",20,1,1,0,3109101,222590000,4031,3109102,291260000,4131,3109103,373610000,4231,0,3,307,"留得青山在，不怕没柴烧！",31,1,108,},
        [92] = {92,93,"第92关 陆逊",20,1,1,0,3109201,240230000,4031,3109202,314920000,4131,3109203,403190000,4231,0,4,311,"旧的不去新的不来。",31,1,108,},
        [93] = {93,94,"第93关 大乔",20,1,1,0,3109301,264020000,4031,3109302,339780000,4131,3109303,435220000,4231,4531,5,302,"请休息吧。",31,1,108,},
        [94] = {94,95,"第94关 董卓",20,1,1,0,3109401,291260000,4032,3109402,373610000,4132,3109403,457170000,4232,0,3,405,"美人儿~来香一个！",32,2,108,},
        [95] = {95,96,"第95关 张角",20,1,1,0,3109501,314920000,4032,3109502,403190000,4132,3109503,488300000,4232,0,4,409,"以我之真气，合天地之造化！",32,2,108,},
        [96] = {96,97,"第96关 貂蝉",20,1,1,0,3109601,339780000,4032,3109602,435220000,4132,3109603,525280000,4232,4532,5,404,"夫君，你要替妾身做主啊！",32,2,108,},
        [97] = {97,98,"第97关 甄姬",20,1,1,0,3109701,373610000,4033,3109702,457170000,4133,3109703,551380000,4233,0,3,112,"凌波微步，罗袜生尘。",33,3,108,},
        [98] = {98,99,"第98关 张郃",20,1,1,0,3109801,403190000,4033,3109802,488300000,4133,3109803,578760000,4233,0,4,110,"兵无常势，水无常形。",33,3,108,},
        [99] = {99,100,"第99关 典韦",20,1,1,0,3109901,435220000,4033,3109902,525280000,4133,3109903,619090000,4233,4533,5,117,"看我三步之内取你小命！",33,3,108,},
        [100] = {100,101,"第100关 黄忠",20,1,1,0,3110001,457170000,4034,3110002,551380000,4134,3110003,651000000,4234,0,3,208,"百步穿杨！",34,1,108,},
        [101] = {101,102,"第101关 坦克阵",20,1,1,0,3110101,488300000,4034,3110102,578760000,4134,3110103,684570000,4234,0,4,207,"有我们在，别想通过这里！",34,1,108,},
        [102] = {102,103,"第102关 追击阵",20,1,1,0,3110201,525280000,4034,3110202,619090000,4134,3110203,719880000,4234,4534,5,206,"你，听说过追击吗？",34,1,108,},
        [103] = {103,104,"第103关 眩晕阵",20,1,1,0,3110301,551380000,4035,3110302,651000000,4135,3110303,757030000,4235,0,3,401,"看你能不能醒过来。",35,2,108,},
        [104] = {104,105,"第104关 反伤阵",20,1,1,0,3110401,578760000,4035,3110402,684570000,4135,3110403,796120000,4235,0,4,105,"挨最痛的揍，刚最强的烈！",35,2,108,},
        [105] = {105,106,"第105关 吸血阵",20,1,1,0,3110501,619090000,4035,3110502,719880000,4135,3110503,837240000,4235,4535,5,112,"以战养战，方能持久。",35,2,108,},
        [106] = {106,107,"第106关 永动阵",20,1,1,0,3110601,651000000,4036,3110602,757030000,4136,3110603,880510000,4236,0,3,103,"技能，我们是无限的。",36,3,108,},
        [107] = {107,108,"第107关 沉默阵",20,1,1,0,3110701,684570000,4036,3110702,796120000,4136,3110703,926040000,4236,0,4,104,"沉默，是无声的抗议。",36,3,108,},
        [108] = {108,109,"第108关 暴力阵",20,1,1,0,3110801,719880000,4036,3110802,837240000,4136,3110803,973940000,4236,4536,5,117,"第一回合，我们是最强的。",36,3,108,},
        [109] = {109,110,"第109关 减怒阵",20,1,1,0,3110901,757030000,4037,3110902,880510000,4137,3110903,1024350000,4237,0,3,403,"你能存下怒气算你厉害。",37,1,108,},
        [110] = {110,111,"第110关 麻痹阵",20,1,1,0,3111001,796120000,4037,3111002,926040000,4137,3111003,1077390000,4237,0,4,411,"普攻？不存在的。",37,1,108,},
        [111] = {111,112,"第111关 毒奶阵",20,1,1,0,3111101,837240000,4037,3111102,973940000,4137,3111103,1133210000,4237,4537,5,410,"打不死你，我耗死你。",37,1,108,},
        [112] = {112,113,"第112关 六奶阵",20,1,1,0,3111201,880510000,4038,3111202,1024350000,4138,3111203,1191950000,4238,0,3,202,"你输出够吗？",38,2,108,},
        [113] = {113,114,"第113关 后排阵",20,1,1,0,3111301,926040000,4038,3111302,1077390000,4138,3111303,1253780000,4238,0,4,212,"你后排够硬吗？",38,2,108,},
        [114] = {114,115,"第114关 美女阵",20,1,1,0,3111401,973940000,4038,3111402,1133210000,4138,3111403,1318850000,4238,4538,5,304,"英雄难过美人关。",38,2,108,},
        [115] = {115,116,"第115关 弓手阵",20,1,1,0,3111501,1024350000,4039,3111502,1191950000,4139,3111503,1387330000,4239,0,3,208,"我们都是神射手。",39,3,108,},
        [116] = {116,117,"第116关 谋士阵",20,1,1,0,3111601,1077390000,4039,3111602,1253780000,4139,3111603,1459420000,4239,0,4,101,"动动嘴皮子，谋天下。",39,3,108,},
        [117] = {117,118,"第117关 全体阵",20,1,1,0,3111701,1133210000,4039,3111702,1318850000,4139,3111703,1535300000,4239,4539,5,303,"单体攻击，不存在的。",39,3,108,},
        [118] = {118,119,"第118关 五虎阵",20,1,1,0,3111801,1191950000,4040,3111802,1387330000,4140,3111803,1615180000,4240,0,3,201,"我们是，五虎上将！",40,1,108,},
        [119] = {119,120,"第119关 猛将阵",20,1,1,0,3111901,1253780000,4040,3111902,1459420000,4140,3111903,1699270000,4240,0,4,105,"五虎上将什么的，都是吹出来的。",40,1,108,},
        [120] = {120,121,"第120关 都督阵",20,1,1,0,3112001,1318850000,4040,3112002,1535300000,4140,3112003,1787800000,4240,4540,5,311,"要说厉害，还是我们四大都督厉害。",40,1,108,},
        [121] = {121,122,"第121关 秒杀阵",20,1,1,0,3112101,1387330000,4041,3112102,1615180000,4141,3112103,1881000000,4241,0,3,101,"你等着，等我有十点怒气的时候！",41,2,108,},
        [122] = {122,123,"第122关 光环阵",20,1,1,0,3112201,1459420000,4041,3112202,1699270000,4141,3112203,1979130000,4241,0,4,211,"堆光环，我们是认真的。",41,2,108,},
        [123] = {123,124,"第123关 纵火阵",20,1,1,0,3112301,1535300000,4041,3112302,1787800000,4141,3112303,2082460000,4241,4541,5,309,"放火不是诸葛亮的看家本领么？",41,2,108,},
        [124] = {124,125,"第124关 碰瓷阵",20,1,1,0,3112401,1615180000,4042,3112402,1881000000,4142,3112403,2191260000,4242,0,3,405,"打着打着你就死了。",42,3,108,},
        [125] = {125,126,"第125关 风火阵",20,1,1,0,3112501,1699270000,4042,3112502,1979130000,4142,3112503,2305840000,4242,0,4,111,"魏武的霸业，就由朕来继承！",42,3,108,},
        [126] = {126,127,"第126关 普攻阵",20,1,1,0,3112601,1787800000,4042,3112602,2082460000,4142,3112603,2426500000,4242,4542,5,208,"吾虽老矣，但永不服老！",42,3,108,},
        [127] = {127,128,"第127关 爆炎阵",20,1,1,0,3112701,1881000000,4043,3112702,2191260000,4143,3112703,2553580000,4243,0,3,305,"只要有我在，尔等就休想越国境一步！",43,1,108,},
        [128] = {128,129,"第128关 无敌阵",20,1,1,0,3112801,1979130000,4043,3112802,2305840000,4143,3112803,2687430000,4243,0,4,110,"统率三军，怎能不识变数！",43,1,108,},
        [129] = {129,130,"第129关 联姻阵",20,1,1,0,3112901,2082460000,4043,3112902,2426500000,4143,3112903,2828410000,4243,4543,5,309,"乱世清君侧，挥师复江山。",43,1,108,},
        [130] = {130,131,"第130关 免伤阵",20,1,1,0,3113001,2191260000,4044,3113002,2553580000,4144,3113003,2976910000,4244,0,3,207,"敌人阵型已乱，随我杀~",44,2,108,},
        [131] = {131,132,"第131关 华容道",20,1,1,0,3113101,2305840000,4044,3113102,2687430000,4144,3113103,3133350000,4244,0,4,103,"关云长，孤当年待你不薄！",44,2,108,},
        [132] = {132,133,"第132关 仙风道骨",20,1,1,0,3113201,2426500000,4044,3113202,2828410000,4144,3113203,3298160000,4244,4544,5,401,"将军究竟是败于我身后何人之手呢，哈哈哈！",44,2,108,},
        [133] = {133,134,"第133关 严防据守",20,1,1,0,3113301,2553580000,4045,3113302,2976910000,4145,3113303,3471810000,4245,0,3,106,"想突破我的阵地？再回去练个一百年吧！",45,3,108,},
        [134] = {134,135,"第134关 妙不可言",20,1,1,0,3113401,2687430000,4045,3113402,3133350000,4145,3113403,3654770000,4245,0,4,212,"唉~一切尽在不言中。",45,3,108,},
        [135] = {135,136,"第135关 谦谦君子",20,1,1,0,3113501,2828410000,4045,3113502,3298160000,4145,3113503,3847560000,4245,4545,5,311,"旧的不去新的不来。",45,3,108,},
        [136] = {136,137,"第136关 魑魅魍魉",20,1,1,0,3113601,2976910000,4046,3113602,3471810000,4146,3113603,4050720000,4246,0,3,415,"杀或是被杀自己选择吧，哼哈哈哈。",46,1,108,},
        [137] = {137,138,"第137关 荀令留香",20,1,1,0,3113701,3133350000,4046,3113702,3654770000,4146,3113703,4264840000,4246,0,4,102,"借你之手与他一搏吧！",46,1,108,},
        [138] = {138,139,"第138关 巾帼须眉",20,1,1,0,3113801,3298160000,4046,3113802,3847560000,4146,3113803,4490500000,4246,4546,5,204,"孔明先生，这次，你还能拿得出超过我的计谋吗？",46,1,108,},
        [139] = {139,140,"第139关 江洋大盗",20,1,1,0,3113901,3471810000,4047,3113902,4050720000,4147,3113903,4728370000,4247,0,3,308,"二十年后，又是一条好汉！",47,2,108,},
        [140] = {140,141,"第140关 四世三公",20,1,1,0,3114001,3654770000,4047,3114002,4264840000,4147,3114003,4979110000,4247,0,4,412," 乱世豪杰，当有开天辟地的气概。",47,2,108,},
        [141] = {141,142,"第141关 虎牢关",20,1,1,0,3114101,3847560000,4047,3114102,4490500000,4147,3114103,5243440000,4247,4547,5,403,"没见过这么欺负人的，三个打一个！",47,2,108,},
        [142] = {142,143,"第142关 长坂坡",20,1,1,0,3114201,4050720000,4048,3114202,4728370000,4148,3114203,5522130000,4248,0,3,201,"贼将休走，可敢与我一战？",48,3,108,},
        [143] = {143,144,"第143关 小霸王",20,1,1,0,3114301,4264840000,4048,3114302,4979110000,4148,3114303,5815980000,4248,0,4,301,"父亲在上，魂佑江东；公瑾在旁，智定天下。",48,3,108,},
        [144] = {144,145,"第144关 医者仁心",20,1,1,0,3114401,4490500000,4048,3114402,5243440000,4148,3114403,6125840000,4248,4548,5,402,"别紧张，有老夫呢～",48,3,108,},
        [145] = {145,146,"第145关 潼关之战",20,1,1,0,3114501,4728370000,4049,3114502,5522130000,4149,3114503,6452600000,4249,0,3,108,"谁来和我大战300回合！",49,1,108,},
        [146] = {146,147,"第146关 夜观星象",20,1,1,0,3114601,4979110000,4049,3114602,5815980000,4149,3114603,6797240000,4249,0,4,209,"这仁德之世，我会拼死守护！",49,1,108,},
        [147] = {147,148,"第147关 群雄逐鹿",20,1,1,0,3114701,5243440000,4049,3114702,6125840000,4149,3114703,7160750000,4249,4549,5,310,"夫君，身体要紧~",49,1,108,},
        [148] = {148,149,"第148关 河北白马",20,1,1,0,3114801,5522130000,4050,3114802,6452600000,4150,3114803,7544200000,4250,0,3,418,"匹夫，让这白马义从，成为你挥之不去的噩梦!",50,2,108,},
        [149] = {149,150,"第149关 择君而侍",20,1,1,0,3114901,5815980000,4050,3114902,6797240000,4150,3114903,7948740000,4250,0,4,110,"行军打仗，须得随机应变！",50,2,108,},
        [150] = {150,0,"第150关 三国英雄",20,1,1,0,3115001,6125840000,4050,3115002,7160750000,4150,3115003,8375550000,4250,4550,5,202,"滚滚长江东逝水，浪花淘尽英雄。",50,2,108,},
    }
}

-- index
local __index_id = {
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
    [121] = 121,
    [122] = 122,
    [123] = 123,
    [124] = 124,
    [125] = 125,
    [126] = 126,
    [127] = 127,
    [128] = 128,
    [129] = 129,
    [13] = 13,
    [130] = 130,
    [131] = 131,
    [132] = 132,
    [133] = 133,
    [134] = 134,
    [135] = 135,
    [136] = 136,
    [137] = 137,
    [138] = 138,
    [139] = 139,
    [14] = 14,
    [140] = 140,
    [141] = 141,
    [142] = 142,
    [143] = 143,
    [144] = 144,
    [145] = 145,
    [146] = 146,
    [147] = 147,
    [148] = 148,
    [149] = 149,
    [15] = 15,
    [150] = 150,
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

-- index mainkey map
local __main_key_map = {
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
    [121] = 121,
    [122] = 122,
    [123] = 123,
    [124] = 124,
    [125] = 125,
    [126] = 126,
    [127] = 127,
    [128] = 128,
    [129] = 129,
    [13] = 13,
    [130] = 130,
    [131] = 131,
    [132] = 132,
    [133] = 133,
    [134] = 134,
    [135] = 135,
    [136] = 136,
    [137] = 137,
    [138] = 138,
    [139] = 139,
    [14] = 14,
    [140] = 140,
    [141] = 141,
    [142] = 142,
    [143] = 143,
    [144] = 144,
    [145] = 145,
    [146] = 146,
    [147] = 147,
    [148] = 148,
    [149] = 149,
    [15] = 15,
    [150] = 150,
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

-- metatable
local mt = { 
    __index = function(t, k) 
        local key_map = t._raw_key_map
        assert(key_map[k], "cannot find " .. k .. " in equip_stage")
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
function equip_stage.length()
    return #equip_stage._data
end

-- 
function equip_stage.hasKey(k)
    if __key_map[k] == nil then
        return false
    else
        return true
    end
end

--
function equip_stage.isVersionValid(v)
    if equip_stage.version then
        if v then
            return equip_stage.version <= v
        else
            return false
        end
    else
        return true
    end
end

--
function equip_stage.indexOf(index)
    if index == nil or not equip_stage._data[index] then
        return nil
    end
    if Lang.lang ~= _lang then 
        _lang = Lang.lang
        if Lang.lang ~= "cn" then
            _isDataExist = Lang.isFileExist("app/i18n/".. _lang .."/data/equip_stage.lua")
            _isExist = Lang.isFileExist("app/i18n/".. _lang .."/config/equip_stage.lua")
            _isBaseExist =  Lang.isFileExist("app/i18n/".. _lang .."/base/equip_stage.lua")

            if _isDataExist then
                local table = require( "app.i18n.".. _lang ..".data." .. "equip_stage" )
                _isDataExist = equip_stage.isVersionValid(table.version)
            end
            if _isBaseExist then
                local table = require( "app.i18n.".. _lang ..".base." .. "equip_stage" )
                _isBaseExist = equip_stage.isVersionValid(table.version)
            end
            if _isExist then
                local table = require( "app.i18n.".. _lang ..".config." .. "equip_stage" )
                _isExist = equip_stage.isVersionValid(table.version)
            end
        end
    end
    local config = {_raw = nil,_raw_key_map = __key_map,_lang = nil,_lang_key_map = nil,_data = nil,_data_key_map = nil}
    if _lang ~= "cn" and _isDataExist then
        local table = require( "app.i18n.".. _lang ..".data." .. "equip_stage" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local data_index = table[index_key][main_key]
        config._data = table._data[data_index]
        config._data_key_map = table.__key_map
    end

    if _lang ~= "cn" and _isExist then
        local table = require( "app.i18n.".. _lang ..".config." .. "equip_stage" )
        local main_key = __main_key_map[index]
		local index_key = "__index_id"
        local lang_index = table[index_key][main_key]
        config._lang = table._data[lang_index]
        config._lang_key_map = table.__key_map
    end
    config._raw = equip_stage._data[index]
    if _lang ~= "cn" and _isBaseExist then
        local table_base = require( "app.i18n.".. _lang ..".base." .. "equip_stage" )
        config._raw = table_base._data[index] 
    end
    return setmetatable(config, mt)
end

--
function equip_stage.get(id)
    
    return equip_stage.indexOf(__index_id[id])
        
end

--
function equip_stage.set(id, key, value)
    local record = equip_stage.get(id)
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
function equip_stage.index()
    return __index_id
end

return equip_stage