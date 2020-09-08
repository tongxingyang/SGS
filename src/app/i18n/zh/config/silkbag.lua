--silkbag

local silkbag = {
    -- key
    __key_map = {
      id = 1,    --锦囊id_key-int 
      name = 2,    --锦囊名称-string 
      profile = 3,    --锦囊短描述-string 
      description = 4,    --锦囊详情-string 
      bag_description = 5,    --背包锦囊描述-string 
      button_txt = 6,    --按钮文字-string 
      show_day = 7,    --图鉴显示天数-int 
      hero = 8,    --适用武将_math-string 
      is_fight = 9,    --无差别竞技里可用赛区_math-int 
    
    },
    -- data
    _data = {
        [1] = {1101,"关银屏锦囊","攻击+1000","攻击+1000(主角每升1级攻击额外+40)","攻击+1000(每级+40)","去穿戴",0,"999",0,},
        [2] = {1102,"张星彩锦囊","生命+7500","生命+7500(主角每升1级生命额外+300)","生命+7500(每级+300)","去穿戴",0,"999",0,},
        [3] = {1103,"周泰锦囊","防御+500","防御+500(主角每升1级防御额外+20)","防御+500(每级+20)","去穿戴",0,"999",0,},
        [4] = {1104,"吕灵雎锦囊","暴击概率+8%","暴击概率+8%","暴击概率+8%","去穿戴",0,"999",0,},
        [5] = {1105,"黄盖锦囊","抗暴概率+8%","抗暴概率+8%","抗暴概率+8%","去穿戴",0,"999",0,},
        [6] = {1106,"张让锦囊","伤害+5%","伤害+5%","伤害+5%","去穿戴",0,"999",0,},
        [7] = {1107,"蔡文姬锦囊","伤害减免+5%","伤害减免+5%","伤害减免+5%","去穿戴",0,"999",0,},
        [8] = {1108,"于禁锦囊","暴击伤害+5%","暴击伤害+5%","暴击伤害+5%","去穿戴",0,"999",0,},
        [9] = {1202,"刘备锦囊","释放技能治疗提升","治疗武将释放技能时, 对己方血量最少武将造成治疗效果额外提升55%.","释放技能治疗增加","去穿戴",0,"102|202|302|402|216",1,},
        [10] = {1203,"陆逊锦囊","灼烧概率提升","攻击目标越少, 灼烧概率提升越高, 最多对1个目标提高60%的灼烧概率.","灼烧概率增加","去穿戴",0,"303|305|311|319|313",1,},
        [11] = {1204,"公孙瓒锦囊","攻击单体目标降低1点怒气","攻击单体目标时额外降低目标1点怒气.","攻击单体目标降低其1点怒气","去穿戴",0,"212|312|404|408|409|412|413|414|415|416|417|419",1,},
        [12] = {1205,"关羽锦囊","初始提升1点怒气","初始怒气增加1点.","初始增加1点怒气","去穿戴",0,"999",1,},
        [13] = {1207,"马超锦囊","提升护盾伤害减免效果","保护目标越少, 减伤效果越高, 最高可以减免36%的伤害.(只对当前有减伤护盾的武将生效)","提升护盾伤害减免效果","去穿戴",0,"118|207|215|405",1,},
        [14] = {1208,"贾诩锦囊","中毒概率提升","技能攻击目标越少, 中毒概率提升越高, 最多提高60%的中毒概率.","中毒概率增加","去穿戴",0,"410|407",1,},
        [15] = {1209,"徐庶锦囊","晕眩概率提升","攻击目标越少, 晕眩概率提升越高, 最多提高48%的晕眩概率.(只对当前有晕眩效果的武将生效)","晕眩概率增加","去穿戴",0,"106|116|203|210|212|214|307|312|317|401|408|415",1,},
        [16] = {1211,"于吉锦囊","中毒伤害提升","攻击目标越少, 技能造成的中毒伤害提升越高, 最多对1个目标提高60%的中毒伤害.","中毒伤害提升","去穿戴",0,"410|407",1,},
        [17] = {1212,"小乔锦囊","麻痹概率提升","攻击目标越少, 麻痹概率提升越高, 最多对1个目标提高72%的麻痹概率.(只对当前有麻痹效果的武将生效)","麻痹概率提升","去穿戴",0,"219|304|411",1,},
        [18] = {1213,"郭嘉锦囊","沉默概率提升","攻击目标越少, 沉默概率提升越高, 最多对1个目标提高72%的沉默概率.(只对当前有沉默效果的武将生效)","沉默概率提升","去穿戴",0,"104|115|409|419",1,},
        [19] = {1214,"夏侯惇锦囊","反伤比例提升","反伤增加30%.(只对当前有反伤效果的武将生效)","反伤比例提升","去穿戴",0,"105",1,},
        [20] = {1215,"张飞锦囊","攻击+3000","攻击+3000(主角每升1级攻击额外+120)","攻击+3000(每级+120)","去穿戴",0,"999",1,},
        [21] = {1216,"庞统锦囊","生命+22500","生命+22500(主角每升1级生命额外+900)","生命+22500(每级+900)","去穿戴",0,"999",1,},
        [22] = {1217,"孙坚锦囊","防御+1500","防御+1500(主角每升1级防御额外+60)","防御+1500(每级+60)","去穿戴",0,"999",1,},
        [23] = {1218,"袁术锦囊","暴击概率+20%","暴击概率+20%","暴击概率+20%","去穿戴",0,"999",1,},
        [24] = {1219,"黄月英锦囊","抗暴概率+20%","抗暴概率+20%","抗暴概率+20%","去穿戴",0,"999",1,},
        [25] = {1220,"典韦锦囊","伤害+12%","伤害+12%","伤害+12%","去穿戴",0,"999",1,},
        [26] = {1221,"董卓锦囊","伤害减免+12%","伤害减免+12%","伤害减免+12%","去穿戴",0,"999",1,},
        [27] = {1222,"孙尚香锦囊","暴击伤害+12%","暴击伤害+12%","暴击伤害+12%","去穿戴",0,"999",1,},
        [28] = {1223,"许褚锦囊","击杀目标回复自身1点怒气","击杀目标回复自身1点怒气.","击杀目标回复自身1点怒气","去穿戴",0,"1|2|3|4|5|11|12|13|14|15|101|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|201|203|204|205|206|207|208|209|210|211|212|213|214|215|217|218|219|301|303|304|305|306|307|308|309|310|311|312|313|314|315|316|317|318|319|401|403|404|405|406|407|408|409|410|411|412|413|414|415|416|417|418|419",1,},
        [29] = {1224,"甄姬锦囊","技能伤害转化治疗比例提升","技能伤害转化为血量治疗当前血量最少的武将的比例提升18%.(只对当前有技能转治疗的辅助武将生效)","技能伤害转化治疗比例提升","去穿戴",7,"103|112|117|204|404",1,},
        [30] = {1225,"华佗锦囊","中毒伤害回复自身血量","造成的中毒伤害的10%转化为血量治疗自己.","造成的中毒伤害回复自身血量","去穿戴",7,"407|410",1,},
        [31] = {1226,"大乔锦囊","治疗效果提升并附加减伤护盾","技能的治疗效果提升25%, 同时为技能目标附加1个免伤盾, 受到所有伤害降低12%, 持续1回合.","治疗效果提升并附加护盾","去穿戴",7,"102|202|302|402|216",1,},
        [32] = {1227,"貂蝉锦囊","降低自身被控制概率","受到的控制效果(麻痹, 沉默, 晕眩)概率降低35%.","降低自身被控制概率","去穿戴",7,"999",1,},
        [33] = {1301,"赵云锦囊","普通攻击必定暴击","普通攻击必定暴击.(包括治疗武将)","普通攻击必定暴击","去穿戴",7,"999",1,},
        [34] = {1303,"周瑜锦囊","灼烧持续回合数增加","主动造成的灼烧状态额外延长1回合.","灼烧状态额外增加1回合","去穿戴",7,"303|305|311|319|313",1,},
        [35] = {1304,"左慈锦囊","中毒附加封疗效果","中毒附加封疗效果, 中毒状态的武将无法受到治疗.","中毒附加封疗效果","去穿戴",7,"410|407",1,},
        [36] = {1308,"曹操锦囊","清除敌方武将无敌效果","攻击目标越少, 清除敌方武将无敌状态概率越高, 最多对1个目标提高100%的清除无敌概率.","清除敌方武将无敌效果","去穿戴",7,"1|2|3|4|5|11|12|13|14|15|101|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|201|203|204|205|206|207|208|209|210|211|212|213|214|215|217|218|219|301|303|304|305|306|307|308|309|310|311|312|313|314|315|316|317|318|319|401|403|404|405|406|407|408|409|410|411|412|413|414|415|416|417|418|419",1,},
        [37] = {1302,"神·曹仁锦囊","攻击纵排目标降低1点怒气","攻击纵排目标时, 额外降低目标1点怒气.(只对当前有纵排减怒效果的武将生效)","攻击纵排目标降低其1点怒气","去穿戴",7,"106|210|406",1,},
        [38] = {1309,"神·陆逊锦囊","被灼烧武将封无敌","被灼烧的武将无法获得无敌和无敌吸血盾效果.","被灼烧的武将无法获得无敌效果","去穿戴",7,"303|305|311|319|313",1,},
        [39] = {1310,"神·黄月英锦囊","首回合免疫控制","首回合免疫晕眩, 沉默, 麻痹效果.","首回合免疫晕眩, 沉默, 麻痹效果","去穿戴",7,"999",1,},
        [40] = {1311,"神·华佗锦囊","技能伤害转化为治疗","技能伤害的18%转化为血量, 治疗自己.","技能伤害转化为血量治疗自己","去穿戴",7,"1|2|3|4|5|11|12|13|14|15|101|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|201|203|204|205|206|207|208|209|210|211|212|213|214|215|217|218|219|301|303|304|305|306|307|308|309|310|311|312|313|314|315|316|317|318|319|401|403|404|405|406|407|408|409|410|411|412|413|414|415|416|417|418|419",1,},
        [41] = {1312,"司马懿锦囊","消耗所有怒气增加技能伤害","武将怒气小于7点时, 不会释放技能；释放技能消耗当前所有怒气, 超过4点怒气部分, 每额外消耗1点怒气, 技能伤害增加15%.","消耗所有怒气增加技能伤害","去穿戴",7,"999",1,},
        [42] = {1305,"神·贾诩锦囊","中毒持续回合数增加","技能造成的中毒状态延长1回合.","中毒状态额外增加1回合","去穿戴",7,"410|407",1,},
        [43] = {1313,"神·荀彧锦囊","释放技能治疗提升","治疗武将释放技能时, 对己方血量最少的3个武将治疗效果额外提升治疗武将攻击的32%.","释放技能治疗提升","去穿戴",7,"102|202|302|402|216",1,},
        [44] = {1314,"桃园结义锦囊","分摊受到的伤害","受到的伤害降低12%, 并且将自身受到的非致命伤害平分给自身及己方当前血量最高的2名武将.(被分摊伤害时处于无敌状态的武将, 也会受到伤害)","分摊受到的伤害","去穿戴",7,"999",1,},
        [45] = {1315,"神·太史慈锦囊","灼烧概率大幅提升","攻击目标越少, 灼烧概率提升越高, 最多对1个目标提高96%的灼烧概率.","灼烧概率大幅提升","去穿戴",7,"303|305|311|319|313",1,},
        [46] = {1316,"青青子衿锦囊","回合结束回复悠悠我心1点怒气","该武将每回合首次出手后, 佩戴悠悠我心锦囊的武将可额外获得1点怒气.(每套阵容限定1名男性武将佩戴)","回合结束回复悠悠我心1点怒气","去穿戴",999,"998",0,},
        [47] = {1317,"悠悠我心锦囊","回合结束回复青青子衿1点怒气","该武将每回合首次出手后, 佩戴青青子衿锦囊的武将可额外获得1点怒气.(每套阵容限定1名女性武将佩戴)","回合结束回复青青子衿1点怒气","去穿戴",999,"997",0,},
        [48] = {1318,"千里走单骑锦囊","攻击敌方当前血量最少武将","单体输出武将的所有攻击优先攻击敌方当前血量最低的武将.","攻击敌方当前血量最少武将","去穿戴",21,"205|213|308|310|316|413",1,},
        [49] = {1319,"一骑当千锦囊","击杀目标追加1次技能","单体输出武将击杀目标后, 追加1次技能, 对敌方单体造成175%物理伤害.(追加的技能不消耗怒气, 不触发任何特性)","击杀目标追加1次技能","去穿戴",21,"205|213|308|310|316|413",1,},
        [50] = {1401,"七杀锦囊","造成的伤害被分摊比例下降","我方纵排, 前排, 后排输出武将对敌方造成的伤害如果被分摊, 其分摊的比例降低50%","我方纵排, 前排, 后排输出武将对敌方造成的伤害如果被分摊, 其分摊的比例降低50%","去穿戴",999,"107|108|109|113|114|201|206|208|209|217|218|301|306|318|406|407|414|416",0,},
        [51] = {1402,"贪狼锦囊","击杀目标获得怒气","技能直接击杀敌方目标时, 获得目标剩余的所有怒气(输出武将佩戴)","击杀敌方目标时, 获得目标剩余的所有怒气(输出武将佩戴)","去穿戴",999,"101|107|108|109|111|113|114|201|205|206|208|209|217|218|301|306|308|310|316|318|403|406|407|410|413|414|416",0,},
        [52] = {1403,"传说·关羽锦囊","初始怒气增加2点","初始怒气增加2点","初始怒气增加2点","去穿戴",999,"999",0,},
        [53] = {1404,"破釜沉舟锦囊","每回合受到的伤害有上限","每回合最多受到自身生命值上限50%的伤害(该伤害为来自于武将的直接伤害)","每回合受到的伤害有上限","去穿戴",999,"105|119|207|215|309|314|405|418",0,},
        [54] = {1405,"同舟共济锦囊","吸收同阵营友方武将的伤害","同阵营的武将受到敌方武将直接伤害时, 该伤害的50%会转移给佩戴此锦囊的武将(无法触发任何特性, 无法被无敌免疫)","吸收同阵营友方武将的伤害","去穿戴",999,"105|119|207|215|309|314|405|418",0,},
    }
}

return silkbag