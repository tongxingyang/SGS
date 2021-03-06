--jade

local jade = {
    -- key
    __key_map = {
      id = 1,    --玉石id_key-int 
      equipment = 2,    --适用装备_math-string 
      name = 3,    --玉石名称-string 
      profile = 4,    --玉石短描述-string 
      description = 5,    --玉石详情-string 
      bag_description = 6,    --背包玉石描述-string 
      button_txt = 7,    --按钮文字-string 
    
    },
    -- data
    _data = {
        [1] = {1101,"501|409","青龙星光玉·攻","攻击+5000","攻击+5000(主角每升1级攻击额外+100)","攻击+5000","镶 嵌",},
        [2] = {1102,"501|409","青龙星光玉·疗","治疗加成+8%","治疗加成+8%(仅对治疗型武将的治疗生效)","治疗加成+8%","镶 嵌",},
        [3] = {1103,"501|409","青龙星光玉·暴","暴击几率+12%","暴击几率+12%","暴击几率+12%","镶 嵌",},
        [4] = {1104,"502|410","玄武星光玉·物","物理防御+2500","物理防御+2500(主角每升1级物理防御额外+50)","物理防御+2500","镶 嵌",},
        [5] = {1105,"502|410","玄武星光玉·愈","被治疗率+8%","被治疗率+8%(仅对治疗型武将的治疗生效)","被治疗率+8%","镶 嵌",},
        [6] = {1106,"502|410","玄武星光玉·抗","抗暴几率+12%","抗暴几率+12%","抗暴几率+12%","镶 嵌",},
        [7] = {1107,"503|411","白虎星光玉·法","法术防御+2500","法术防御+2500(主角每升1级法术防御额外+50)","法术防御+2500","镶 嵌",},
        [8] = {1108,"503|411","白虎星光玉·愈","被治疗率+8%","被治疗率+8%(仅对治疗型武将的治疗生效)","被治疗率+8%","镶 嵌",},
        [9] = {1109,"503|411","白虎星光玉·闪","闪避几率+12%","闪避几率+12%","闪避几率+12%","镶 嵌",},
        [10] = {1110,"504|412","朱雀星光玉·血","生命+37500","生命+37500(主角每升1级生命额外+750)","生命+37500","镶 嵌",},
        [11] = {1111,"504|412","朱雀星光玉·疗","治疗加成+8%","治疗加成+8%(仅对治疗型武将的治疗生效)","治疗加成+8%","镶 嵌",},
        [12] = {1112,"504|412","朱雀星光玉·命","命中几率+12%","命中几率+12%","命中几率+12%","镶 嵌",},
        [13] = {1201,"501|409","青龙月华玉·攻","攻击加成+12%","攻击加成+12%","攻击加成+12%","镶 嵌",},
        [14] = {1202,"501|409","青龙月华玉·疗","治疗加成+12%","治疗加成+12%(仅对治疗型武将的治疗生效)","治疗加成+12%","镶 嵌",},
        [15] = {1203,"501|409","青龙月华玉·暴","暴击几率+22%","暴击几率+22%","暴击几率+22%","镶 嵌",},
        [16] = {1204,"502|410","玄武月华玉·物","物理防御加成+12%","物理防御加成+12%","物理防御加成+12%","镶 嵌",},
        [17] = {1205,"502|410","玄武月华玉·愈","被治疗率+12%","被治疗率+12%(仅对治疗型武将的治疗生效)","被治疗率+12%","镶 嵌",},
        [18] = {1206,"502|410","玄武月华玉·抗","抗暴几率+22%","抗暴几率+22%","抗暴几率+22%","镶 嵌",},
        [19] = {1207,"503|411","白虎月华玉·法","法术防御加成+12%","法术防御加成+12%","法术防御加成+12%","镶 嵌",},
        [20] = {1208,"503|411","白虎月华玉·愈","被治疗率+12%","被治疗率+12%(仅对治疗型武将的治疗生效)","被治疗率+12%","镶 嵌",},
        [21] = {1209,"503|411","白虎月华玉·闪","闪避几率+22%","闪避几率+22%","闪避几率+22%","镶 嵌",},
        [22] = {1210,"504|412","朱雀月华玉·血","生命加成+12%","生命加成+12%","生命加成+12%","镶 嵌",},
        [23] = {1211,"504|412","朱雀月华玉·疗","治疗加成+12%","治疗加成+12%(仅对治疗型武将的治疗生效)","治疗加成+12%","镶 嵌",},
        [24] = {1212,"504|412","朱雀月华玉·命","命中几率+22%","命中几率+22%","命中几率+22%","镶 嵌",},
        [25] = {1301,"501|409","青龙日耀玉·伤","伤害加成+18%","伤害加成+18%","伤害加成+18%","镶 嵌",},
        [26] = {1302,"501|409","青龙日耀玉·疗","治疗加成+18%","治疗加成+18%(仅对治疗型武将的治疗生效)","治疗加成+18%","镶 嵌",},
        [27] = {1303,"501|409","青龙日耀玉·暴","暴击几率+32%","暴击几率+32%","暴击几率+32%","镶 嵌",},
        [28] = {1304,"501|409","青龙日耀玉·克","PVP增伤+18%","PVP增伤+18%","PVP增伤+18%","镶 嵌",},
        [29] = {1305,"502|410","玄武日耀玉·护","伤害减免+18%","伤害减免+18%","伤害减免+18%","镶 嵌",},
        [30] = {1306,"502|410","玄武日耀玉·愈","被治疗率+18%","被治疗率+18%(仅对治疗型武将的治疗生效)","被治疗率+18%","镶 嵌",},
        [31] = {1307,"502|410","玄武日耀玉·抗","抗暴几率+32%","抗暴几率+32%","抗暴几率+32%","镶 嵌",},
        [32] = {1308,"502|410","玄武日耀玉·韧","PVP减伤+18%","PVP减伤+18%","PVP减伤+18%","镶 嵌",},
        [33] = {1309,"503|411","白虎日耀玉·护","伤害减免+18%","伤害减免+18%","伤害减免+18%","镶 嵌",},
        [34] = {1310,"503|411","白虎日耀玉·愈","被治疗率+18%","被治疗率+18%(仅对治疗型武将的治疗生效)","被治疗率+18%","镶 嵌",},
        [35] = {1311,"503|411","白虎日耀玉·闪","闪避几率+32%","闪避几率+32%","闪避几率+32%","镶 嵌",},
        [36] = {1312,"503|411","白虎日耀玉·韧","PVP减伤+18%","PVP减伤+18%","PVP减伤+18%","镶 嵌",},
        [37] = {1313,"504|412","朱雀日耀玉·伤","伤害加成+18%","伤害加成+18%","伤害加成+18%","镶 嵌",},
        [38] = {1314,"504|412","朱雀日耀玉·疗","治疗加成+18%","治疗加成+18%(仅对治疗型武将的治疗生效)","治疗加成+18%","镶 嵌",},
        [39] = {1315,"504|412","朱雀日耀玉·命","命中几率+32%","命中几率+32%","命中几率+32%","镶 嵌",},
        [40] = {1316,"504|412","朱雀日耀玉·克","PVP增伤+18%","PVP增伤+18%","PVP增伤+18%","镶 嵌",},
        [41] = {2101,"501","青龙断魂玉·杀意","攻击受到控制的目标增加伤害","攻击受到控制效果(晕眩, 沉默, 麻痹)的目标时, 增加15%的伤害.","攻击受到控制的目标增加伤害","镶 嵌",},
        [42] = {2102,"501","青龙断魂玉·嗜血","技能攻击可造成额外伤害","攻击目标数量为1/2/3/4/6个目标时, 额外造成目标生命上限15%/7.5%/5%/3.75%/ 2.5%的伤害","技能攻击可造成额外伤害","镶 嵌",},
        [43] = {2103,"501","青龙断魂玉·同心","造成伤害或治疗提高","释放技能或普攻时, 使自身造成的伤害或治疗提高(己方每有一个与自己同阵营的武将, 伤害或治疗+3.75%)","造成伤害或治疗提高","镶 嵌",},
        [44] = {2104,"501","青龙断魂玉·如意","击杀目标可清除异常效果","击杀目标后, 清除己方武将身上该目标死亡前释放的所有异常效果(灼烧, 中毒, 晕眩, 沉默, 麻痹)","击杀目标可清除异常效果","镶 嵌",},
        [45] = {2105,"502","玄武金刚玉·吸星","回合开始前获得吸收伤害护盾","战斗开始前, 使自身获得一个吸收伤害盾, 吸收自身血量上限30%的直接伤害, 持续一回合","回合开始前获得吸收伤害护盾","镶 嵌",},
        [46] = {2106,"502","玄武金刚玉·银霜","行动后获得吸收伤害护盾","自身行动后, 使自身获得一个吸收伤害盾, 吸收自身生命上限15%的直接伤害, 持续一回合(自身回合内仅触发一次)","行动后获得吸收伤害护盾","镶 嵌",},
        [47] = {2107,"502","玄武金刚玉·同泽","死亡时使队友获得无敌护盾","死亡时, 使血量最少的友方目标获得一个无敌护盾, 持续1回合(护盾强度等同于张郃突破5所附加的护盾)","死亡时使队友获得无敌护盾","镶 嵌",},
        [48] = {2108,"502","玄武金刚玉·化伤","受到极大伤害时获得伤害减免","受到武将直接伤害时, 如果该伤害超过自身生命上限的50%, 减免此次伤害的30%","受到极大伤害时获得伤害减免","镶 嵌",},
        [49] = {2109,"503","白虎神怒玉·回光","回合结束时回复怒气","自身行动后, 回复自身1点怒气(自身回合内仅触发一次)","回合结束时回复怒气","镶 嵌",},
        [50] = {2110,"503","白虎神怒玉·灵霜","队友释放技能有几率回复怒气","队友释放技能后, 有20%的概率回复自身1点怒气","队友释放技能有几率回复怒气","镶 嵌",},
        [51] = {2111,"503","白虎神怒玉·化极","整体回合结束时几率回复怒气","整体回合结束时, 如果自身怒气低于4点, 有35%的概率将怒气回复至4点","整体回合结束时几率回复怒气","镶 嵌",},
        [52] = {2112,"503","白虎神怒玉·返锦","释放技能有几率回复消耗怒气","释放技能后, 有25%的几率获得本次技能消耗50%的怒气, 最多不超过4点","释放技能有几率回复消耗怒气","镶 嵌",},
        [53] = {2113,"504","朱雀生息玉·培元","释放技能有几率使队友控制抗性增加","释放技能后, 有50%的几率使周围的友方目标受到控制效果(晕眩, 沉默, 麻痹)的概率下降35%, 持续一回合","释放技能有几率使队友控制抗性增加","镶 嵌",},
        [54] = {2114,"504","朱雀生息玉·固本","自身恢复怒气时可回复血量","自身回合内, 恢复怒气的同时, 恢复自身生命上限15%的血量","自身恢复怒气时可回复血量","镶 嵌",},
        [55] = {2115,"504","朱雀生息玉·凝神","自身未行动过可获得免控护盾","自身回合结束时, 如果本回合没有主动行动过, 获得1个免疫控制效果(晕眩, 沉默, 麻痹)的护盾, 持续一回合","自身未行动过可获得免控护盾","镶 嵌",},
        [56] = {2116,"504","朱雀生息玉·清心","回合开始前有几率移除自身异常效果","自身回合开始前, 有25%的几率移除自身所有的异常效果(灼烧, 中毒, 晕眩, 沉默, 麻痹)","回合开始前有几率移除自身异常效果","镶 嵌",},
    }
}

return jade