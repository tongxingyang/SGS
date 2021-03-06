--play_horse_hero

local play_horse_hero = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --序号-int 
      text_3 = 2,    --文本3-string 
      text_4 = 3,    --文本4-string 
      text_1 = 4,    --文本1-string 
      text_2 = 5,    --文本2-string 
    
    },
    -- data
    _data = {
        [1] = {1,"私の家は司馬世家だ。この試合に負けるわけにはいかない。","誰だ、大胆にも私の前を走り抜けようとしている奴は?この梟首の杖にかしずけ。","武術は虎豹を制御し、智慧を集めれば天下を取れる。足が長ければ華容道競走で勝てる！","昨夜の天象を観て指折り数えたところ、今日の1等はきっと私だ。",},
        [2] = {2,"大鉄錘を持ってたってお前より速く走れる。信じるか?","わしは片手で牛の尾を引っ張って百歩歩いたんだ。ちょっとした競争など何でもない。","太ってるからって侮るな。転がったら速いんだから！","足の速いデブなんて見たことないだろ。いずれ見せてやるぜ。",},
        [3] = {3,"私は地形利用に長けていることで知られています。戦場の地形はすでに把握しております。","私はこの試合のために、新しい装備を買い入れたんだ。","見せてやろう、1番のイケメンの、キレッキレの足取りを。","私には無敵の盾がある。競走の時に服を引っ張ろうとか考えないように。",},
        [4] = {4,"私は腰から下は全部足だ。ゆっくり走れるわけがない！","男性が私を2丈先から走らせたのです。","私は女の子だから、皆さん手加減してくださいね。","私より速く走ったら、鞭が待っているからな。",},
        [5] = {5,"私は小さい頃から市場を頻繁に行き来してたから、足は頑丈なんだ。","ここだけの話、于禁は毎回私に勝てないんだ。","チビだからって、走るのも遅いと思うなよ。","「五将軍」の中では私がいちばん速い。",},
        [6] = {6,"父は私をとても可愛がってくれた。父の顔を潰すわけにはいかない。","昨日も兄の曹丕と華容道競走の練習をした。私は兄より足が遅くなんかないぞ。","どちらが重いか軽いかは量ればわかる。どちらが速いか遅いかは比べればよい。","ジョギングは健康に役立ち、病気にかかりにくくする。",},
        [7] = {7,"柏夫人は若いけれど、私のほうが品があるわ。","来ぬ者は去らず、悔い無き者は恨まず。","司馬懿は出て行きなさい！今日はあたしが必ず1位を取るわ！","この試合に勝って、司馬懿に見直させてやる！",},
        [8] = {8,"待て、私の疾風の如き速さを見せてやる。","楽進め、またも私をのろま呼ばわりしたら斬ってやる。","疾風の行者なんて呼び名はどうだ?もし勝てたらこの名を使おう。","楽進の話など聞かなくていい。「五将軍」の中で一番足が速いのは私だ。",},
        [9] = {9,"長らく使っていなかったからな、刀に錆が浮いている","走り終わったら、暗殺に行かなきゃ！","私は刺客、スピードは最速だ！","華容道競走で1等になれば銀貨が貰える。そしたら新しい装備が買えるぞ！",},
        [10] = {10,"男女の楽しみを知ってこそ、人生の味が分かる。","試合なんて面白くないわ。試合が終わったらうちに遊びにいらっしゃい。","曹操が私の試合を見に来るのか?","わたくしは体が弱く、駆けっこも不得手です。",},
        [11] = {11,"子供を抱いていても、君達より速く走れる。","一片の赤心 乱世を平らげ、足底に風生じ 頂を制す！","七進七出、スピードなら俺が一番だ！","覚えておけ、我こそ常勝将軍と呼ばれる男だ。",},
        [12] = {12,"温酒斬華雄が何だ。いずれ私が1番になってやる。","俺は赤兎馬に乗る男、早く走れぬはずがない！","「五虎大将軍」の筆頭。武聖。一番でないと面子が立たない。","若い頃、罪を犯して幽州涿郡に逃げてきたから、走るのが早い。",},
        [13] = {13,"屠殺屋は1位になれないなんて誰が言った?今日はあんたらの見聞を大いに広めてやろう。","燕人張飛、今日こそは1位になる。誰にも邪魔はさせん！","わしが一声吠えれば、お前たち全員の胆をつぶせるぞ。","この甕の酒を飲んだら華容道競走に参加してやろう。",},
        [14] = {14,"冗談抜きに、五虎大将軍の中では私が一番足が速い。","私の姓は馬だ。馬のように速く走れるに決まっているだろう。","幼い頃から馬を捕らえてきた男だ、疾駆する駿馬だな。","来たな黄忠、すぐに連携技で私を射出しろ！",},
        [15] = {15,"七擒孟獲の話はやめてくれ。諸葛亮を出させろ、トラックで勝負だ。","謀略ならば策士には及ばないだろう。だが、徒競走なら勝機はある！","族人の中では私がいちばん足が速い。","我らを南蛮呼ばわりしたのは誰だ?腕に覚えがあるなら、出てきて勝負しろ！",},
        [16] = {16,"私は山で兎や猪を狩るから、とてもすばしこい。","諸葛亮を出しなさい！競技場で旦那様の七縦七擒の仇を討ってやります。","私のシッポ、セクシーでしょ！","女子だけど、走るのはあんた達ほど遅くないわ。",},
        [17] = {17,"仁徳は天下を治める。試合は参加することが大事。","早く試合を始めよう。終わったらパンダを抱きに行くんだから。","殺し合いなど、じつにくだらん。華容道競走のほうがまだ面白い。","パンダを線の向こうに投げたけど、勝ったことになるかな?",},
        [18] = {18,"え、こんなに大勢で競うの?ちょっと怖いな。","人だらけだ。暑気あたりに気をつけてください！","試合の観戦者がこんなに。恥ずかしい！","主君、星彩は主君のために絶対に優勝してみせます！",},
        [19] = {19,"いつかきっと父上を超えてみせる。今日一位になるところから始まるんだ！","今日私は競争で1位となり、父上の面子を立てる。","優れた父に出来の悪い子は無い、関羽の娘も同様です。","この関銀屏は美しく聡明で、武芸も身に着けています。これで父上のために1等を取ってあげられる。",},
        [20] = {20,"まだカウントダウン?さっさと始めさせろ！","一番をとることで、自分の価値を証明する！","私は幼い頃から騎射に精通している。華容道競走だって何のそのだ！","主君のために、私は必ず優勝してみせます！",},
        [21] = {21,"この孫策、今日一番を奪う勢いだ！","江東の子弟たちよ、よく見るのだ！","私は江東の小覇王・孫策だ！","江東の子弟がどうして天下を恐れることがあろう！",},
        [22] = {22,"試合には勝っても人生には負ける。そんなに私に勝ちたいのか?","ちょっと見てくれ、走ったら見栄えがいいか?","太陽が燦々と照ってる。日焼けしたらどうするの?幸い蓮花幽傘があるからいいけど！","孫策は、私を応援してくれると約束した。",},
        [23] = {23,"ふふっ、星華双扇がきっとあたしを優勝させてくれるなの！","勝ち負けは重要ではない。いちばん重要なのは楽しいかどうかだ！","ふんっ、女だからってバカにしないでよね！","周瑜が言った。勝ち負けは重要ではない。いちばん重要なのは楽しいかどうかだ！",},
        [24] = {24,"この錦帆の怒涛の下では、お前らみんなクズだ！","この甘寧の名を優勝杯に刻んでやるぜ！","ここは、この甘寧の縄張りだ！","ここは私の縄張りだ。私が優勝するに決まっている！",},
        [25] = {25,"兄上がいても譲れません！試合には全力で臨みます！","私があんまり速く走ると、劉備が着いてこられないだろう。","英姿颯爽、男には負けぬ！","戦場の道でも平気なのに、こんな軟弱なコースなら楽勝だ。",},
        [26] = {26,"私を若気の至りなどと罵っている奴は誰だ！1等になっていいところを見せてやる！","ハハ、今日こそは私が1位になってやる！","少し静かに演奏してくれないか?鼓膜が破れそうだ！","ひとひらの雲をくれれば、10万8千里を走って見せよう！",},
        [27] = {27,"君子をしたって集まる、召公は全ての国の保護者。","私は糸、あなたは針に似て、二人はいつも一緒で離れることはない。","私の心は変わらぬ月のよう。","私は歌い、あなたは奏でる。輝く春はなんと短いことか。",},
        [28] = {28,"私を陥れたのは誰だ。吐け?","ちょっと見てくれ。これはパラリンピックか?","どんないたずらだ?目の見えない私に走らせるとは！","えーと、もし人のレーンを走っちゃったらどうなるの?",},
        [29] = {29,"我が諸葛一族は、人才を輩出している！","諸葛亮は「志はできるだけ高く、遠く持て」と言った。一番になる気があるからこそ競走に参加するのだ。","灯篭を持って走る私、イケてるだろ?","孫権が私の顔は長くてロバのようだと言うんだが、お前たちもそう思うか?",},
        [30] = {30,"お前らは馬に乗っても私に勝てまい！","天下はすべてこの呂布のもんだ。このみみっちいコースもな！","俺の貂蝉は?俺の赤兎は?","この戦神の呂布は馬に乗っていなくても、お前たちには楽勝だ。",},
        [31] = {31,"わたくし本当に呂布さまをお慕いしています。","勝っても負けても、呂布は今までどおり私を愛してくれる！","ううっ…わたくしは誠心誠意を尽くしており、呂布さまを思う心に偽りはございません。","ゴールで出迎えてくれるのは誰だろう?",},
        [32] = {32,"誰だ、太師である私の前を走って行ったのは、あの者を斬れ！","我ら涼州人士は、負けを恐れたことなどない！","ハハ、太師である私を選ぶとは、お目が高い！","1位になったら、この董卓が美酒、美食、美女を馳走してやる！",},
        [33] = {33,"人形の腹の中には毒が仕込んである。こちらに近づいたら毒殺されるぞ！","道法は玄妙。試合など楽勝！","少しでも近づけば、彼を毒殺する！","君たちは競走に来たのだろう。ワシ(于吉)はうちの傀儡を散歩させに来たのじゃよ！",},
        [34] = {34,"1位になった者に、爵位と封地を与えよう！","私の天授の神脚は、走ったらそりゃあ速い！","私の玉璽が欲しい者はおるか?私に勝てる者は?","私は袁家の嫡子だ。今日は絶対に1等になる！",},
        [35] = {35,"この聞きなれた音楽は…そうか、時間だ。","儚い人生だ、気晴らしに試合に参加して楽しもうじゃないか。","馬頭琴、重っ。今日は1位になれるかな?","わたくしは琴を弾き、詩を作り、文章を書くことができます。本当にわたくしを出場させるのですか?",},
        [36] = {36,"私なら呂布に勝てる。私を信じてみる?","今日栄冠を手に入れた者を私は補佐します！","呂布さえいなければ、1番になるのは私だ！","今日の試合に勝てたら、覇業成就に近づける！",},
        [37] = {37,"名門の子孫は、必ず1等になる！","阿斗よ、徒競走が終わったらパンダと遊ぼう。","私は竹馬に乗る。私より速いという奴はいないか！","ほら、梨をあげるから、ちょっと手加減してね！",},
        [38] = {38,"父上、約束してください。華容道競走で勝ったら、袁術の息子には嫁がなくていいと！","待ってろよ、優勝してトロフィーを父上にあげるんだ。酒杯にしてくれって！","私の父は戦神・呂布だ！だから負けるわけにはいかない！","私は戦場で敵を殺したいのだ。試合に参加するなど、この偉大な才能の浪費だ！",},
        [39] = {39,"何進の奴が私を殺す気か。もっと速く走らないと！","董卓が京に入る。みな急げ！","子孫が死に絶える気持ち、味わってみたいか?","ふんっ、試合で勝てなかったら、お前を切り刻んでやる！",},
        [40] = {40,"この体形だ、一目で優勝するってわかるだろ。","勇者は恐れるものなし。必ず1番になってみせる！","待て、私の前を走っているのはどこのどいつだ。この大錘が許さん！","ゴホン、諸兄に言っておくが、君たちは私には勝てない！",},
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
        [5] = 5,
        [6] = 6,
        [7] = 7,
        [8] = 8,
        [9] = 9,
    }
}

return play_horse_hero