--net_msg_error

local net_msg_error = {
    version =  1,
    -- key
    __key_map = {
      error_id = 1,    --id-int 
      error_msg = 2,    --错误信息-string 
    
    },
    -- data
    _data = {
        [1] = {0,"未知のエラー。カスタマーサービスにご連絡ください",},
        [2] = {1,"正常",},
        [3] = {2,"サーバーメンテナンス中。お知らせをご覧ください",},
        [4] = {3,"対応するプレイヤーの情報がみつかりませんでした。",},
        [5] = {4,"このアカウントは他の場所でログインしています。アカウントのセキュリティにご注意ください",},
        [6] = {5,"この名前は使われています。他の名前を入力してください",},
        [7] = {6,"あなたがログインしたサーバーは大変混み合っています。しばらくたってからやり直してください。",},
        [8] = {7,"アカウントが凍結されています。ご質問等ございましたら、カスタマーサービスにお問い合わせください",},
        [9] = {8,"サーバーはまだオープンしていません。時間にご注意ください",},
        [10] = {9,"このサーバーは競争が激しいので、登録を締めきりました。",},
        [11] = {10,"ログインタイムアウト。ネットワークを確認するか、しばらくしてからお試しください",},
        [12] = {11,"新しいバージョンが検出されました。更新してください",},
        [13] = {12,"アカウント未開放",},
        [14] = {13,"このアクティベーションコードは使用済みです",},
        [15] = {14,"無効なアクティベーションコードです。",},
        [16] = {15,"チャージ未開放",},
        [17] = {16,"使用不能な文字",},
        [18] = {17,"エラー",},
        [19] = {18,"このプレイヤーはログイン中です",},
        [20] = {19,"この機能は未開放",},
        [21] = {20,"戦報がありません",},
        [22] = {21,"同一IPで作成したキャラクターが多すぎます",},
        [23] = {22,"回数を使い切りました",},
        [24] = {23,"戦報期限切れ",},
        [25] = {24,"軍団を脱退しました",},
        [26] = {25,"現在のIPはこのサーバーへのログインを制限されています。",},
        [27] = {26,"現在のデバイスはこのサーバーからアクセスを制限されています。",},
        [28] = {27,"名前に不適切な内容が含まれています。命名し直してください",},
        [29] = {28,"ログインが頻繁すぎます",},
        [30] = {1004,"設定エラー",},
        [31] = {1005,"そのアイテムは存在しません。",},
        [32] = {1006,"その欠片は存在しません。",},
        [33] = {1007,"戦闘エラー。カスタマーサービスにご連絡ください",},
        [34] = {1008,"武将がいません",},
        [35] = {1009,"誤ったターゲットを選択されました。カスタマーサービスにご連絡ください",},
        [36] = {1010,"プレイヤーレベルよりも高い",},
        [37] = {1011,"素材品質が合っていません",},
        [38] = {1012,"武将は陣営にいます",},
        [39] = {1013,"武将は育成済みのため取り込めません",},
        [40] = {1014,"その装備は存在しません。",},
        [41] = {1015,"アイテムが足りません",},
        [42] = {1016,"正しい携帯番号を入力してください。",},
        [43] = {1017,"レベル上限に達しました",},
        [44] = {1018,"同名のカード数が足りません",},
        [45] = {1019,"縁データエラー",},
        [46] = {1020,"縁開放不可",},
        [47] = {1021,"出陣武将が行動不能",},
        [48] = {1022,"宝物が強化で最高レベルに到達",},
        [49] = {1023,"宝物を最高レベルまで精錬",},
        [50] = {1024,"宝物精錬済み",},
        [51] = {1025,"チャット内容が文字数上限を超過",},
        [52] = {1026,"チャット回数が多すぎます",},
        [53] = {1027,"スキル設定が見つかりません",},
        [54] = {1028,"発言禁止",},
        [55] = {1029,"宝石が存在しません",},
        [56] = {1030,"まず軍団に加入",},
        [57] = {1031,"暴動期限切れ",},
        [58] = {1032,"暴動中",},
        [59] = {1033,"武将巡回中",},
        [60] = {1034,"アイテムは売り切れました。",},
        [61] = {1035,"周遊イベントが完了しました",},
        [62] = {1036,"チャット回数制限",},
        [63] = {1037,"オークション時間ではありません",},
        [64] = {1038,"オークション終了",},
        [65] = {1039,"見知らぬ人とのDMは1日5人まで。Lv30または親密度1以上は無制限に会話できます",},
        [66] = {1040,"今日はログイン済み",},
        [67] = {1041,"デイリーボスは出現していません。",},
        [68] = {1042,"周遊開放条件のクエストをクリアしていません",},
        [69] = {1043,"クエスト未開放",},
        [70] = {1044,"交換する武将は同一陣営でなければなりません",},
        [71] = {1045,"この領地の暴動は制圧されました",},
        [72] = {1048,"素材投入の上限に達しています。",},
        [73] = {1050,"同じ錦袋は装備できません",},
        [74] = {1061,"今日の回数を使い切りました。",},
        [75] = {2001,"プレイヤーレベルが足りません",},
        [76] = {2002,"親密度が足りません",},
        [77] = {2003,"Lv18になると他プレイヤーとのDMが可能",},
        [78] = {2010,"陣営競技は一時閉鎖中です。詳しい情報はカスタマーサービスにお問い合わせください。",},
        [79] = {3001,"カードがいっぱいです",},
        [80] = {3002,"装備アイテムが満杯です",},
        [81] = {3003,"宝物アイテムが満杯です",},
        [82] = {3004,"神器アイテムが満杯です",},
        [83] = {3005,"戦馬アイテムが満杯です",},
        [84] = {4001,"評価ボーナスの宝箱報酬は受け取り済みです",},
        [85] = {4002,"評価ボーナスの宝箱の星数が足りません",},
        [86] = {4003,"存在しない星数",},
        [87] = {7003,"挑戦回数がありません",},
        [88] = {7004,"星の数が足りません",},
        [89] = {7005,"時間が正しくありません",},
        [90] = {8000,"時間前",},
        [91] = {8001,"無料回数はありません",},
        [92] = {8002,"召喚令がありません",},
        [93] = {8003,"武将登用報酬エラー",},
        [94] = {8004,"元宝が足りません。",},
        [95] = {8005,"ポイント獲得英雄エラー",},
        [96] = {8006,"その宝箱は受領済みです。",},
        [97] = {8007,"英雄ポイントを獲得するのに十分なポイントがありません",},
        [98] = {8008,"すでに最大EXPです",},
        [99] = {8009,"欠片が足りません",},
        [100] = {8010,"宝石が足りません",},
        [101] = {8014,"未着用の装備は玉石を装着できません",},
        [102] = {8015,"装備は同じ玉石を2つまでしか装着できません。",},
        [103] = {8020,"商店の購入回数上限",},
        [104] = {8021,"商店アイテムがありません",},
        [105] = {8022,"商店アイテムタイプエラー",},
        [106] = {8023,"商店アイテム更新タイプエラー",},
        [107] = {8024,"商店更新の無料回数が足りません",},
        [108] = {8025,"刷新令は商店の更新には使えません",},
        [109] = {8026,"商店の更新回数が足りません",},
        [110] = {8050,"タワー最上階に到着",},
        [111] = {8051,"掃討不能",},
        [112] = {8052,"上層の宝箱を受領していません",},
        [113] = {8053,"受領可能な宝箱がありません",},
        [114] = {8054,"宝箱は受領済みです。",},
        [115] = {8055,"層数IDエラー",},
        [116] = {8056,"奇遇が存在しません",},
        [117] = {8057,"奇遇は済んでいます",},
        [118] = {8058,"過関斬将の精鋭挑戦回数が足りません",},
        [119] = {8060,"官職レベル上限",},
        [120] = {8061,"必要な資源が足りません",},
        [121] = {8063,"戦力が足りません",},
        [122] = {8065,"オーダー重複",},
        [123] = {8070,"デイリーミッション条件が足りません",},
        [124] = {8071,"デイリーミッション重複受領",},
        [125] = {8072,"商店購入制限",},
        [126] = {8075,"侵入した南蛮はもう撃破されました",},
        [127] = {8076,"シェアなし",},
        [128] = {8077,"南蛮令が足りません",},
        [129] = {8078,"報酬は受領済みです。",},
        [130] = {8079,"報酬受領条件を満たしていません",},
        [131] = {8080,"侵入した南蛮はもう撃破されました",},
        [132] = {8081,"自分の軍団ではありません。",},
        [133] = {8082,"軍団に加入するとシェアを行えます。",},
        [134] = {8085,"目標は現在挑戦を受けています。しばらくしてからお越しください",},
        [135] = {8086,"目標のランキングは自身より高い",},
        [136] = {8087,"挑戦回数が足りません",},
        [137] = {8088,"ランキング順位未達",},
        [138] = {8089,"報酬は受領済みです。",},
        [139] = {8090,"実績条件を満たしていません。",},
        [140] = {8095,"すでに軍団に加入しています",},
        [141] = {8096,"軍団名は最大6文字",},
        [142] = {8097,"軍団名は使用されています",},
        [143] = {8098,"軍団に加入するとイベントに参加できます。",},
        [144] = {8099,"軍団団員がいません",},
        [145] = {8100,"退出時間は24時間を超過していません。",},
        [146] = {8101,"申請項目上限",},
        [147] = {8102,"軍団申請上限",},
        [148] = {8103,"申請はありません",},
        [149] = {8104,"軍団役職が足りません。",},
        [150] = {8105,"軍団は定員に達しました",},
        [151] = {8106,"軍団は解散できません",},
        [152] = {8107,"弾劾進行中",},
        [153] = {8108,"軍団の役職が定員に達しました",},
        [154] = {8109,"軍団の支援申請位置が正しくありません",},
        [155] = {8110,"軍団の支援申請IDがちがいます",},
        [156] = {8111,"軍団の支援が進行されています",},
        [157] = {8112,"軍団の支援が完了されました",},
        [158] = {8113,"この支援はすでに完了しています。他のメンバーを選択して支援してください。",},
        [159] = {8114,"軍団の支援上限",},
        [160] = {8115,"軍団の支援の完了回数が足りません。",},
        [161] = {8116,"軍団レベルが足りません",},
        [162] = {8117,"軍団の試練がありません",},
        [163] = {8118,"軍団試練の回数が足りません。",},
        [164] = {8119,"軍団の試練挑戦CD",},
        [165] = {8120,"軍団の試練ポイントが足りません",},
        [166] = {8121,"まだ軍団の試練時間になっていません",},
        [167] = {8122,"軍団の試練ポイント報酬受領済み",},
        [168] = {8123,"軍団の支援武将はクールダウン中です。",},
        [169] = {8124,"軍団の支援報酬を重複して受け取る",},
        [170] = {8125,"軍団報酬は受領済みです",},
        [171] = {8126,"軍団クイズのこの問題には答えられません",},
        [172] = {8127,"軍団クイズにこのテーマはありません。",},
        [173] = {8128,"軍団クイズ繰り返し設定時間",},
        [174] = {8129,"軍団クイズの設定時間回数上限",},
        [175] = {8130,"軍団クイズは回答済みのため、時間の変更はできません。",},
        [176] = {8131,"軍団クイズは一巡答えると再回答はできません。",},
        [177] = {8132,"敵将は討伐されました。他のターゲットを選択してください",},
        [178] = {8133,"軍団のお知らせが正しくありません",},
        [179] = {8134,"軍団クイズ重複解答",},
        [180] = {8135,"軍団イベント時間中は軍団を脱退できません",},
        [181] = {8136,"軍団イベント時間中は軍団加入を申請できません",},
        [182] = {8137,"主君、相手は今日の回数を使い切りました。",},
        [183] = {8138,"相手とレベルが近すぎるため演武できません",},
        [184] = {8139,"主君、相手は経験伝授中です",},
        [185] = {8140,"主君、相手はもうこの軍団にいません",},
        [186] = {8200,"初心者チュートリアルIDエラー",},
        [187] = {8201,"ギフトコードチェックコードエラー",},
        [188] = {8202,"ギフトコード期限切れ",},
        [189] = {8203,"ギフトコードのパラメーターがありません",},
        [190] = {8204,"ギフトコードパラメータエラー",},
        [191] = {8205,"イベント番号のギフトコード失効",},
        [192] = {8206,"ギフトコードは失効しました",},
        [193] = {8207,"ギフトコードがありません",},
        [194] = {8208,"ギフトコードイベント期限切れ",},
        [195] = {8209,"ギフトコードの使用回数を超過しました",},
        [196] = {8210,"ギフトコードエラー",},
        [197] = {8211,"ユーザー名がこのコードとバインドされているユーザーではありません",},
        [198] = {8212,"ユーザーのギフトコード交換操作が頻繁です",},
        [199] = {8213,"ギフトコードが空欄です",},
        [200] = {8214,"ギフトコードは受領済みです",},
        [201] = {8215,"ギフトコードの接続タイムアウト",},
        [202] = {8216,"このギフトコードは、このサーバーではまだ配布されていません",},
        [203] = {8217,"ギフトコードはまだ利用できません",},
        [204] = {8220,"ユーザーの開放操作が頻繁です",},
        [205] = {8221,"アクティベーションコード未入力。",},
        [206] = {8222,"アクティベーションコード、チェックエラー",},
        [207] = {8223,"アクティベーションコードのパラメータが足りません",},
        [208] = {8224,"ホワイトリストにのみ登録可能",},
        [209] = {8225,"軍団ボスは開放されていません",},
        [210] = {8226,"挑戦回数上限",},
        [211] = {8227,"挑戦CD",},
        [212] = {8228,"被挑戦回数上限",},
        [213] = {8229,"このプレイヤーは現在挑戦を受けています。",},
        [214] = {8235,"その神器は存在しません。",},
        [215] = {8236,"神器装備不能",},
        [216] = {8237,"神器レベル上限",},
        [217] = {8238,"神器練磨の資源が足りません",},
        [218] = {8250,"今はイベント期間外です",},
        [219] = {8251,"報酬は重複受領できません",},
        [220] = {8252,"あなたの情報は見つかりません",},
        [221] = {8253,"受領条件を満たしていません。",},
        [222] = {8254,"全サーバーメンテナンス中",},
        [223] = {8255,"今はチャージ還元イベント期間外です",},
        [224] = {8256,"報酬は重複受領できません",},
        [225] = {8257,"対応する主君が見つかりません",},
        [226] = {8345,"戦友数が上限に達しました",},
        [227] = {8346,"相手の戦友数が上限に達しています。",},
        [228] = {8347,"戦友ではありません",},
        [229] = {8348,"このプレイヤーはすでに戦友です。",},
        [230] = {8349,"回数を使い切ったため受領できません",},
        [231] = {8350,"ブラックリストがいっぱいです",},
        [232] = {8351,"このプレイヤーはブラックリストに登録されています。先にブラックリストから解除してください。",},
        [233] = {8352,"このプレイヤーはリストに入っていません",},
        [234] = {8353,"更新クールダウン中",},
        [235] = {8354,"気力が上限に達しました",},
        [236] = {8355,"自分は戦友にできません。",},
        [237] = {8360,"このBonusはありません",},
        [238] = {8361,"このBonusは未発給",},
        [239] = {8362,"このボーナスは支給済み",},
        [240] = {8363,"今日のBonus獲得回数が上限に達しました",},
        [241] = {8365,"軍団献納は納入済みです",},
        [242] = {8366,"軍団献納ポイントが足りません",},
        [243] = {8367,"軍団献納報酬は受領済みです",},
        [244] = {8380,"すでに同タイプの神獣が出陣しています",},
        [245] = {8381,"変身カード図鑑が開放されました",},
        [246] = {8382,"変身カード図鑑開放条件が足りません",},
        [247] = {8383,"予約済み",},
        [248] = {8384,"正しい携帯番号を入力してください。",},
        [249] = {8390,"鉱山戦では、この区域はまだ未開放です。",},
        [250] = {8391,"鉱山戦のこのポイントには移動できません。",},
        [251] = {8392,"鉱山戦挑戦ターゲットがありません",},
        [252] = {8393,"鉱山戦のこの区域には復活ポイントはありません。",},
        [253] = {8394,"鉱山戦では同一軍団は戦えません",},
        [254] = {8395,"兵力がなさすぎて城から出られない",},
        [255] = {8396,"操作無効",},
        [256] = {8397,"平和鉱では戦闘不可",},
        [257] = {8398,"悪名値が上限に達すると戦闘不能",},
        [258] = {8400,"このボスは撃破済み",},
        [259] = {8401,"投票済みです",},
        [260] = {8420,"戦場切り替えは本陣でのみ可能",},
        [261] = {8421,"移動CD中",},
        [262] = {8422,"本陣では戦闘できません",},
        [263] = {8423,"移動不能",},
        [264] = {8424,"挑戦CD中",},
        [265] = {8425,"この城市は宣戦軍団数が上限に達しました",},
        [266] = {8426,"軍団戦は停戦中",},
        [267] = {8427,"この城市は宣戦済みです。再度宣戦する必要はありません。",},
        [268] = {8428,"軍団戦ではこの城市に入れません。",},
        [269] = {8429,"軍団戦はこの拠点には移動できません",},
        [270] = {8430,"軍団戦戦闘エラー",},
        [271] = {8431,"軍団戦は破壊されました",},
        [272] = {8440,"限界突破に投入する資源が多すぎます",},
        [273] = {8450,"すでに部隊を持っています。",},
        [274] = {8451,"部隊の創設に失敗しました。",},
        [275] = {8452,"部隊がありません",},
        [276] = {8453,"部隊の人数が上限に達しています。",},
        [277] = {8454,"部隊は解散できません",},
        [278] = {8455,"隊長ではありません。隊長の操作をお待ちください",},
        [279] = {8456,"相手はもう部隊があります。",},
        [280] = {8457,"申請がありません",},
        [281] = {8458,"部隊設定エラー",},
        [282] = {8459,"すでに部隊を離脱しています",},
        [283] = {8460,"もう隊長職についています。",},
        [284] = {8461,"部隊の人数が上限に達しています。",},
        [285] = {8462,"このプレーヤーはオフラインです",},
        [286] = {8463,"このプレイヤーは皇陵残り時間が足りません",},
        [287] = {8464,"すでに皇陵内にいます",},
        [288] = {8465,"すでに申請リストに入っています",},
        [289] = {8466,"部隊レベルが要件に合っていません",},
        [290] = {8467,"このプレーヤーはオフラインです",},
        [291] = {8468,"招待なさった主君はすでに部隊に参加しており、招待できません",},
        [292] = {8469,"既に誘いました。",},
        [293] = {8480,"主君、ちょっと早すぎます",},
        [294] = {8481,"この位置には怪物はいません",},
        [295] = {8482,"その怪物は現在争奪を受けています。",},
        [296] = {8483,"移動不能",},
        [297] = {8484,"モンスター攻略中",},
        [298] = {8485,"怪物は死んだ",},
        [299] = {8486,"始皇帝陵は進入禁止。",},
        [300] = {8487,"始皇帝陵は現在、閉鎖中です。詳細はカスタマーサービスにお問い合わせください",},
        [301] = {8511,"イベント任務未達成、報酬は受領できません。",},
        [302] = {8512,"イベント任務報酬は受け取り済みです",},
        [303] = {8513,"レベルアップ報酬を受領できません。",},
        [304] = {8514,"他の軍団のケーキには献納できません",},
        [305] = {8515,"1周年記念は一時休止しています。詳細はカスタマーサービスにご連絡ください",},
        [306] = {8600,"イベント未開放",},
        [307] = {8601,"無料回数なし",},
        [308] = {8602,"無料CD中",},
        [309] = {10000,"資源が足りません。",},
        [310] = {10001,"元宝が足りません。",},
        [311] = {10002,"銀貨が足りません",},
        [312] = {10003,"行動力が足りません。",},
        [313] = {10004,"気力が足りません",},
        [314] = {10005,"EXPが足りません。",},
        [315] = {10006,"親密度 EXPが足りません",},
        [316] = {10007,"威信が足りません",},
        [317] = {10008,"勲功が足りません",},
        [318] = {10009,"魂の勾玉が足りません",},
        [319] = {10010,"精鉄が足りません",},
        [320] = {10011,"挑戦回数が足りません",},
        [321] = {10012,"挑戦回数が足りません",},
        [322] = {10013,"軍団貢献度が足りません。",},
        [323] = {10014,"神魂が足りません",},
        [324] = {10015,"神器の魂が足りません",},
        [325] = {10016,"チャージが足りません。",},
        [326] = {10017,"宝物の魂が足りません",},
        [327] = {10018,"軍団名声が足りません",},
        [328] = {10019,"獣魂が足りません",},
        [329] = {10020,"水晶が足りません",},
        [330] = {10021,"チャージポイントが足りません",},
        [331] = {10022,"兵糧が足りません",},
        [332] = {10023,"攻撃回数が足りません。",},
        [333] = {10024,"変身カード(欠片)が足りません",},
        [334] = {10025,"追撃回数が足りません",},
        [335] = {10026,"観星回数が足りません",},
        [336] = {10027,"額が足りません。",},
        [337] = {10028,"馬魂が足りません",},
        [338] = {10030,"イベント未開放",},
        [339] = {10031,"重複応援はできません",},
        [340] = {10032,"今はサポート時間ではありません",},
        [341] = {10033,"玉璧不足、チャージで玉璧を獲得できます。",},
        [342] = {10034,"応援が上限に達しました",},
        [343] = {10035,"2名の選手を同時に支持することはできません",},
        [344] = {10036,"ベット不可の選手",},
        [345] = {10126,"イベント未開放",},
        [346] = {10127,"追撃回数が足りません",},
        [347] = {10128,"三国殺関連のギフトコードは受領済みです。",},
        [348] = {10129,"追撃回数制限",},
        [349] = {10130,"イベント未開放",},
        [350] = {10131,"重複応援はできません",},
        [351] = {10132,"支持時間ではありません",},
        [352] = {10133,"イベントの開放を待つ。",},
        [353] = {10134,"応援が上限に達しました",},
        [354] = {10135,"2名の選手を同時に支持することはできません",},
        [355] = {10136,"支持不能な参戦選手",},
        [356] = {10137,"人数上限",},
        [357] = {10138,"シーズンが正しくありません",},
        [358] = {10139,"まだ第1シーズン開始時間ではありません",},
        [359] = {10140,"マッチングタイムアウト",},
        [360] = {10141,"サーバーオープンが遅すぎる",},
        [361] = {10142,"この位置の武将は出陣済み",},
        [362] = {10143,"マッチングキャンセル、タイムアウト",},
        [363] = {10144,"選択タイムアウト",},
        [364] = {10145,"王者の戦いは閉鎖中です。詳細はカスタマーサービスにお問い合わせください",},
        [365] = {10146,"出場停止期間中はマッチングできません",},
        [366] = {10147,"前シーズン報酬は受領済み",},
        [367] = {10148,"まだ試合開放時間になっていません",},
        [368] = {10149,"マッチング失敗",},
        [369] = {10150,"武将が品質要件を満たしていません",},
        [370] = {10151,"同じ出陣武将の数が範囲を超えています",},
        [371] = {10152,"マッチング中",},
        [372] = {10153,"戦闘回数が足りないため、報酬を受領できません",},
        [373] = {10154,"勝利回数が足りないため報酬を受領できません",},
        [374] = {10155,"シーズン報酬未受領",},
        [375] = {10156,"同じ錦袋は複数装備できません",},
        [376] = {10157,"この錦袋は装備不能",},
        [377] = {10158,"錦袋名が正しくありません",},
        [378] = {10159,"段位マッチング情報が見つかりません",},
        [379] = {10160,"戦馬の星ランクが上限に達しました",},
        [380] = {10161,"星UPしていない戦馬は再生できません",},
        [381] = {10162,"このタイプの武将は戦馬に騎乗できません。",},
        [382] = {10163,"その戦馬はもう他の武将が騎乗しています。",},
        [383] = {10166,"前の対戦が終了していません。しばらくしてから再度マッチングしてください",},
        [384] = {10171,"主君は回帰資格がないため、回帰サーバーへログインできません。",},
        [385] = {10210,"主君、玉璧が不足しています、チャージしてください。",},
        [386] = {10211,"今は武将登用情報を取得できません。しばらくしてから再度お試しください",},
        [387] = {10212,"無料回数を使い切りました",},
        [388] = {10213,"無料回数はクールダウン中です",},
        [389] = {10214,"武将登用が終了しました。武将商店(金)に確認しに行きましょう",},
        [390] = {10215,"この拠点は他の軍団が駐留しています。新たな駐留拠点を選択してください",},
        [391] = {10312,"回数を使い切っています",},
        [392] = {10350,"Bonus　Rainイベントは参加済みです。",},
        [393] = {10351,"Bonusがありません",},
        [394] = {10352,"神獣がありません",},
        [395] = {10353,"神獣突破に必要な神獣が足りません",},
        [396] = {10354,"神獣突破の星ランクが足りません",},
        [397] = {10355,"神獣突破素材が多すぎます",},
        [398] = {10356,"神獣の突破素材が足りません。",},
        [399] = {10357,"神獣は突破できません。",},
        [400] = {10358,"神獣突破素材が一致しません",},
        [401] = {10370,"私 X X X はチート行為を行っていません。",},
        [402] = {10371,"まだBonus Rainイベントに参加していません。",},
        [403] = {10372,"Bonusをすべて受領していません",},
        [404] = {10187,"鼓舞時間ではありません",},
        [405] = {10188,"そこへは移動できません。",},
        [406] = {10189,"移動はクールダウン中",},
        [407] = {10190,"ボスは撃破されました",},
        [408] = {10191,"攻撃クールダウン中",},
        [409] = {10192,"ターゲットが存在しません",},
        [410] = {10193,"誤った拠点",},
        [411] = {10194,"戦場が存在しません",},
        [412] = {10195,"討死復活中",},
        [413] = {10196,"サーバーオープン日数が足りません",},
        [414] = {10197,"未開放",},
        [415] = {10198,"戦闘未開放",},
        [416] = {10199,"参戦資格なし",},
        [417] = {10200,"拠点に到達していません",},
        [418] = {10201,"目標は移動中",},
        [419] = {10202,"クロスサーバー軍団戦、緊急閉鎖",},
        [420] = {10203,"目的地へは行けません",},
        [421] = {10204,"戦闘情報が見つかりません",},
        [422] = {10205,"拠点に敵側プレイヤーがいます。",},
        [423] = {10206,"相手は戦闘中です",},
        [424] = {10207,"参加プレイヤーがいません。",},
        [425] = {10208,"参加資格がありません",},
        [426] = {10209,"応援済み",},
        [427] = {10309,"先に軍団に加入してください",},
        [428] = {10373,"イベント当日に創設された軍団には兵糧輸送車はありません",},
        [429] = {10374,"権限が不十分です",},
        [430] = {10375,"兵糧輸送車はレベルアップできません",},
        [431] = {10376,"兵糧輸送車のレベルは上限に達しています。",},
        [432] = {10377,"兵糧輸送車は出発しました",},
        [433] = {10378,"兵糧輸送車は破壊されました",},
        [434] = {10389,"兵糧輸送車はまだ出発していません",},
        [435] = {10390,"兵糧輸送車は出発しました。ここにはいません",},
        [436] = {10391,"攻撃クールダウン中",},
        [437] = {10392,"イベント期間中は軍団を解散できません",},
        [438] = {10393,"兵糧輸送車の生成後に軍団に加入した団員は献納できません",},
        [439] = {10394,"主君の兵力が足りません",},
        [440] = {10395,"華容道の修繕中は、暗渡陳倉を体験できます",},
        [441] = {10396,"暗渡陳倉は緊急修正中です。ご不便をおかけし、申し訳ございません",},
        [442] = {10397,"再度の献納はできません",},
        [443] = {10398,"所属軍団の献納者数が5人未満のため発車できません",},
        [444] = {10399,"プレイヤーはまだ申請していません",},
        [445] = {10400,"主君、しばらくしてから討伐してください",},
        [446] = {10401,"BOSS力溜め状態非破招陣営",},
        [447] = {10402,"主君、略奪の準備はまだ終わっていません。",},
        [448] = {10403,"主君、略奪されるプレイヤーはリストにありません",},
        [449] = {10404,"主君、略奪されるプレイヤーが存在しません",},
        [450] = {10405,"主君、略奪されたプレーヤーはポイントがありません",},
        [451] = {10406,"主君、次のBOSSはまだ来ていません",},
        [452] = {10407,"主君、軍団の味方を略奪できません。",},
        [453] = {10408,"主君、この戦法枠は開放されました",},
        [454] = {10412,"主君、この戦法は有効されました。",},
        [455] = {10414,"主君、この戦法は他の武将に装備しました。",},
        [456] = {10416,"主君、この戦法枠は他の戦法を装備しました。",},
        [457] = {10418,"主君、この武将はこの戦法を装備できません。",},
        [458] = {10501,"主君、イベントが終了しました",},
        [459] = {10502,"主君、商品の価格が変わりました",},
        [460] = {10503,"クライアントに認証が必要です",},
        [461] = {10504,"官職が不足しています",},
        [462] = {10505,"まだ全部普通陣位を演練していません",},
        [463] = {10506,"陣法は演練されました。",},
        [464] = {10510,"デフォルト背景が存在しません",},
        [465] = {40010,"デイリークエストレベルが足りません",},
        [466] = {40011,"デイリークエストは今日は開放されません",},
        [467] = {40012,"デイリークエスト前提関門がクリアされていません",},
        [468] = {40013,"デイリークエスト回数を使い切りました",},
        [469] = {1004097,"音声パラメータエラー",},
        [470] = {1004098,"音声API呼び出しエラー",},
        [471] = {1004099,"音声初期化エラー",},
        [472] = {1004100,"音声入力中",},
        [473] = {1004101,"無効な音声ポーリング",},
        [474] = {1004102,"音声APIモードエラー",},
        [475] = {1004103,"音声データがエラーまたは無効です",},
        [476] = {1004104,"音声ファイルが開けませんでした。",},
        [477] = {1004105,"音声が初期化されていません",},
        [478] = {1004106,"TTSエンジンが実装されていません。",},
        [479] = {1004107,"ボイスC#APIエラー",},
        [480] = {1004108,"音声情報の更新はありません",},
        [481] = {1008193,"音声リアルタイムエラー",},
        [482] = {1008194,"チャットルーム参加に失敗",},
        [483] = {1008195,"チャットルーム退出エラー",},
        [484] = {1008196,"チャットルーム音声エラー",},
        [485] = {1008197,"チャットルーム創設失敗",},
        [486] = {1008198,"相応のチャットルームがありません",},
        [487] = {1008199,"チャットルームから退出するのは正しくありません",},
        [488] = {1008200,"すでにチャットルーム内にいます",},
        [489] = {1012289,"音声キーエラー",},
        [490] = {1012290,"音声パスエラー",},
        [491] = {1012291,"アンドロイドスマホのマイクの権限が未許可です。権限を許可してください。",},
        [492] = {1012292,"音声パスワードが違います。",},
        [493] = {1012293,"音声アップロードに失敗しました。",},
        [494] = {1012294,"ネットワークはビジー状態です",},
        [495] = {1012295,"音声をダウンロードできませんでした",},
        [496] = {1012296,"音声ファイルエラー",},
        [497] = {1012297,"音声ファイルエラー",},
        [498] = {1012298,"音声ファイル処理中",},
        [499] = {1012299,"音声のアップロード制限",},
        [500] = {1020481,"設定で音声権限を有効にしてください",},
        [501] = {1020482,"ネットワークエラー",},
        [502] = {1020483,"ネットワークエラー",},
        [503] = {1024577,"音声ネットワークエラー",},
        [504] = {1028673,"すでに処理中",},
        [505] = {1032769,"キャラクターエラー",},
        [506] = {1032770,"キャラクター処理中",},
        [507] = {1032771,"キャラクターは部屋にいません。",},
        [508] = {1036865,"syncエラー",},
        [509] = {1036866,"チャットルームが小さすぎます",},
        [510] = {2000001,"チャット参加エラー",},
        [511] = {2000002,"チャットルーム参加タイムアウト",},
        [512] = {2000003,"チャットデータエラー",},
        [513] = {2000004,"異常なエラーコード",},
        [514] = {2000005,"ネットワークエラー。ネットワークをご確認ください",},
        [515] = {2000006,"チャットルームから退出しました。",},
        [516] = {2000007,"チャットキーを取得しました",},
        [517] = {2000008,"チャットの秘密の鍵の獲得時間切れ。",},
        [518] = {2000009,"通信エラー",},
        [519] = {2000010,"異常なエラーコード",},
        [520] = {2000011,"音声をアップロードしました",},
        [521] = {2000012,"音声ファイルのアップロードエラー",},
        [522] = {2000013,"音声をダウンロードしました",},
        [523] = {2000014,"音声をダウンロードできませんでした",},
        [524] = {2000015,"音声を変換しました",},
        [525] = {2000016,"ボイス変換タイムアウト",},
        [526] = {2000017,"サウンドサーバーエラー",},
        [527] = {2000018,"音声を変換しました",},
        [528] = {2000019,"ボイス変換タイムアウト",},
        [529] = {2000020,"サウンドサーバーエラー",},
        [530] = {2000021,"音声再生終了",},
        [531] = {2000022,"チャットルームが切断されました",},
        [532] = {2000023,"不明な音声エラー",},
        [533] = {2000024,"キャラクターを切り換えました",},
        [534] = {2000025,"キャラクター交代に失敗しました。",},
        [535] = {2000026,"音声整理エラー",},
        [536] = {2000027,"キャラクターエラー",},
        [537] = {2000028,"チャットサーバーエラー",},
        [538] = {2000029,"音声の再試行が必要です",},
        [539] = {10520,"招待コードが存在しません",},
        [540] = {10521,"招待コードの使用回数が上限に達しました",},
        [541] = {10522,"招待コードを入力済みです",},
        [542] = {10523,"イベントが終了しました",},
        [543] = {10524,"イベントが存在しません",},
        [544] = {10525,"報酬を受け取りました",},
        [545] = {10526,"条件に満たしていません",},
        [546] = {10527,"自分の招待コードを使用できません",},
        [547] = {10528,"招待コードを使用できません",},
        [548] = {10529,"招待コードが無功です",},
    },

    -- index
    __index_error_id = {
        [0] = 1,
        [1] = 2,
        [10] = 11,
        [10000] = 309,
        [10001] = 310,
        [10002] = 311,
        [10003] = 312,
        [10004] = 313,
        [10005] = 314,
        [10006] = 315,
        [10007] = 316,
        [10008] = 317,
        [10009] = 318,
        [10010] = 319,
        [10011] = 320,
        [10012] = 321,
        [10013] = 322,
        [10014] = 323,
        [10015] = 324,
        [10016] = 325,
        [10017] = 326,
        [10018] = 327,
        [10019] = 328,
        [10020] = 329,
        [10021] = 330,
        [10022] = 331,
        [10023] = 332,
        [10024] = 333,
        [10025] = 334,
        [10026] = 335,
        [10027] = 336,
        [10028] = 337,
        [10030] = 338,
        [10031] = 339,
        [10032] = 340,
        [10033] = 341,
        [10034] = 342,
        [10035] = 343,
        [10036] = 344,
        [1004] = 30,
        [1004097] = 469,
        [1004098] = 470,
        [1004099] = 471,
        [1004100] = 472,
        [1004101] = 473,
        [1004102] = 474,
        [1004103] = 475,
        [1004104] = 476,
        [1004105] = 477,
        [1004106] = 478,
        [1004107] = 479,
        [1004108] = 480,
        [1005] = 31,
        [1006] = 32,
        [1007] = 33,
        [1008] = 34,
        [1008193] = 481,
        [1008194] = 482,
        [1008195] = 483,
        [1008196] = 484,
        [1008197] = 485,
        [1008198] = 486,
        [1008199] = 487,
        [1008200] = 488,
        [1009] = 35,
        [1010] = 36,
        [1011] = 37,
        [1012] = 38,
        [1012289] = 489,
        [1012290] = 490,
        [1012291] = 491,
        [1012292] = 492,
        [1012293] = 493,
        [1012294] = 494,
        [1012295] = 495,
        [1012296] = 496,
        [1012297] = 497,
        [1012298] = 498,
        [1012299] = 499,
        [10126] = 345,
        [10127] = 346,
        [10128] = 347,
        [10129] = 348,
        [1013] = 39,
        [10130] = 349,
        [10131] = 350,
        [10132] = 351,
        [10133] = 352,
        [10134] = 353,
        [10135] = 354,
        [10136] = 355,
        [10137] = 356,
        [10138] = 357,
        [10139] = 358,
        [1014] = 40,
        [10140] = 359,
        [10141] = 360,
        [10142] = 361,
        [10143] = 362,
        [10144] = 363,
        [10145] = 364,
        [10146] = 365,
        [10147] = 366,
        [10148] = 367,
        [10149] = 368,
        [1015] = 41,
        [10150] = 369,
        [10151] = 370,
        [10152] = 371,
        [10153] = 372,
        [10154] = 373,
        [10155] = 374,
        [10156] = 375,
        [10157] = 376,
        [10158] = 377,
        [10159] = 378,
        [1016] = 42,
        [10160] = 379,
        [10161] = 380,
        [10162] = 381,
        [10163] = 382,
        [10166] = 383,
        [1017] = 43,
        [10171] = 384,
        [1018] = 44,
        [10187] = 404,
        [10188] = 405,
        [10189] = 406,
        [1019] = 45,
        [10190] = 407,
        [10191] = 408,
        [10192] = 409,
        [10193] = 410,
        [10194] = 411,
        [10195] = 412,
        [10196] = 413,
        [10197] = 414,
        [10198] = 415,
        [10199] = 416,
        [1020] = 46,
        [10200] = 417,
        [10201] = 418,
        [10202] = 419,
        [10203] = 420,
        [10204] = 421,
        [1020481] = 500,
        [1020482] = 501,
        [1020483] = 502,
        [10205] = 422,
        [10206] = 423,
        [10207] = 424,
        [10208] = 425,
        [10209] = 426,
        [1021] = 47,
        [10210] = 385,
        [10211] = 386,
        [10212] = 387,
        [10213] = 388,
        [10214] = 389,
        [10215] = 390,
        [1022] = 48,
        [1023] = 49,
        [1024] = 50,
        [1024577] = 503,
        [1025] = 51,
        [1026] = 52,
        [1027] = 53,
        [1028] = 54,
        [1028673] = 504,
        [1029] = 55,
        [1030] = 56,
        [10309] = 427,
        [1031] = 57,
        [10312] = 391,
        [1032] = 58,
        [1032769] = 505,
        [1032770] = 506,
        [1032771] = 507,
        [1033] = 59,
        [1034] = 60,
        [1035] = 61,
        [10350] = 392,
        [10351] = 393,
        [10352] = 394,
        [10353] = 395,
        [10354] = 396,
        [10355] = 397,
        [10356] = 398,
        [10357] = 399,
        [10358] = 400,
        [1036] = 62,
        [1036865] = 508,
        [1036866] = 509,
        [1037] = 63,
        [10370] = 401,
        [10371] = 402,
        [10372] = 403,
        [10373] = 428,
        [10374] = 429,
        [10375] = 430,
        [10376] = 431,
        [10377] = 432,
        [10378] = 433,
        [1038] = 64,
        [10389] = 434,
        [1039] = 65,
        [10390] = 435,
        [10391] = 436,
        [10392] = 437,
        [10393] = 438,
        [10394] = 439,
        [10395] = 440,
        [10396] = 441,
        [10397] = 442,
        [10398] = 443,
        [10399] = 444,
        [1040] = 66,
        [10400] = 445,
        [10401] = 446,
        [10402] = 447,
        [10403] = 448,
        [10404] = 449,
        [10405] = 450,
        [10406] = 451,
        [10407] = 452,
        [10408] = 453,
        [1041] = 67,
        [10412] = 454,
        [10414] = 455,
        [10416] = 456,
        [10418] = 457,
        [1042] = 68,
        [1043] = 69,
        [1044] = 70,
        [1045] = 71,
        [1048] = 72,
        [1050] = 73,
        [10501] = 458,
        [10502] = 459,
        [10503] = 460,
        [10504] = 461,
        [10505] = 462,
        [10506] = 463,
        [10510] = 464,
        [10520] = 539,
        [10521] = 540,
        [10522] = 541,
        [10523] = 542,
        [10524] = 543,
        [10525] = 544,
        [10526] = 545,
        [10527] = 546,
        [10528] = 547,
        [10529] = 548,
        [1061] = 74,
        [11] = 12,
        [12] = 13,
        [13] = 14,
        [14] = 15,
        [15] = 16,
        [16] = 17,
        [17] = 18,
        [18] = 19,
        [19] = 20,
        [2] = 3,
        [20] = 21,
        [2000001] = 510,
        [2000002] = 511,
        [2000003] = 512,
        [2000004] = 513,
        [2000005] = 514,
        [2000006] = 515,
        [2000007] = 516,
        [2000008] = 517,
        [2000009] = 518,
        [2000010] = 519,
        [2000011] = 520,
        [2000012] = 521,
        [2000013] = 522,
        [2000014] = 523,
        [2000015] = 524,
        [2000016] = 525,
        [2000017] = 526,
        [2000018] = 527,
        [2000019] = 528,
        [2000020] = 529,
        [2000021] = 530,
        [2000022] = 531,
        [2000023] = 532,
        [2000024] = 533,
        [2000025] = 534,
        [2000026] = 535,
        [2000027] = 536,
        [2000028] = 537,
        [2000029] = 538,
        [2001] = 75,
        [2002] = 76,
        [2003] = 77,
        [2010] = 78,
        [21] = 22,
        [22] = 23,
        [23] = 24,
        [24] = 25,
        [25] = 26,
        [26] = 27,
        [27] = 28,
        [28] = 29,
        [3] = 4,
        [3001] = 79,
        [3002] = 80,
        [3003] = 81,
        [3004] = 82,
        [3005] = 83,
        [4] = 5,
        [4001] = 84,
        [40010] = 465,
        [40011] = 466,
        [40012] = 467,
        [40013] = 468,
        [4002] = 85,
        [4003] = 86,
        [5] = 6,
        [6] = 7,
        [7] = 8,
        [7003] = 87,
        [7004] = 88,
        [7005] = 89,
        [8] = 9,
        [8000] = 90,
        [8001] = 91,
        [8002] = 92,
        [8003] = 93,
        [8004] = 94,
        [8005] = 95,
        [8006] = 96,
        [8007] = 97,
        [8008] = 98,
        [8009] = 99,
        [8010] = 100,
        [8014] = 101,
        [8015] = 102,
        [8020] = 103,
        [8021] = 104,
        [8022] = 105,
        [8023] = 106,
        [8024] = 107,
        [8025] = 108,
        [8026] = 109,
        [8050] = 110,
        [8051] = 111,
        [8052] = 112,
        [8053] = 113,
        [8054] = 114,
        [8055] = 115,
        [8056] = 116,
        [8057] = 117,
        [8058] = 118,
        [8060] = 119,
        [8061] = 120,
        [8063] = 121,
        [8065] = 122,
        [8070] = 123,
        [8071] = 124,
        [8072] = 125,
        [8075] = 126,
        [8076] = 127,
        [8077] = 128,
        [8078] = 129,
        [8079] = 130,
        [8080] = 131,
        [8081] = 132,
        [8082] = 133,
        [8085] = 134,
        [8086] = 135,
        [8087] = 136,
        [8088] = 137,
        [8089] = 138,
        [8090] = 139,
        [8095] = 140,
        [8096] = 141,
        [8097] = 142,
        [8098] = 143,
        [8099] = 144,
        [8100] = 145,
        [8101] = 146,
        [8102] = 147,
        [8103] = 148,
        [8104] = 149,
        [8105] = 150,
        [8106] = 151,
        [8107] = 152,
        [8108] = 153,
        [8109] = 154,
        [8110] = 155,
        [8111] = 156,
        [8112] = 157,
        [8113] = 158,
        [8114] = 159,
        [8115] = 160,
        [8116] = 161,
        [8117] = 162,
        [8118] = 163,
        [8119] = 164,
        [8120] = 165,
        [8121] = 166,
        [8122] = 167,
        [8123] = 168,
        [8124] = 169,
        [8125] = 170,
        [8126] = 171,
        [8127] = 172,
        [8128] = 173,
        [8129] = 174,
        [8130] = 175,
        [8131] = 176,
        [8132] = 177,
        [8133] = 178,
        [8134] = 179,
        [8135] = 180,
        [8136] = 181,
        [8137] = 182,
        [8138] = 183,
        [8139] = 184,
        [8140] = 185,
        [8200] = 186,
        [8201] = 187,
        [8202] = 188,
        [8203] = 189,
        [8204] = 190,
        [8205] = 191,
        [8206] = 192,
        [8207] = 193,
        [8208] = 194,
        [8209] = 195,
        [8210] = 196,
        [8211] = 197,
        [8212] = 198,
        [8213] = 199,
        [8214] = 200,
        [8215] = 201,
        [8216] = 202,
        [8217] = 203,
        [8220] = 204,
        [8221] = 205,
        [8222] = 206,
        [8223] = 207,
        [8224] = 208,
        [8225] = 209,
        [8226] = 210,
        [8227] = 211,
        [8228] = 212,
        [8229] = 213,
        [8235] = 214,
        [8236] = 215,
        [8237] = 216,
        [8238] = 217,
        [8250] = 218,
        [8251] = 219,
        [8252] = 220,
        [8253] = 221,
        [8254] = 222,
        [8255] = 223,
        [8256] = 224,
        [8257] = 225,
        [8345] = 226,
        [8346] = 227,
        [8347] = 228,
        [8348] = 229,
        [8349] = 230,
        [8350] = 231,
        [8351] = 232,
        [8352] = 233,
        [8353] = 234,
        [8354] = 235,
        [8355] = 236,
        [8360] = 237,
        [8361] = 238,
        [8362] = 239,
        [8363] = 240,
        [8365] = 241,
        [8366] = 242,
        [8367] = 243,
        [8380] = 244,
        [8381] = 245,
        [8382] = 246,
        [8383] = 247,
        [8384] = 248,
        [8390] = 249,
        [8391] = 250,
        [8392] = 251,
        [8393] = 252,
        [8394] = 253,
        [8395] = 254,
        [8396] = 255,
        [8397] = 256,
        [8398] = 257,
        [8400] = 258,
        [8401] = 259,
        [8420] = 260,
        [8421] = 261,
        [8422] = 262,
        [8423] = 263,
        [8424] = 264,
        [8425] = 265,
        [8426] = 266,
        [8427] = 267,
        [8428] = 268,
        [8429] = 269,
        [8430] = 270,
        [8431] = 271,
        [8440] = 272,
        [8450] = 273,
        [8451] = 274,
        [8452] = 275,
        [8453] = 276,
        [8454] = 277,
        [8455] = 278,
        [8456] = 279,
        [8457] = 280,
        [8458] = 281,
        [8459] = 282,
        [8460] = 283,
        [8461] = 284,
        [8462] = 285,
        [8463] = 286,
        [8464] = 287,
        [8465] = 288,
        [8466] = 289,
        [8467] = 290,
        [8468] = 291,
        [8469] = 292,
        [8480] = 293,
        [8481] = 294,
        [8482] = 295,
        [8483] = 296,
        [8484] = 297,
        [8485] = 298,
        [8486] = 299,
        [8487] = 300,
        [8511] = 301,
        [8512] = 302,
        [8513] = 303,
        [8514] = 304,
        [8515] = 305,
        [8600] = 306,
        [8601] = 307,
        [8602] = 308,
        [9] = 10,
    }
}

return net_msg_error