--story_chapter

local story_chapter = {
    -- key
    __key_map = {
      id = 1,    --章节id_key-int 
      chapter = 2,    --章节回数-简中-string 
      name = 3,    --章节名-简中-string 
      subtitle = 4,    --结尾描述-简中-string 
    
    },
    -- data
    _data = {
        [1] = {1,"第一回","英雄出世","主公与刘关张桃园四结义, 追袭董卓, 得名将令, 与关银屏, 张星彩结伴闯天下!",},
        [2] = {2,"第二回","黄巾起义","主公遇黄巾军, 大败张角于吉, 获名将令, 威震中原!",},
        [3] = {3,"第三回","洛阳之乱","十常侍祸乱汉室宫廷, 主公奋发而起, 平定叛乱, 少帝感激不已, 赐名将令给主公.",},
        [4] = {4,"第四回","孟德献刀","主公, 曹操借宝刀刺杀董卓未成, 但其英雄气概却令陈宫折服, 愿弃官追随.主公与曹操号令天下英雄讨伐董卓.",},
        [5] = {5,"第五回","十八路诸侯","主公挑战各路诸侯, 灭二袁气焰, 战无不胜, 意气风发.",},
        [6] = {6,"第六回","四英战吕布","主公携手刘关张, 斩华雄, 战吕布, 解十八路诸侯之危, 誉满天下.",},
        [7] = {7,"第七回","孙坚得玉玺","主公入洛阳, 战江东烈虎孙坚, 连战连胜, 威名远播.",},
        [8] = {8,"第八回","跨江击刘表","主公匹马入荆州, 败刘表, 赢孙策, 威震荆襄九郡.",},
        [9] = {9,"第九回","荥阳之战","曹操兵败荥阳, 幸得主公相救.董卓为避主公锋芒, 慌乱逃入长安.",},
        [10] = {10,"第十回","凤仪亭","主公杀董卓, 救天下第一美人貂蝉, 长安百姓普天同庆.",},
        [11] = {11,"十一回","犯长安","主公败李傕郭汜, 与马超一战, 惺惺相惜, 引为知己.",},
        [12] = {12,"十二回","白马将军","袁绍公孙瓒争夺冀州, 主公大战白马将军公孙瓒, 威名正盛.",},
        [13] = {13,"十三回","界桥之战","主公助公孙瓒大败袁绍, 大展神威, 锐不可当.",},
        [14] = {14,"十四回","兖州纳贤","主公入兖州, 结识荀彧荀攸, 大败典韦, 文韬武略, 声名远播.",},
        [15] = {15,"十五回","祸临徐州","曹操为报父仇出兵徐州, 主公劝阻曹操, 曹操大怒坚持发兵.",},
        [16] = {16,"十六回","太史慈送信","曹操攻徐州, 主公助陶谦, 孔融守城, 与太史慈切磋, 太史慈甘拜下风.",},
        [17] = {17,"十七回","借赵云","主公往公孙瓒处借赵云, 再与赵云一战, 风云际会, 英雄豪情.",},
        [18] = {18,"十八回","濮阳之乱","曹操与吕布大战险些丧命, 主公于千军万马之中再救曹操, 曹操感激不尽, 撤兵徐州.",},
        [19] = {19,"十九回","三让徐州","徐州太守陶谦病故, 欲将太守之位传给刘备, 刘备三让徐州, 最后在主公劝说下接掌徐州.",},
        [20] = {20,"二十回","东归洛阳","主公败李傕郭汜, 结识名将徐晃, 护送汉献帝东归洛阳.献帝感谢主公, 封主公为扬威将军, 主公不受拘束, 只领虚职.",},
        [21] = {21,"二十一回","挟天子令诸侯","汉献帝东归洛阳后, 曹操迎奉天子, 并迁都许昌.主公护送天子往许都, 于许都结识郭嘉, 令郭嘉钦佩不已, 引为知己.",},
        [22] = {22,"二十二回","辕门射戟","袁术预攻刘备, 主公与吕布辕门射戟, 为刘备解围.",},
        [23] = {23,"二十三回","虎步江淮","吕布占据徐州, 虎步江淮, 袁术预与之结亲, 主公不屑袁术为人, 吕灵雎相信主公, 断然拒绝.",},
        [24] = {24,"二十四回","张飞夺马","莽张飞夺吕布马匹, 惹怒吕布, 主公护送刘备投奔曹操, 曹操封刘备为豫州牧, 主公无心做官, 令人赞叹.",},
        [25] = {25,"二十五回","小霸王孙策","主公游历江东, 助孙策讨回旧部, 结识张昭周瑜, 誉满江东.",},
        [26] = {26,"二十六回","酣战太史慈","主公酣斗太史慈, 大战严白虎, 助孙策平定江东.",},
        [27] = {27,"二十七回","神医华佗","主公助孙权守宣城, 周泰为救孙权身中数枪, 主公请来神医华佗为其医治, 令孙权, 周泰感激不已.",},
        [28] = {28,"二十八回","许褚投曹","主公往陈地剿灭黄巾余党, 巧遇许褚, 许褚有倒拖牛尾之勇, 主公将许褚引荐给曹操, 曹操大为欢喜, 许褚得虎痴之名.",},
        [29] = {29,"二十九回","宛城之战","主公助曹操征宛城, 张绣不敌而降, 却因邹氏倒戈, 夜袭曹营, 典韦战死, 主公力战张绣, 救出曹操.",},
        [30] = {30,"三十回","大败张绣","主公助曹操大败张绣, 夏侯惇与于禁带兵来援, 于禁不惧谣言, 持军严整, 主公对于禁赞叹不已, 结为知己.",},
        [31] = {31,"三十一回","袁术称帝","袁术于寿春称帝, 众叛亲离, 引起天下愤慨.主公号召曹操吕布刘备共击袁术, 大败袁术, 名动天下.",},
        [32] = {32,"三十二回","一统六郡","主公助孙策袭取庐江, 一统江东六郡, 威震东吴.",},
        [33] = {33,"三十三回","二乔之美","主公遇江东二乔, 大小乔绝世双姝, 天香国色, 人生快哉!",},
        [34] = {34,"三十四回","江东鼎盛","主公劝说孙策决裂袁术, 义举名扬江东, 鲁肃等江东英才闻主公英名, 皆来投靠.",},
        [35] = {35,"三十五回","割发代首","主公建议曹操先征张绣, 再定河北.征张绣途中, 曹操马匹受惊, 践踏麦田, 主公帮曹操割发代首, 巧妙化解局面.",},
        [36] = {36,"三十六回","拔矢啖睛","吕布攻打刘备, 曹操派夏侯惇领兵支援.夏侯惇与高顺军相遇, 被箭矢射中左眼, 主公及时赶到救下夏侯惇, 夏侯惇感激不已, 留拔矢啖睛典故.",},
        [37] = {37,"三十七回","水淹下邳","吕布丢了徐州, 仅留下邳一城.主公水淹下邳, 围困吕布, 大败张辽, 下邳城中民心不稳, 侯成偷马来献.",},
        [38] = {38,"三十八回","白门楼","主公与吕布决战白门楼, 擒获吕布, 威名远播.",},
        [39] = {39,"三十九回","幽州之战","主公往幽州救公孙瓒, 公孙瓒宁为玉碎不为瓦全, 自焚而死.一代名将公孙瓒就此陨落, 令人惋惜.",},
        [40] = {40,"四十回","许田打围","刘备被天子封刘皇叔, 主公与天子猎于许田, 曹操纵马越天子而出, 野心暴露, 众人大惊.",},
        [41] = {41,"四十一回","衣带诏","汉献帝用鲜血写出诏书缝在衣带里, 秘密传给董承.董承邀主公, 刘备等, 密谋诛曹操.",},
        [42] = {42,"四十二回","青梅煮酒","主公, 曹操, 刘备, 青梅煮酒论英雄, 豪气千云, 曹操惧主公威名, 心生忌惮.",},
        [43] = {43,"四十三回","刘备脱困","刘备请令拦截袁术, 曹操派人追击, 主公大败许褚, 智斗郭嘉, 成功助刘备脱逃.",},
        [44] = {44,"四十四回","袁术之死","袁术兵犯徐州, 主公斩杀纪灵, 击败袁术, 袁术恼羞成怒吐血而亡, 袁术的玉玺最终归曹操所有.",},
        [45] = {45,"四十五回","关羽斩车胄","衣带诏事发, 曹操杀吉平董承, 主公助刘备离开曹操, 斩车胄, 夺徐州.",},
        [46] = {46,"四十六回","关张擒王刘","主公助关羽张飞擒下王刘二将, 妙计百出, 令人赞叹, 曹操恼怒不已.",},
        [47] = {47,"四十七回","袁绍宣战曹操","主公采取围魏救赵之计, 入冀州劝说袁绍宣战曹操, 袁曹大战拉开序幕.",},
        [48] = {48,"四十八回","贾诩降曹","主公遇贾诩, 败张绣, 袁曹大战一触即发.",},
        [49] = {49,"四十九回","小沛之战","主公助刘备守小沛, 对战曹军大将, 先后击败夏侯惇, 张辽, 令曹军胆寒不已.",},
        [50] = {50,"五十回","白马之围","主公助关羽大战袁军, 先后斩杀颜良, 文丑两员袁绍大将, 威震天下.",},
        [51] = {51,"五十一回","过五关斩六将","主公助关羽逃离曹营, 过五关斩六将, 曹军心惊胆战.",},
        [52] = {52,"五十二回","千里走单骑","主公千里走单骑, 收服周仓廖化关平, 与关羽切磋, 龙争虎斗, 风云际会.",},
        [53] = {53,"五十三回","古城相聚","主公协助关羽成功与刘备汇合, 四兄弟相聚, 主公豪气千云, 挑战赵云, 赵云自叹不如.",},
        [54] = {54,"五十四回","怒斩于吉","主公再游江东, 助孙策斩杀于吉, 威震江东.",},
        [55] = {55,"五十五回","孙策遇刺","孙策遇刺身亡, 主公嘱托江东文臣武将, 助孙权坐领江东, 孙权感激不已.",},
        [56] = {56,"五十六回","孙权纳贤","主公与江东文臣武将切磋, 战鲁肃, 赢周瑜, 英气逼人, 众人惊叹不已.",},
        [57] = {57,"五十七回","官渡之战","官渡之战, 主公挑战袁绍大军, 先后败审配, 田丰, 沮授等数员大将.",},
        [58] = {58,"五十八回","火烧乌巢","主公助曹操火烧乌巢, 大败袁绍, 两人尽弃前嫌, 携手共战袁绍.",},
        [59] = {59,"五十九回","张郃倒戈","主公再入袁绍大军, 力劝张郃投奔曹操, 张郃被主公所感, 弃暗投明, 再择明主.",},
        [60] = {60,"六十回","仓亭之战","程昱献十面埋伏之计, 主公助曹操仓亭之战大败袁绍, 与曹操诸将共贺切磋, 战无不胜, 令人惊叹.",},
        [61] = {61,"六十一回","袁绍吐血","主公败大将审配, 赢谋士逢纪, 战袁绍继承人袁尚, 连战连胜, 袁绍受到惊吓, 吐血而死, 袁尚袁谭溃逃.",},
        [62] = {62,"六十二回","司马懿装病","曹操正任司空, 听到司马懿的名声后, 征召他到府中任职.司马懿借口自己有风痹病, 身体不能起居, 婉拒曹操.主公十分好奇, 前往查看, 司马懿讲明实情, 并对主公欣赏不已.",},
        [63] = {63,"六十三回","曹冲称象","孙权向朝廷进献一头大象, 曹操想知道大象有多重, 在主公的提示下, 神童曹冲想到了用船来称重的办法.",},
        [64] = {64,"六十四回","水淹冀州","主公献计决漳河之水淹冀州, 助曹操攻下冀州, 许攸自恃功高, 被许褚所杀.",},
        [65] = {65,"六十五回","纳甄姬","主公助曹操攻破邺城, 入袁府, 结识知名美人甄姬, 甄姬心仪曹植, 曹操却故意将甄姬许配给曹丕.",},
        [66] = {66,"六十六回","遗计定辽东","袁尚, 袁熙逃入乌桓, 主公与郭嘉提议远征辽东, 并大胜而归, 最终郭嘉因操劳过度英年早逝, 主公与曹操心痛不已.",},
        [67] = {67,"六十七回","铜雀台","主公与曹操闲庭信步, 从一道金光处掘出一铜雀, 曹植提议建设铜雀台, 曹操心甚喜之, 野心外露.",},
        [68] = {68,"六十八回","文姬归汉","主公受曹操所托, 从匈奴将大才女蔡文姬接回, 蔡文姬对主公感激不已.",},
        [69] = {69,"六十九回","司马懿出仕","曹操废除三公, 自任丞相, 并征召司马懿为官, 主公与司马懿相谈盛欢, 司马懿对主公敬佩不已.",},
        [70] = {70,"七十回","华佗遇难","曹操因头痛病请华佗医治, 华佗提出要开颅治病, 曹操疑心华佗对自己不利, 欲将华佗处死, 主公助华佗逃脱, 隐居荆襄.",},
        [71] = {71,"七十一回","跃马过檀溪","主公往荆襄相助刘备, 刘备自觉老之将至而功业未建, 感慨髀肉横生, 主公激励刘备将来必有所成.刘备劝说刘表攻打曹操, 刘表立意自守, 而无四方之志.正遇蔡夫人蔡瑁欲杀刘备, 主公助刘备骑的卢, 跃马过檀溪, 成功逃脱.",},
        [72] = {72,"七十二回","徐庶遇英主","主公偶遇水镜先生司马徽, 与徐庶切磋武艺, 主公将徐庶引荐给刘备, 护送刘备前往新野.",},
        [73] = {73,"七十三回","三顾茅庐","曹仁布下八门金锁阵, 徐庶传授破阵之法, 主公领兵破阵, 大败曹仁.曹操接走徐庶之母, 逼徐庶离开刘备前往曹营, 临行前, 徐庶向刘备推荐诸葛亮.主公和刘备三顾茅庐, 请诸葛出世.",},
        [74] = {74,"七十四回","甘宁归吴","主公游历江东, 劝孙权收降甘宁, 并出手击杀黄祖, 使孙权得报杀父大仇, 孙权对主公感激不已.",},
        [75] = {75,"七十五回","求娶月英","主公助刘琦逼诸葛献计, 主公助诸葛求娶才女黄月英, 留下一段佳话.",},
        [76] = {76,"七十六回","火烧博望坡","曹军攻新野, 主公用诸葛亮之计, 单挑夏侯惇, 火烧博望坡, 曹军溃逃千里.",},
        [77] = {77,"七十七回","曹操斩孔融","夏侯惇败回许昌, 曹操亲自领兵攻打刘备, 主公前往劝说, 曹操一意孤行, 斩杀孔融, 经此事后, 主公与曹操彻底决裂.",},
        [78] = {78,"七十八回","荆州之变","刘表病逝, 蔡夫人假写遗嘱, 令次子刘琮为荆州之主.刘琮预向曹操献降, 主公教训了刘琮蔡瑁等人, 前往阻拦曹操大军.",},
        [79] = {79,"七十九回","火烧新野","刘备放弃新野, 到樊城以避曹军.主公用诸葛之计, 等曹仁引军进新野城中驻扎时, 夜来时分用火攻, 令曹仁大败, 主公遇大将魏延, 与之切磋, 魏延对主公钦佩不已.",},
        [80] = {80,"八十回","携民渡江","曹操派于禁杀刘琮蔡夫人, 并派徐庶劝降主公, 徐庶念及旧情, 告诉主公曹军大军将至, 主公与刘备转投江陵, 数万百姓愿意追随, 与主公同行.",},
        [81] = {81,"八十一回","单骑救主","刘备妻儿在大军中失散, 主公前去寻找, 恰遇赵云将军前来接应, 两人一同救出阿斗, 交于刘备, 刘备感叹, 为此竖子, 几损四弟与子龙!",},
        [82] = {82,"八十二回","大闹长坂坡","曹操攻打荆州, 主公在乱军中救回阿斗, 张飞在当阳长板桥接应.曹军见张飞横矛立目, 竟无人敢与之对抗.张飞一声大吼, 喝得桥断水倒流, 曹将夏侯杰竟被吓死, 曹军顿时大乱, 纷纷逃去.",},
        [83] = {83,"八十三回","舌战群儒","主公与诸葛亮乘船前往江东联吴破曹, 遭到东吴诸谋士的责难, 最后都被诸葛亮一一反驳, 哑口无言.",},
        [84] = {84,"八十四回","智激周瑜","舌战群儒后主公与孔明来见周瑜, 周瑜假意和鲁肃争吵, 主公用激将法, 称曹操欲得周瑜之妻小乔, 周瑜大怒, 终于愿意联刘抗曹.",},
        [85] = {85,"八十五回","孙刘联盟","孙权有些犹豫, 主公刻意与赵云关羽切磋, 又与诸葛谈古论今, 尽显文韬武略英姿, 孙权最终下定决心与刘备联盟, 共同抵抗曹操.",},
        [86] = {86,"八十六回","蒋干中计","主公夜查曹营, 发现懂水军的蔡瑁, 张允得到重用.主公素知曹操疑心病重, 利用蒋干, 定下反间计, 曹操果然中计斩杀蔡张二将.",},
        [87] = {87,"八十七回","草船借箭","孙刘联盟箭矢急缺, 周瑜让诸葛赶制十万支箭.在诸葛的计策下, 主公领兵前往曹营, 在大雾天掩护下, 草船借箭, 立下奇功.",},
        [88] = {88,"八十八回","苦肉计","黄盖受命诈降, 为了取信于曹操, 周瑜故意痛打黄盖一顿, 让黄盖假装气愤而投敌.",},
        [89] = {89,"八十九回","铁索连环","蒋干将庞统引荐给曹操, 曹操苦无水军作战经验, 庞统建议铁索连环, 却被徐庶识破, 主公主公假扮侍从, 教徐庶脱身之法.",},
        [90] = {90,"九十回","曹操赋诗","曹营大小船只俱已铁索连环, 稳如平地, 曹操大喜, 赋诗短歌行, 主公与庞统伺机离开曹营, 返回江东.",},
        [91] = {91,"九十一回","借东风","周瑜决定火攻曹营, 但一直刮西北风, 周瑜病倒.诸葛亮登上七星台, 借东风.周瑜派人截杀诸葛亮, 主公保护诸葛安然返回夏口.",},
        [92] = {92,"九十二回","火烧赤壁","黄盖诈降曹操, 十几艘火船借着东南风撞入曹操战船营, 主公率众将火烧赤壁, 重创曹操, 从此形成曹, 孙, 刘三方鼎立的局面.",},
        [93] = {93,"九十三回","关羽立军令状","赤壁之后, 刘备大营中, 军师诸葛亮调兵遣将, 绞杀曹操残余兵马, 独独不派遣关羽.主公为关羽抱不平, 令关羽感激不已.",},
        [94] = {94,"九十四回","华容道","赤壁后曹操仓皇败逃, 诸葛亮派关羽在华容道埋伏.关羽念及旧情, 不顾军令状, 放走曹操, 主公找来刘备替关羽求情.",},
        [95] = {95,"九十五回","曹冲病逝","曹操狼狈不堪, 对主公示软, 主公念在昔日情谊, 护送曹操回许都, 曹冲病重, 主公寻遍名医, 还是没能救活曹冲, 心痛不已.",},
        [96] = {96,"九十六回","袭取夷陵","周瑜到南郡攻打曹仁, 但未能攻克.甘宁奇袭上游的夷陵, 夹击曹仁, 却被曹魏援兵包围, 主公亲自率兵解救甘宁, 击退敌军.",},
        [97] = {97,"九十七回","周瑜大战曹仁","曹仁搦战, 周瑜不顾病疮, 披甲上马, 阵前故意落马, 假传死讯, 诱使曹仁中计.主公与东吴大军一起, 大败曹仁, 曹仁败走襄阳.",},
        [98] = {98,"九十八回","孔明一气公瑾","诸葛亮神机妙算, 让主公在周瑜前取得南郡兵符, 诈调荆州守军来救, 袭取了曹魏的荆州与襄阳, 周瑜听说后气愤难当, 箭伤迸发.",},
        [99] = {99,"九十九回","马良献计","主公向刘备推荐马良, 马良建议表奏刘琦为荆州刺史, 以安民心, 然后南征武陵, 长沙, 桂阳, 零陵四郡, 积收钱粮, 以为根本.",},
        [100] = {100,"一百回","智取零陵","主公力战邢道荣, 用智谋取下零陵郡, 夺得首功, 众将佩服不已, 对其他三郡跃跃欲试.",},
        [101] = {101,"一百零一回","赵云计取桂阳","赵云立下军令状, 与主公径往桂阳, 赵范先以美人计对付赵云, 赵云丝毫不为所动；后以诈降计对付赵云, 但是被主公识破, 终取桂阳.",},
        [102] = {102,"一百零二回","张飞取武陵","张飞见赵云主公各得一郡, 性急不已, 也立下军令状去取武陵, 主公和星彩暗中协助, 助张飞一举夺得武陵.",},
        [103] = {103,"一百零三回","关羽义释黄忠","长沙太守韩玄, 平生性急, 轻于杀戮, 众皆恶之.关羽欲取长沙, 带本部五百名校刀手前往, 诸葛担心关羽轻敌, 让主公前往协助.主公与韩玄手下大将黄忠连战取胜, 关羽义释黄忠, 传千古佳话.",},
        [104] = {104,"一百零四回","收降魏延","韩玄怀疑黄忠与关羽外通内联, 欲杀黄忠, 魏延及时赶到杀韩玄救黄忠, 投拜主公.主公引魏延来见刘备诸葛, 诸葛观其脑后有反骨, 威慑敲打一番成功收降魏延.",},
        [105] = {105,"一百零五回","刘备借荆州","刘备获得荆州四郡, 但南郡仍然属于孙权之手, 主公亲往寿春, 与鲁肃联合, 陈明厉害, 将南郡借给刘备.",},
        [106] = {106,"一百零六回","首战合肥","曹操于赤壁大败, 但大军仍驻扎于荆州北部.孙权派周瑜攻打江陵的曹仁, 派张昭进攻九江的当涂, 而自己亲自进攻合肥的张辽, 主公亲往协助孙权, 大败张辽.",},
        [107] = {107,"一百零七回","太史慈中计","张辽派人来下战书, 孙权大怒亲自领兵应战, 却被张辽杀了宋谦, 太史慈领兵五千去报仇, 与同乡戈丁里应外合攻城, 却被张辽识破, 太史慈身中数箭, 壮烈就义.",},
        [108] = {108,"一百零八回","鲁肃讨还荆州","刘琦病逝后, 鲁肃奉命来讨还荆州, 主公陈明利害, 提出帮刘备取得西川, 即归还荆州, 鲁肃踌躇而归东吴.",},
        [109] = {109,"一百零九回","甘露寺","刘备的甘夫人病逝, 周瑜提议孙刘联姻, 诸葛应下, 暗中给了主公三个锦囊.主公护送刘备来到东吴求亲, 孙权暗中埋伏刀斧手, 被主公识破, 巧妙化解.",},
        [110] = {110,"一百一十回","驻马坡双雄会","刘备, 主公与孙权暗中较劲, 砍恨石于殿前, 纵马立于山坡之上, 切磋武艺, 比试马术, 仰望山河, 豪情万丈.",},
        [111] = {111,"一百十一回","喜结良缘","主公担心刘备被害, 设下计策让吴国太保护刘备.主公助刘备通过孙尚香的重重考验, 刘备终与孙尚香喜结良缘, 洞房花烛夜, 人生得意时, 好不惬意.",},
        [112] = {112,"一百十二回","智激孙夫人","刘备成亲后, 沉溺声色, 不思荆州, 主公打开诸葛第二个锦囊, 警醒刘备, 智激孙夫人.主公护送刘备回荆州, 大败前来阻拦的东吴诸将, 英姿勃发, 无与伦比.",},
        [113] = {113,"一百十三回","二气周瑜","周瑜领兵来拦刘备与主公, 孔明早已派人接应, 主公与关羽赵云诸将切磋, 并大败吴兵, 众人齐道: 周郎妙计安天下,赔了夫人又折兵.周瑜闻言病情加重.",},
        [114] = {114,"一百十四回","曹操颁求贤令","曹操自赤壁战败后, 常思报仇, 主公前往劝说曹操局势已定不要轻进, 在主公的提议下, 曹操颁求贤令, 广招天下人才.",},
        [115] = {115,"一百十五回","大宴铜雀台","建安十五年春, 铜雀台建成, 曹操大宴铜雀台, 盛邀主公, 主公与曹操诸将切磋武艺, 大展英姿.",},
        [116] = {116,"一百十六回","登台赋","铜雀台落成, 曹操命武将以骑射为乐, 主公提议让文官进献诗章.在众人之中, 曹植第一个交卷, 其文曰登台赋, 从此曹操对曹植寄予厚望.",},
        [117] = {117,"一百十七回","程昱献计","孙刘结亲后, 孙权遣华歆表奏刘备为荆州牧, 曹操闻言手脚慌乱, 程昱献计, 表奏周瑜为南郡太守, 程普为江夏太守, 离间刘孙两家, 主公闻言返回荆州提醒刘备.",},
        [118] = {118,"一百十八回","三气周瑜","周瑜既领南郡, 便遣鲁肃讨荆州, 称取西川实取荆州, 此计被孔明识破.主公提醒周瑜, 真取西川, 曹操必趁虚而入, 周瑜长叹一声, 旧伤复发, 不幸命绝.",},
        [119] = {119,"一百十九回","卧龙哭周瑜","孔明赴东吴吊丧, 主公领兵护送, 孔明亲自祭酒, 诵读祭文: 呜呼公谨, 不幸夭亡；惊闻噩耗, 痛断肝肠…祭毕, 孔明伏地大哭, 泪如泉涌, 令鲁肃感伤不已.",},
        [120] = {120,"一百二十回","庞统归蜀","鲁肃向孙权推荐庞统, 不料孙权嫌弃庞统面丑, 主公劝说庞统往荆州投刘备, 自此, 卧龙, 凤雏尽归刘备, 荆州人才济济, 如日方升.",},
        [121] = {121,"一百二一回","马腾遇害","曹操打算南征, 恐西凉入寇, 于是将马腾诱入京师, 马腾当初受献帝衣带诏, 入京后与黄奎密谋行刺曹操, 不幸因黄奎小妾春香事泄, 致使马腾遇害.",},
        [122] = {122,"一百二二回","陈群献计","曹操杀了马腾, 决议南征, 忽闻刘备欲取西川, 陈群献计起兵东吴, 刘备必救援.此计早被诸葛勘破, 诸葛派主公前往西凉, 往结马超.",},
        [123] = {123,"一百二三回","马超攻长安","马超韩遂起兵二十万, 杀奔长安, 长安郡守钟繇引军拒敌, 长安城郭坚固, 久攻不下.主公灵机一动, 献上奇计, 带头冲锋助马超攻下长安.",},
        [124] = {124,"一百二四回","潼关之战","曹操知失了长安, 不敢复议南征, 派徐晃曹洪带人马替钟繇紧守潼关, 不得出战.马超领军痛骂曹操, 故意激怒曹洪杀下关, 主公趁机杀出, 一举拿下潼关.",},
        [125] = {125,"一百二五回","割须弃袍","曹操进兵直叩潼关, 不敌马超战败而逃, 马超引百余骑来捉曹操, 后人有诗曰: 潼关战败望风逃, 孟德怆惶脱锦袍.剑割髭髯应丧胆, 马超声价盖天高.",},
        [126] = {126,"一百二六回","许褚裸衣斗马超","许褚下战书单搦马超决战, 两人斗了一百余合, 胜负不分.许褚性起, 飞回阵中, 卸了盔甲, 浑身筋突, 赤体提刀, 翻身上马来与马超决战, 两军皆大骇.",},
        [127] = {127,"一百二七回","反间韩遂","曹操依贾诩的抹书之计, 离间马超韩遂, 马超韩遂果然中计, 互相残杀, 曹操乘机取胜, 主公于紧要关头救出马超.",},
        [128] = {128,"一百二八回","汉宁王张鲁","曹操大败西凉的消息传入汉中, 惊动了汉宁太守张鲁, 张鲁打算起兵夺取益州后称汉宁王, 益州牧刘璋得到消息后, 派张松往许都劝说曹操兴兵取汉中.",},
        [129] = {129,"一百二九回","孟德新书","张松来到许都, 准备把西川地图献给曹操, 杨修与张松舌辩, 张松竟将孟德新书看一遍即全文背诵, 但曹操嫌弃张松相貌猥琐, 不予礼遇, 并乱棍打出.",},
        [130] = {130,"一百三十回","张松献西川图","张松连夜逃出许都, 途经荆州, 受到刘备和主公盛情款待, 张松将西川地图献给主公, 主公前往益州, 说服法正, 孟达做内应, 为刘备入西川做好准备.",},
        [131] = {131,"一百三一回","庞统议取西蜀","法正来荆州劝说备入川, 庞统提议在宴会上除掉刘璋, 刘备不忍, 主公建议刘备入葭萌关抵御张鲁, 犹豫的刘备终于同意入川.",},
        [132] = {132,"一百三二回","截江救阿斗","听闻刘备入川, 孙权预备截住刘备, 并谎称吴国太病重将孙尚香接回东吴, 主公识破东吴计谋, 派赵云截江救下阿斗.",},
        [133] = {133,"一百三三回","空盒杀荀彧","曹操请封魏公, 荀彧坚决反对, 正值曹操兴兵江南, 命荀彧跟从, 荀彧托病留在寿春.曹操派人送给荀彧一个空盒, 荀彧知道曹操想杀他, 便服毒自杀.",},
        [134] = {134,"一百三四回","生子当如孙仲谋","建安十八年, 曹操率领四十万大军进攻东吴濡须口, 孙权率兵七万抵抗, 主公前往协助孙权.曹操见东吴将士纪律严明, 孙权英武异常, 感叹生子当如孙仲谋.",},
        [135] = {135,"一百三五回","庞统三计","因曹操进犯濡须口, 刘备遣主公往成都求军马钱粮, 刘璋只给老弱残兵, 刘备大怒, 庞统献上三条计策, 主公劝刘备取中计, 进取西蜀, 一马平川.",},
        [136] = {136,"一百三六回","取涪关","主公护送刘备回涪城, 请杨怀, 高沛出关相别.两人预刺杀刘备, 反被主公所杀, 主公用二人所带兵马引路, 攻入涪关, 蜀兵皆降, 主公旗开得胜, 意气风发.",},
        [137] = {137,"一百三七回","攻雒城","刘备欲取雒城, 黄忠和魏延都想取得头功, 庞统命二人分别攻打泠苞, 邓贤军寨, 魏延贪功, 想独打两寨, 结果狼狈而逃, 幸得主公与黄忠相救.",},
        [138] = {138,"一百三八回","落凤坡","诸葛亮观天象, 送信提醒刘备, 而庞统却误会诸葛争功, 与刘备兵分两路攻打雒城, 刘备将的卢马送与庞统, 庞统骑的卢过落凤坡, 中埋伏, 不幸陨落.",},
        [139] = {139,"一百三九回","痛哭庞统","七夕佳节, 孔明在荆州, 夜观星象见亮星坠落, 痛哭庞统, 刘备派主公送信, 请诸葛军师求援, 孔明将荆州托付于关羽.",},
        [140] = {140,"一百四十回","义释严颜","张飞领军攻打巴郡, 巴郡太守严颜坚守不出, 张飞几番进攻, 都被乱箭射回, 主公巧施妙计, 令军士四散砍柴寻路, 引军伏击, 生擒严颜, 占领巴城.",},
        [141] = {1001,"第一回","英雄出世","",},
        [142] = {1002,"第二回","黄巾起义","",},
        [143] = {1003,"第三回","洛阳之乱","",},
        [144] = {1004,"第四回","孟德献刀","",},
        [145] = {1005,"第五回","十八路诸侯","",},
        [146] = {1006,"第六回","四英战吕布","",},
        [147] = {1007,"第七回","孙坚得玉玺","",},
        [148] = {1008,"第八回","跨江击刘表","",},
        [149] = {1009,"第九回","荥阳之战","",},
        [150] = {1010,"第十回","凤仪亭","",},
        [151] = {1011,"十一回","犯长安","",},
        [152] = {1012,"十二回","白马将军","",},
        [153] = {1013,"十三回","界桥之战","",},
        [154] = {1014,"十四回","兖州纳贤","",},
        [155] = {1015,"十五回","祸临徐州","",},
        [156] = {1016,"十六回","太史慈送信","",},
        [157] = {1017,"十七回","借赵云","",},
        [158] = {1018,"十八回","濮阳之乱","",},
        [159] = {1019,"十九回","三让徐州","",},
        [160] = {1020,"二十回","东归洛阳","",},
        [161] = {1021,"二十一回","挟天子令诸侯","",},
        [162] = {1022,"二十二回","辕门射戟","",},
        [163] = {1023,"二十三回","虎步江淮","",},
        [164] = {1024,"二十四回","张飞夺马","",},
        [165] = {1025,"二十五回","小霸王孙策","",},
        [166] = {1026,"二十六回","酣战太史慈","",},
        [167] = {1027,"二十七回","神医华佗","",},
        [168] = {1028,"二十八回","许褚投曹","",},
        [169] = {1029,"二十九回","宛城之战","",},
        [170] = {1030,"三十回","大败张绣","",},
        [171] = {1031,"三十一回","袁术称帝","",},
        [172] = {1032,"三十二回","一统六郡","",},
        [173] = {1033,"三十三回","二乔之美","",},
        [174] = {1034,"三十四回","江东鼎盛","",},
        [175] = {1035,"三十五回","割发代首","",},
        [176] = {1036,"三十六回","拔矢啖睛","",},
        [177] = {1037,"三十七回","水淹下邳","",},
        [178] = {1038,"三十八回","白门楼","",},
        [179] = {1039,"三十九回","幽州之战","",},
        [180] = {1040,"四十回","许田打围","",},
        [181] = {1041,"四十一回","衣带诏","",},
        [182] = {1042,"四十二回","青梅煮酒","",},
        [183] = {1043,"四十三回","刘备脱困","",},
        [184] = {1044,"四十四回","袁术之死","",},
        [185] = {1045,"四十五回","关羽斩车胄","",},
        [186] = {1046,"四十六回","关张擒王刘","",},
        [187] = {1047,"四十七回","袁绍宣战曹操","",},
        [188] = {1048,"四十八回","贾诩降曹","",},
        [189] = {1049,"四十九回","小沛之战","",},
        [190] = {1050,"五十回","白马之围","",},
        [191] = {1051,"五十一回","过五关斩六将","",},
        [192] = {1052,"五十二回","千里走单骑","",},
        [193] = {1053,"五十三回","古城相聚","",},
        [194] = {1054,"五十四回","怒斩于吉","",},
        [195] = {1055,"五十五回","孙策遇刺","",},
        [196] = {1056,"五十六回","孙权纳贤","",},
        [197] = {1057,"五十七回","官渡之战","",},
        [198] = {1058,"五十八回","火烧乌巢","",},
        [199] = {1059,"五十九回","张郃倒戈","",},
        [200] = {1060,"六十回","仓亭之战","",},
        [201] = {1061,"六十一回","袁绍吐血","",},
        [202] = {1062,"六十二回","司马懿装病","",},
        [203] = {1063,"六十三回","曹冲称象","",},
        [204] = {1064,"六十四回","水淹冀州","",},
        [205] = {1065,"六十五回","纳甄姬","",},
        [206] = {1066,"六十六回","遗计定辽东","",},
        [207] = {1067,"六十七回","铜雀台","",},
        [208] = {1068,"六十八回","文姬归汉","",},
        [209] = {1069,"六十九回","司马懿出仕","",},
        [210] = {1070,"七十回","华佗遇难","",},
        [211] = {1071,"七十一回","跃马过檀溪","",},
        [212] = {1072,"七十二回","徐庶遇英主","",},
        [213] = {1073,"七十三回","三顾茅庐","",},
        [214] = {1074,"七十四回","甘宁归吴","",},
        [215] = {1075,"七十五回","求娶月英","",},
        [216] = {1076,"七十六回","火烧博望坡","",},
        [217] = {1077,"七十七回","曹操斩孔融","",},
        [218] = {1078,"七十八回","荆州之变","",},
        [219] = {1079,"七十九回","火烧新野","",},
        [220] = {1080,"八十回","携民渡江","",},
        [221] = {1081,"八十一回","单骑救主","",},
        [222] = {1082,"八十二回","大闹长坂坡","",},
        [223] = {1083,"八十三回","舌战群儒","",},
        [224] = {1084,"八十四回","智激周瑜","",},
        [225] = {1085,"八十五回","孙刘联盟","",},
        [226] = {1086,"八十六回","蒋干中计","",},
        [227] = {1087,"八十七回","草船借箭","",},
        [228] = {1088,"八十八回","苦肉计","",},
        [229] = {1089,"八十九回","铁索连环","",},
        [230] = {1090,"九十回","曹操赋诗","",},
        [231] = {1091,"九十一回","借东风","",},
        [232] = {1092,"九十二回","火烧赤壁","",},
        [233] = {1093,"九十三回","关羽立军令状","",},
        [234] = {1094,"九十四回","华容道","",},
        [235] = {1095,"九十五回","曹冲病逝","",},
        [236] = {1096,"九十六回","袭取夷陵","",},
        [237] = {1097,"九十七回","周瑜大战曹仁","",},
        [238] = {1098,"九十八回","孔明一气公瑾","",},
        [239] = {1099,"九十九回","马良献计","",},
        [240] = {1100,"一百回","智取零陵","",},
        [241] = {2001,"","貂蝉传","貂蝉, 四大美人之一, 闭月之貌, 倾国倾城, 为报答王允的养育之恩, 献身用美人计除掉董卓.",},
        [242] = {2002,"","何进传","何进, 字遂高, 其妹有宠于灵帝被立为皇后, 黄巾起义时, 何进为大将军, 总镇京师.",},
        [243] = {2003,"","华雄传","华雄, 董卓帐下一员虎将, 十八路诸侯讨伐董卓时, 被关羽所杀, 成就温酒斩华雄的一段传奇.",},
        [244] = {2004,"","荀彧传","荀彧, 字文若, 清秀通雅, 有王佐之才, 为曹操规划了统一北方的蓝图, 敬称荀令君.",},
        [245] = {2005,"","张角传","张角, 黄巾军领袖, 太平道的创始人, 自称天公将军, 率领群众发动起义, 史称黄巾起义.",},
        [246] = {2006,"","孙坚传","孙坚, 字文台, 东吴霸业奠基人, 被誉为江东烈虎, 擅使大刀, 喜戴红头巾, 曾讨伐黄巾及董卓.",},
        [247] = {2007,"","太史慈传","太史慈, 字子义, 东吴名将, 弓马熟练, 箭法精良, 尽义守信, 原为刘繇部下, 后追随孙策.",},
        [248] = {2008,"","大乔传","大乔, 三国知名美人, 通音律, 晓诗文, 肌肤胜雪, 眉目如画, 浅笑盈盈即十分动人.",},
        [249] = {2009,"","公孙瓒传","公孙瓒, 字伯圭, 幽州军阀.相貌俊美, 机智善辩, 对抗北方游牧民族, 勇猛好战, 威震边疆.",},
        [250] = {2010,"","贾诩传","贾诩, 字文和, 著名谋士, 因献计李傕郭汜反攻长安, 被称为毒士.后降曹操, 成为曹魏重要谋臣.",},
        [251] = {2011,"","徐庶传","徐庶, 字元直, 曾仕官于刘备, 后因曹操囚禁其母而不得不弃备投操, 临行前向刘备推荐诸葛亮.",},
        [252] = {2012,"","张星彩传","张星彩, 张飞之女, 相传曾拜师华佗学习医术, 长大后嫁给蜀国后主刘禅, 被封为皇后.",},
        [253] = {2013,"","夏侯渊传","夏侯渊, 字妙才, 曹魏八虎骑之一.擅长率骑兵千里奔袭作战, 来去如风, 令敌人防不胜防!",},
        [254] = {2014,"","华佗传","华佗, 字元化, 中国古代著名神医.医术高超, 擅长外科, 精于手术, 被誉为外科鼻祖.",},
        [255] = {2015,"","孙策传","孙策, 字伯符, 被称江东小霸王, 容貌俊美, 性格阔达, 声名远播, 后与周瑜结拜.",},
        [256] = {2016,"","袁术传","袁术, 字公路, 淮南最强诸侯.因偶得玉玺, 妄自称帝, 遭孙策吕布曹操三方打击, 后呕血而死.",},
        [257] = {2017,"","曹植传","曹植, 字子建, 才华横溢, 卓尔不群, 代表作有洛神赋白马篇等, 建安七子代表人物.",},
        [258] = {2018,"","祝融传","祝融, 传说为火神祝融氏后裔.武艺超群, 善使飞刀, 南蛮王孟获之妻, 后随孟获投降蜀汉.",},
        [259] = {2019,"","孔融传","孔融, 字文举, 汉末文学家, 孔子的二十世孙.年少时聪明机灵, 留有孔融让梨的典故.",},
        [260] = {2020,"","郭嘉传","郭嘉, 字奉孝, 魏国早期最杰出的谋士, 曹魏五谋臣之一.官至军师祭酒.才智过人, 奇计百出.",},
        [261] = {2021,"","曹冲传","曹冲, 字仓舒, 曹操之子.从小聪明仁爱, 与众不同, 深受曹操喜爱, 留有曹冲称象的典故.",},
        [262] = {2022,"","董卓传","董卓, 字仲颖, 东汉末年凉州军阀, 后入洛阳成为权臣, 官至太师, 权倾朝野.",},
        [263] = {2023,"","凌统传","凌统, 字公绩, 东吴名将, 凌操之子.曾随孙权征讨江夏, 率先登入夏口, 斩杀黄祖先锋, 立下大功.",},
        [264] = {2024,"","于吉传","于吉, 东汉末年知名道士.曾在吴郡, 会稽一带为百姓治病, 甚得人心, 孙策怒斩之.",},
        [265] = {2025,"","步练师传","步练师, 孙权的宠妃, 美丽温柔, 性格和善, 品行端庄, 待人宽容, 去世后, 被追封皇后.",},
        [266] = {2026,"","袁绍传","袁绍, 字本初, 汉末河北最强诸侯.出身名门, 袁氏有四世三公之称, 却在官渡之战败于曹操, 后病逝.",},
        [267] = {2027,"","陈宫传","陈宫, 字公台, 曾跟随曹操, 后成为吕布帐下首席谋士.性情刚直, 足智多谋, 命运多舛.",},
        [268] = {2028,"","于禁传","于禁, 字文则, 曹魏五子良将之一.本为鲍信部将, 后属曹操, 在败给关羽后投降, 一代名将晚节不保.",},
        [269] = {2029,"","夏侯惇传","夏侯惇[dūn], 字元让, 曹魏武将, 曹魏八虎骑之一, 夏侯渊族兄, 留[拔矢啖睛]的知名典故.",},
        [270] = {2030,"","蔡文姬传","蔡琰, 字文姬, 三国知名才女, 东汉大文学家蔡邕[yōng]的女儿, 博学多才, 擅长文学, 音乐, 书法.",},
        [271] = {2031,"","许褚传","许褚[chǔ], 字仲康, 曹操武将.年轻时曾单手倒拖牛尾行走百步, 吓退贼寇.",},
        [272] = {2032,"","阿斗传","蜀汉后主刘禅[shàn], 字公嗣[sì], 小名阿斗, 蜀汉第二位皇帝, 留有乐不思蜀的典故.",},
        [273] = {2033,"","张郃传","张郃[hé], 字儁乂[jùn yì], 曹魏五子良将之一.曾仕袁绍, 官渡之战中投效曹操.",},
        [274] = {2034,"","黄盖传","黄盖, 字公覆, 历仕孙坚, 孙策, 孙权三任.为人严肃, 勇猛善战, 是赤壁之战主要功臣之一.",},
        [275] = {2035,"","法正传","法正, 字孝直, 刘备帐下谋士.原为刘璋部下, 劝说刘璋投降, 后与刘备取汉中, 将夏侯渊斩首.",},
        [276] = {2036,"","鲁肃传","鲁肃, 字子敬, 东吴大将, 曾任大都督.体貌魁伟, 性格豪爽, 喜读书, 好骑射, 家财万贯, 仗义疏财.",},
        [277] = {2037,"","庞统传","庞统, 字士元, 号凤雏, 刘备重要谋士, 才智与诸葛亮齐名, 赤壁之战, 献连环计, 助瑜火攻大败曹操.",},
        [278] = {2038,"","张昭传","张昭, 字子布, 东吴重臣.孙策临死前, 将孙权托付给张昭和周瑜, 遗言外事问周瑜, 内事问张昭.",},
        [279] = {2039,"","祢衡传","祢衡, 字正平, 东汉末年文人.年少就有文采和辩才, 但性格刚直高傲, 恃才傲物, 与孔融交好.",},
        [280] = {2040,"","文丑传","文丑, 袁绍帐下大将, 勇冠三军, 颇有威名, 颜良死后, 为颜良报仇心切, 却被关羽赶上斩于马下.",},
        [281] = {2041,"","蔡瑁传","蔡瑁, 字德珪, 东汉末年荆州名族, 刘表病亡后, 拥护刘琮继位, 后降曹操.",},
        [282] = {2042,"","典韦传","典韦, 曹操武将, 身材魁梧, 力大无穷, 能驱赶猛虎.擅使大双戟, 张绣叛变时, 为保护曹操力战而死.",},
        [283] = {2043,"","李傕传","李傕, 字稚然, 董卓心腹部将, 性格勇猛诡谲, 善用兵, 有辩才, 统领西凉精锐部队飞熊军.",},
        [284] = {2044,"","小乔传","小乔, 周瑜之妻, 三国知名美人, 与其姐大乔并称江东二乔.",},
        [285] = {2045,"","王朗传","王朗, 字景兴, 曹魏时期重臣, 曾任司空, 司徒, 经学家.博学多闻, 严谨慷慨, 恭俭节约.",},
        [286] = {2046,"","张让传","张让, 东汉末年宦官, 十常侍之首, 以搜刮暴敛, 骄纵贪婪见称, 灵帝极为宠信.",},
        [287] = {2047,"","邹氏传","邹氏, 东汉末年张济之妻, 张绣之婶.曹操战宛城时, 张绣不敌而降；曹操误听怂恿, 掳占邹氏.",},
        [288] = {2048,"","乐进传","乐进, 字文谦, 曹魏五子良将之一.以胆识英烈而从曹操, 随军多年, 南征北讨, 战功无数.",},
        [289] = {2049,"","李儒传","李儒, 字文优, 三国西凉军阀董卓女婿, 首席谋士, 为董卓所亲信, 算无遗策, 堪称智囊.",},
        [290] = {2050,"","吕灵雎传","吕灵雎, 相传为吕布与貂蝉之女, 美貌不亚于貂蝉, 武艺不亚于父亲, 威风凛凛而寂寥, 勇敢而身先士卒.",},
        [291] = {2051,"","程昱传","程昱, 字仲德, 曹魏五谋臣之一, 参与了攻打吕布, 袁绍, 刘备, 孙权的大部分战事, 一直出谋献策.",},
        [292] = {2052,"","甘宁传","甘宁, 字兴霸, 东吴猛将.少年时好游侠, 头插鸟羽, 身佩铃铛, 披服锦绣, 人称锦帆贼.",},
        [293] = {2053,"","徐晃传","徐晃, 字公明, 曹魏五子良将之一.善使大斧, 曾仕杨奉, 后随曹操转战南北, 功勋颇多.",},
        [294] = {2054,"","马云禄传","马云禄, 马腾之女, 赵云之妻, 马超之妹.个性纯真率直, 自幼习武, 枪术非凡, 寻常男子难以匹敌.",},
        [295] = {2055,"","沮授传","沮授, 袁绍帐下谋士.少有大志, 长于谋略, 经常对袁绍提出良策, 但很多时候袁绍并不听从.",},
        [296] = {2056,"","曹仁传","曹仁, 字子孝, 三国时期曹魏名将, 曹魏八虎骑之一, 治军严谨, 擅长防守.",},
        [297] = {2057,"","孙尚香传","孙尚香, 孙权之妹, 赤壁之战嫁给刘备为妻.她容貌秀丽, 才智敏捷, 桀骜不驯, 巾帼不让须眉.",},
        [298] = {2058,"","卢植传","卢植, 字子干,  东汉末年经学家, 将领.性格刚毅, 品德高尚, 先后担任九江, 庐江太守.",},
        [299] = {2059,"","周泰传","周泰, 字幼平, 东吴重要武将.多次于战乱当中保护孙权的安危, 身上受的伤多达几十处.",},
        [300] = {2060,"","左慈传","左慈, 字元放, 东汉末年知名道士, 精通五经, 占星, 奇门遁甲, 传说能役使鬼神, 一手建立丹鼎派.",},
        [301] = {2061,"","袁谭传","袁谭, 字显思, 袁绍长子, 曾攻破田楷, 孔融, 袁谭因不能继位, 心怀愤恨, 联合曹操共同攻打袁尚.",},
        [302] = {2062,"","甄姬传","甄姬, 三国知名美女, 别称甄洛或甄宓[fú] , 文昭甄皇后.倾国倾城, 风华绝代, 是曹丕的正室妻子.",},
        [303] = {2063,"","诸葛瑾传","诸葛瑾, 字子瑜, 吴国重臣, 诸葛亮之兄, 诸葛恪之父.胸怀宽广, 温厚诚信, 得到孙权的深深信赖.",},
        [304] = {2064,"","黄月英传","黄月英, 诸葛亮之妻, 荆州名士黄承彦之女.相传其美丽无双, 却腼腆害羞, 因此用斗笠轻纱蒙面.",},
        [305] = {2065,"","潘璋传","潘璋, 字文珪, 东吴将领.作战勇猛, 不断升迁, 其一生为孙权东征西讨, 战功无数.",},
        [306] = {2066,"","孙权传","孙权, 字仲谋, 东吴开国皇帝.幼年随兄长孙策平定江东, 后孙策遇刺身亡, 孙权继位成江东之主.",},
        [307] = {2067,"","颜良传","颜良, 袁绍帐下大将, 勇冠三军, 颇有威名, 与文丑有河北双雄之称.",},
        [308] = {2068,"","王异传","王异, 益州刺史赵昂之妻.赵昂到冀城就任, 王异随夫徙居冀城.",},
        [309] = {2069,"","关平传","关平, 蜀汉将领, 关羽之子, 随关羽东征西讨, 武勇过人, 不逊乃父, 曾跟随刘备出征西川, 立下战功.",},
        [310] = {2070,"","孟获传","孟获, 南蛮王, 三国时期南中地区少数民族首领, 被诸葛亮率领大军七擒七纵后降服, 此后不再叛乱.",},
        [311] = {2071,"","汉献帝传","汉献帝, 即刘协, 字伯和, 东汉最后一任皇帝.董卓进京后, 废汉少帝刘辩, 立刘协为皇帝.",},
        [312] = {2072,"","韩当传","韩当, 字义公, 东吴将领.长于弓箭, 骑术并且膂力过人, 历仕孙坚, 孙策, 孙权三代, 功勋卓著.",},
        [313] = {2073,"","张春华传","张春华, 司马懿之妻, 司马昭之母, 后被追为宣穆皇后.少年时就聪慧过人, 足智多谋.",},
        [314] = {2074,"","吕蒙传","吕蒙, 字子明, 东吴名将, 曾任大都督.最出名的功绩是袭取荆州, 击败关羽, 留下白衣渡江典故.",},
        [315] = {2075,"","庞德传","庞德, 字令明, 本为马超部将, 后随曹操.常骑白马驰骋奔杀, 刚毅威武, 勇猛无比.",},
        [316] = {2076,"","关银屏传","关银屏, 美髯公关羽之女, 明艳动人, 神采奕奕, 清丽之中更带着三分英气, 传说关银屏后拜赵云为师.",},
        [317] = {2077,"","关索传","关索, 相传为关羽第三子, 迎娶鲍三娘为妻, 荆州失守后携鲍三娘回归蜀国, 并随同诸葛亮南征.",},
        [318] = {2078,"","陆逊传","陆逊, 字伯言, 东吴大将, 历任吴国大都督, 上大将军, 丞相, 在夷陵击败刘备所率蜀汉军, 一战成名.",},
        [319] = {2079,"","吴国太传","吴国太, 孙坚妻子, 孙尚香的母亲, 三国演义中与乔国老促成刘备与孙尚香的姻缘.",},
        [320] = {2080,"","张辽传","张辽, 字文远, 吕布武将, 后仕曹操, 曹魏五子良将之一, 曾阵斩蹋顿, 击破乌桓.",},
        [321] = {2081,"","杨修传","杨修, 字德祖, 东汉末年文学家.学问渊博, 才高八斗, 曾任曹操丞相府的主簿, 连曹操也自叹不如.",},
        [322] = {2082,"","司马昭传","司马昭, 字子上, 三国时期曹魏权臣, 西晋王朝的奠基人之一.司马懿与张春华次子.",},
        [323] = {2083,"","陈群传","陈群, 字长文, 曹魏重臣, 魏晋南北朝选官制度九品中正制和曹魏律法魏律的主要创始人.",},
        [324] = {2084,"","关兴传","关兴, 字安国, 关羽次子, 蜀汉后期重要将领.从小就有好名声, 诸葛亮十分器重他.",},
        [325] = {2085,"","马岱传","马岱, 马超的从弟, 三国时期蜀汉将领, 早年追随马超大战曹操, 反攻陇上, 围攻成都, 汉中之战等.",},
        [326] = {2086,"","周仓传","周仓, 字元福, 蜀汉大将关羽的护卫.身材高大, 黑面虬髯, 本是黄巾军出身, 后追随关羽征战天下.",},
        [327] = {2087,"","高顺传","高顺, 东汉末年吕布帐下第一猛将, 官至中郎将.为人清白有威严, 不好饮酒, 所统率的部队精锐非常.",},
        [328] = {2088,"","廖化传","廖化, 字元俭, 以果敢刚直著称, 是蜀汉后期的重要将领.相传本为黄巾军, 后投靠刘备, 曾为关羽主簿.",},
        [329] = {2089,"","糜竺传","糜竺, 字子仲, 蜀汉刘备帐下重臣.原为徐州富商, 陶谦病死后, 奉其遗命迎接刘备.",},
        [330] = {2090,"","曹真传","曹真, 字子丹, 曹魏八虎骑之一.其父为曹操募兵时遇害, 遂被曹操收为养子.",},
        [331] = {2091,"","徐盛传","徐盛, 字文向, 东吴大将, 机智善辨, 参加过多起战役.",},
        [332] = {2092,"","程普传","程普, 字德谋, 东吴名将, 历仕孙坚, 孙策, 孙权三代, 被人们尊称为[程公].",},
        [333] = {2093,"","陈登传","陈登, 字元龙, 为人爽朗, 性格沈静, 智谋过人, 陶谦病死时陈登拥戴刘备继任徐州牧.",},
        [334] = {2094,"","邓艾传","邓艾, 字士载, 魏国后期杰出的军事家, 将领.文武全才, 深谙兵法, 多年在曹魏西边战线防备蜀汉姜维.",},
        [335] = {2095,"","孟达传","孟达, 字子度, 扶风郡郿人, 三国时期蜀汉将领.本为刘璋属下, 后降刘备.",},
        [336] = {2096,"","蒋干传","蒋干, 字子翼, 汉末曹魏文臣.历史上的蒋干是当时的名士, 辩论家.",},
        [337] = {2097,"","王允传","王允, 字子师, 东汉末年大臣.出身名门望族, 天资聪颖, 少年时期便出落为一名满腹经纶, 文韬武略无不精通的全才.",},
        [338] = {2098,"","刘表传","刘表, 字景升, 汉末荆州诸侯.姿貌温厚伟壮, 少时知名于世, 名列八俊.",},
        [339] = {2099,"","丁奉传","丁奉, 字承渊, 东吴后期名将.年少时以骁勇善战, 奋勇杀敌, 屡立功勋.",},
        [340] = {2100,"","陆抗传","陆抗, 字幼节, 陆逊次子, 被誉为吴国最后的名将, 二十岁时袭父爵为江陵侯.",},
        [341] = {2101,"","田丰传","田丰, 字元皓, 钜鹿人,  东汉末年袁绍部下谋臣, 官至冀州别驾.",},
        [342] = {2102,"","李严传","李严, 字正方, 三国时期蜀汉重臣, 与诸葛亮同为刘备临终前的托孤之臣.",},
        [343] = {2103,"","蒋钦传","蒋钦, 字公奕, 东吴将领.早年随孙策平定四郡, 讨平黟贼, 被陈寿盛赞为江表之虎臣.",},
        [344] = {2104,"","潘凤传","潘凤, 擅使大斧, 他奉韩馥之命前往汜水关前挑战董卓部下大将华雄, 不敌被斩.",},
        [345] = {2105,"","郭淮传","郭淮, 魏国后期名将, 夏侯渊战死时郭淮收集残兵, 稳定局势.",},
        [346] = {2106,"","夏侯霸传","夏侯霸, 字仲权, 三国时期魏国和蜀汉后期的重要将领, 夏侯渊次子.",},
        [347] = {2107,"","钟会传","钟会, 字士季, 魏名将, 太傅钟繇之子, 是魏国后期重要的策臣与谋士.",},
        [348] = {2108,"","曹昂传","曹昂, 字子修, 曹操的长子, 性情谦和且聪慧, 深得曹操喜爱.",},
        [349] = {2109,"","曹洪传","曹洪, 字子廉, 曹魏八虎骑之一, 早年随曹操随军征伐, 平兖州, 征刘表, 讨祝臂, 多有战功.",},
        [350] = {2110,"","司马徽传","司马徽, 字德操, 东汉末年名士, 精通道学, 奇门, 兵法, 经学, 有水镜先生之称.",},
        [351] = {2111,"","荀攸传","荀攸, 字公达, 曹魏五谋臣之一, 被曹操称为谋主, 作战计谋灵活多变.",},
        [352] = {2112,"","纪灵传","纪灵, 字伏义, 袁术帐下将领, 勇猛非常, 征讨徐州时同关羽大战三十回合未见胜负.",},
        [353] = {2113,"","马腾传","马腾, 字寿成, 马超之父, 东汉末年割据凉州一带的军阀.",},
        [354] = {2114,"","张绣传","张绣, 骠骑将军张济的从子, 汉末割据宛城的军阀.",},
        [355] = {2115,"","张梁传","张梁, 东汉末年黄巾起义首领之一, 张角的三弟, 号称[人公将军].",},
        [356] = {2116,"","马谡传","马谡, 字幼常, 马良之弟, 三国时期蜀汉将领.才器过人, 好论军计, 诸葛亮对他深为器重.",},
        [357] = {2117,"","马良传","马良, 字季常, 蜀汉官员, 马谡之兄.因眉毛中有白毛, 人称白眉马良.",},
        [358] = {2118,"","糜夫人传","糜夫人, 蜀汉大臣糜竺之妹, 刘备之妻.",},
        [359] = {2119,"","刘璋传","刘璋, 字季玉, 东汉末年割据军阀之一, 继父亲刘焉担任益州牧.",},
        [360] = {2120,"","顾雍传","顾雍, 字元叹, 东吴重要文臣.幼时拜蔡邕为师, 学习弹琴和书法, 才思敏捷, 心静专一.",},
    }
}

return story_chapter