--mail

local mail = {
    -- key
    __key_map = {
      id = 1,    --ID_key-int 
      mail_name = 2,    --发件人-string 
      mail_title = 3,    --邮件标题-string 
      mail_text = 4,    --邮件文本-string 
    
    },
    -- data
    _data = {
        [1] = {1,"小乔","#title#","#content#",},
        [2] = {2,"小乔","竞技场每日奖励","亲爱的玩家, 您在本次竞技场排名中获得了第#rank#名佳绩, 获得了以下奖励.",},
        [3] = {3,"小乔","南蛮入侵-军团伤害排行","您所在的军团在南蛮入侵的累计伤害排行第#rank#, 获得了以下奖励",},
        [4] = {4,"小乔","南蛮入侵-个人伤害排行","您在今日南蛮入侵的累计伤害排行第#rank#名, 获得了以下奖励",},
        [5] = {10,"小乔","签到奖励","由于您的VIP等级提升, 可在今天的签到中获得加倍奖励, 在此补发",},
        [6] = {11,"小乔","#city#暴动消除奖励","玩家#name#帮你解决#riot_name#, 您获得以上奖励!",},
        [7] = {12,"小乔","军团BOSS个人积分奖励","主公, 在本次军团BOSS中, 您个人获得积分#integral#, 排名#rank#, 特发以上奖励.",},
        [8] = {13,"小乔","军团BOSS军团积分奖励","主公, 在本次军团BOSS中, 您所在军团获得积分#integral#, 排名#rank#, 特发以上奖励.",},
        [9] = {14,"小乔","拍卖场","主公, 请及时收取您在拍卖场竞拍到的商品哟!",},
        [10] = {15,"小乔","拍卖场(元宝退回)","主公, 您竞拍#name#失败, 元宝退回, 请查收!",},
        [11] = {16,"小乔","拍卖分红","主公, 您积极参与#name#, 小乔特地为您送来活动拍卖分红, 请笑纳.",},
        [12] = {17,"小乔","军团援助奖励","主公, 您有尚未领取的军团援助奖励, 小乔为您送来了!",},
        [13] = {18,"小乔","军团求援奖励","主公, 您有尚未领取的军团求援奖励, 小乔为您送来了!",},
        [14] = {19,"小乔","礼包码奖励","主公, 以下是您成功激活礼包码的奖励, 请注意查收",},
        [15] = {20,"小乔","每周军团工资","主公, 上周的军团工资已结算, 根据您的职位和活跃可获得如下奖励.",},
        [16] = {21,"小乔","[神]孟获参与奖","主公, 您参与了军团内[神]孟获的击杀活动, 可获得如下奖励.",},
        [17] = {22,"小乔","#title#","#content#",},
        [18] = {23,"小乔","#title#","#content#",},
        [19] = {24,"小乔","军团答题积分奖励","主公, 在本次军团答题活动中, 根据您答题获得的积分, 特发以下奖励.",},
        [20] = {25,"小乔","军团答题军团积分奖励","主公, 在本次军团答题活动中, 您所在军团获得积分#integral#, 排名第#rank#, 特发以下奖励.",},
        [21] = {26,"军团管家","军团工资","主公!根据你的职位与军团活跃.|当前已积累 #gold# $resmini_1$ 以及 #contribution# $resmini_13$.|将在周一凌晨四点统一发放.",},
        [22] = {27,"#name#","军团邮件","#content#",},
        [23] = {28,"小乔","#title#","#content#",},
        [24] = {29,"#name#","军团邮件","亲爱的团员们, 本军团每日军团答题时间改为#time#场次, 请大家准时参加活动.",},
        [25] = {30,"军团管家","职务任命","主公!恭喜, 您刚被任命为#position#的职位, 请为军团的繁荣继续努力!",},
        [26] = {31,"军团管家","职务解除","主公!很遗憾, 您刚被解除了#position#的职位.",},
        [27] = {32,"小乔","百大军团","亲爱的主公, 您所在军团#legion#在本次百大军团活动评比中排名第#rank#, 作为#position#, 您为本团付出了足够的努力, 小乔特地为您送来以下奖励!",},
        [28] = {33,"小乔","身外化身活动累充福利","亲爱的主公, 您在身外化身活动期间充值#money#元宝, 小乔赠送您#num#个#goods#, 快去身外化身活动试试手气吧~",},
        [29] = {34,"小乔","公众号兑换奖励","亲爱的主公, 以下是您通过三国杀名将传微信公众号积分兑换的奖励, 请注意查收.如对奖品有疑问, 请联系客服确认哦.感谢您的支持, 祝您游戏愉快!",},
        [30] = {35,"小乔","仇人改名","主公, 您的仇人#name1#已改名为#name2#, 请知悉!",},
        [31] = {36,"小乔","割须弃袍活动累充福利","亲爱的主公, 您在割须弃袍活动期间充值#money#元宝, 小乔赠送您#num#个#goods#, 快去割须弃袍活动试试手气吧~",},
        [32] = {37,"小乔","阵营竞技参与奖","主公, 很遗憾您未能在本届阵营竞技中进入决赛圈, 小乔送上参与奖, 助您来日再战!",},
        [33] = {38,"小乔","阵营竞技八强奖励","主公, 恭喜您在本届阵营竞技晋级八强, 获得以下奖励: ",},
        [34] = {39,"小乔","阵营竞技四强奖励","主公, 恭喜您在本届阵营竞技晋级四强, 获得以下奖励: ",},
        [35] = {40,"小乔","阵营竞技亚军奖励","主公, 恭喜您在本届阵营竞技中夺得亚军, 获得以下奖励: ",},
        [36] = {41,"小乔","阵营竞技全服分红","主公, 您积极参与阵营竞技, 小乔特地为您送来阵营竞技全服拍卖的分红, 请笑纳.",},
        [37] = {42,"小乔","阵营竞技支持奖","主公, 您在本届阵营竞技中支持的#name#晋级成功, 小乔送上您获得的元宝!",},
        [38] = {43,"小乔","卧龙观星活动累充福利","亲爱的主公, 您在卧龙观星活动期间充值#money#元宝, 小乔赠送您#num#个#goods#, 快去卧龙观星活动试试手气吧~",},
        [39] = {44,"小乔","阵营竞技冠军奖励","主公, 恭喜您在本届阵营竞技中夺得冠军, 获得以下奖励: ",},
        [40] = {45,"小乔","欢庆佳节","主公, 喜迎佳节之时, 为了感谢您积极参与军团BOSS, 小乔特意为您送来以下奖励, 祝您鸿运当头!",},
        [41] = {46,"小乔","欢庆佳节","主公, 喜迎佳节之时, 为了感谢您积极参与军团答题, 小乔特意为您送来以下奖励, 祝您鸿运当头!",},
        [42] = {47,"小乔","欢庆佳节","主公, 喜迎佳节之时, 为了感谢您积极参与军团试炼, 小乔特意为您送来以下奖励, 祝您鸿运当头!",},
        [43] = {48,"小乔","欢庆佳节","主公, 喜迎佳节之时, 为了感谢您积极参与三国战纪, 小乔特意为您送来以下奖励, 祝您鸿运当头!",},
        [44] = {49,"小乔","华容道战报","主公, 第#number#届华容道已完美落幕, 本期冠军是被您赐予祝福的英雄#hero#, 感谢您的慧眼识珠, 特为您送来#odds#赔率的奖金!",},
        [45] = {50,"小乔","华容道战报","主公, 第#number#届华容道已落幕, 您支持的选手#hero#, 遗憾落败, 谢谢您的参与, 期待下次再会!",},
        [46] = {51,"小乔","游卡福利奖励","亲爱的主公, 请及时领取游卡福利小程序的签到奖励哦, 感谢您一直以来对我们的支持, 祝您游戏愉快!",},
        [47] = {52,"军团管家","军团战军功","主公, 您在本次军团战中表现活跃, 特此发放#num#的军团贡献, 请查收!",},
        [48] = {53,"小乔","伯乐相马活动累充福利","亲爱的主公, 您在伯乐相马活动期间充值#money#元宝, 小乔赠送您#num#个#goods#, 快去相马中试试手气吧~",},
        [49] = {54,"军团管家","军团战军功","主公, 您所在的军团占领了#city#, 今日共获得#num#的军团贡献, 请查收!",},
        [50] = {55,"小乔","先秦皇陵掉落奖励","主公, 这是您在离线期间获得的先秦皇陵奖励, 请查收!",},
        [51] = {56,"小乔","贵宾VIP认证见面礼","亲爱的主公, 您已开启三国杀名将传VIP贵宾绿色通道, 请收下我们的认证礼包, 之后新版本内容, 新活动讯息也会第一时间通知您!感谢您对三国杀名将传的支持与热爱, 祝主公游戏愉快!",},
        [52] = {57,"小乔","绑定身份奖励","亲爱的主公, 您的账号已经成功绑定身份证, 获得以下奖励: ",},
        [53] = {58,"军团管家","军功宝箱","主公, 您在本次军团战中表现活跃, 英勇杀敌, 特发放如下奖励, 请查收!",},
        [54] = {59,"小乔","联动小福利","亲爱的主公, 欢迎来到三国杀名将传, 请收下小乔为您准备的薄礼, 祝您游戏愉快哟~完成联动任务, 可领取三国杀奖励, 详见联动活动说明；当然在三国杀名将传中, 您也会收到额外的福利哦, 继续和小乔一起愉快地玩耍吧^_^",},
        [55] = {60,"小乔","联动小福利","亲爱的主公, 欢迎来到三国杀名将传, 请收下小乔为您准备的薄礼, 祝您游戏愉快哟~完成联动任务, 可领取三国杀奖励, 详见联动活动说明；当然在三国杀名将传中, 您也会收到额外的福利哦, 继续和小乔一起愉快地玩耍吧^_^",},
        [56] = {61,"小乔","联动小福利","亲爱的主公, 欢迎来到三国杀名将传, 请收下小乔为您准备的薄礼, 祝您游戏愉快哟~完成联动任务, 可领取三国杀奖励, 详见联动活动说明；当然在三国杀名将传中, 您也会收到额外的福利哦, 继续和小乔一起愉快地玩耍吧^_^",},
        [57] = {62,"小乔","联动奖励补发","亲爱的主公, 由于网络波动, 您在联动活动中获得的任务奖励通过邮件直接发送给您^_^",},
        [58] = {63,"小乔","拍卖预告","各位主公, 神秘行商即将在#hour#时#minute#分开始, 如果有主公在这个拍卖中一口价商品, 就会有全服大红包可以抢!",},
        [59] = {64,"小乔","获得称号","亲爱的主公, 您#des#, 获得#title#称号, 有效时间为#day#, 请在主界面左上角点击自己的头像在称号界面中查看哟~",},
        [60] = {65,"小乔","关公驯马活动累充福利","亲爱的主公, 您在关公驯马活动期间充值#money#元宝, 小乔赠送您#num#个#goods#, 快去驯马中试试手气吧~",},
        [61] = {66,"小乔","跨服个人竞技全服分红","主公, 小乔特地为您送来跨服个人竞技全服拍卖的分红, 请笑纳.",},
        [62] = {67,"小乔","跨服个人竞技支持奖","主公, 您在本届跨服个人竞技中支持的#name#晋级成功, 小乔送上您获得的玉魂!",},
        [63] = {68,"小乔","跨服个人竞技参与奖","主公, 很遗憾您未能在本届跨服个人竞技中进入32强, 小乔送上参与奖, 助您来日再战!",},
        [64] = {69,"小乔","跨服个人竞技参与奖","主公, 恭喜您在本届跨服个人竞技中获得#rank#, 获得以下奖励: ",},
        [65] = {70,"军团管家","军功宝箱","主公, 您在本次跨服军团战中表现活跃, 英勇杀敌, 特发放如下奖励, 请查收!",},
        [66] = {75,"小乔","礼包码奖励","亲爱的主公, 以下是您领取的OPPO专属礼包奖励, 请注意查收!感谢您对我们游戏的支持, 祝您游戏愉快!",},
        [67] = {76,"小乔","冠军竞猜获胜奖励","主公, 您在本届跨服个人竞技中支持的#Server##name#获得了冠军, 获得以下奖励: ",},
        [68] = {77,"小乔","最强服竞猜获胜奖励","主公, 您在本届跨服个人竞技中支持的#Server#服排名第一, 获得以下奖励: ",},
        [69] = {78,"小乔","垫底服竞猜获胜奖励","主公, 您在本届跨服个人竞技中支持的#Server#服排名垫底, 获得以下奖励: ",},
        [70] = {79,"小乔","冠军竞猜失败安慰奖","主公, 感谢您参与本届跨服个人竞技冠军竞猜, 很遗憾您支持的霸主未能夺冠, 小乔送上参与奖, 助您来日再战!",},
        [71] = {80,"小乔","最强服竞猜失败安慰奖","主公, 感谢您参与本届跨服个人竞技最强服竞猜, 很遗憾您支持的服务器未能排名第一, 小乔送上参与奖, 助您来日再战!",},
        [72] = {81,"小乔","垫底服竞猜失败安慰奖","主公, 感谢您参与本届跨服个人竞技最弱服竞猜, 很遗憾您支持的服务器未能排名垫底, 小乔送上参与奖, 助您来日再战!",},
        [73] = {82,"小乔","全服答题积分奖励","主公, 在本次全服答题活动中, 您总共获得#point#积分, 排名第#rank#, 特发以下奖励.",},
        [74] = {83,"小乔","红包雨即将开启","主公, 红包雨活动即将在#time#开启, 恭请各位主公驾临!",},
        [75] = {84,"小乔","欢乐抽奖奖励","主公, 恭喜您在本轮欢乐抽奖成为幸运儿, 小乔为您送来奖品: ",},
        [76] = {85,"小乔","欢乐抽奖积分排名奖励","主公, 本轮欢乐抽奖已经告一段落, 您在本时段的欢乐抽奖积分排名第#rank#, 小乔为您送来第#part#奖励: ",},
        [77] = {86,"小乔","见龙在田总积分排名奖励","主公, 本次金将招募活动已圆满结束, 您在本次金将招募总积分排名第#rank#, 小乔为您送来第#part#奖励: ",},
        [78] = {87,"小乔","见龙在田活动累充福利","亲爱的主公, 您在见龙在田活动期间充值#money#元宝, 小乔赠送您#num#个#goods#, 快去招募金将试试手气吧~",},
        [79] = {88,"小乔","欢乐抽奖参与奖励","主公, 本轮欢乐抽奖已经告一段落, 感谢您参与这一时段的欢乐抽奖, 小乔为您送来参与奖励: ",},
        [80] = {89,"小乔","见龙在田参与奖励","主公, 本次见龙在田活动已圆满结束, 感谢您参与本次活动, 小乔为您送来参与奖励: ",},
        [81] = {98,"小乔","新金将50阶神兵赠送","主公, 恭喜您首次获得#hero#, 小乔为您送来#hero#专属50阶神兵, 祝您早日称霸天下: ",},
        [82] = {90,"小乔","军团蛋糕升级奖励","主公, 您已经离开了#name1#军团, 附件是您未领取的蛋糕升级奖励, 请注意查收!",},
        [83] = {91,"小乔","军团进入跨服周年庆","恭喜主公所在的#name1#军团在本服周年庆中斩获第#rank#名, 将代表本服参加跨服周年庆!请继续加油为军团争光!",},
        [84] = {92,"小乔","本服周年庆个人奖励","恭喜主公在本服周年庆中斩获个人排名第#rank#名!附件是您的排名奖励, 请查收!",},
        [85] = {93,"小乔","本服周年庆军团奖励","恭喜主公所在的#name1#军团在本服周年庆中斩获第#rank#名!附件是您的军团排名奖励, 请查收!",},
        [86] = {94,"小乔","跨服周年庆个人奖励","恭喜主公在跨服周年庆中斩获个人排名第#rank#名!附件是您的排名奖励, 请查收!",},
        [87] = {95,"小乔","跨服周年庆军团奖励","恭喜主公所在的#name1#军团在跨服周年庆中斩获第#rank#名!附件是您的军团排名奖励, 请查收!",},
        [88] = {96,"小乔","本服周年庆蛋糕奖励","本服周年庆已结束, 附件是您未领取的蛋糕升级奖励, 请注意查收!",},
        [89] = {97,"小乔","跨服周年庆蛋糕奖励","跨服周年庆已结束, 附件是您未领取的蛋糕升级奖励, 请注意查收!",},
        [90] = {8401,"小乔","充值提醒","您#time#, 在官网上购买了#name#, 对应奖励已发放到您指定账户, 同时激活当天对应累充活动, 感谢您的支持!",},
        [91] = {8402,"小乔","充值提醒","您#time#, 在官网上购买了#name#, 部分奖励已直接发放到您账户, 剩余奖励请到游戏内对应界面领取, 同时激活当天对应累充活动, 感谢您的支持!",},
        [92] = {8403,"小乔","贵宾VIP认证见面礼","亲爱的主公, 您已开启三国杀名将传VIP贵宾绿色通道, 请收下我们的认证礼包, 之后新版本内容, 新活动讯息也会第一时间通知您!感谢您对三国杀名将传的支持与热爱, 祝主公游戏愉快!",},
        [93] = {8404,"小乔","商店评论奖励","亲爱的主公, 感谢您对于我们游戏的支持, 请收下小乔准备的奖励!祝您游戏愉快~~~",},
        [94] = {8405,"小乔","港澳台预约奖励邮件","感謝各位主公的熱情參與, 預約人數突破#sub_num#萬次, 以下是預約獎勵, 請注意查收, 祝您游戲愉快~",},
    }
}

return mail