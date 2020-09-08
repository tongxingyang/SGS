--mine_battle_buff

local mine_battle_buff = {
    version =  1,
    -- key
    __key_map = {
      buff_id = 1,    --id-int 
      buff_name = 2,    --类型名称-string 
      buff_txt = 3,    --类型描述-string 
    
    },
    -- data
    _data = {
        [1] = {101,"疲労","疲労度50、戦闘中ダメージ-5%",},
        [2] = {102,"疲労","疲労度55、戦闘ダメージ-10%",},
        [3] = {103,"疲労","疲労度60、戦闘ダメージ-15%",},
        [4] = {104,"疲労","疲労度65、戦闘ダメージ-20%",},
        [5] = {105,"疲労","疲労度が70になると、戦闘中のダメージ-25%。",},
        [6] = {106,"疲労","疲労度75、戦闘ダメージ-30%",},
        [7] = {107,"疲労","疲労度80、戦闘ダメージ-35%",},
        [8] = {108,"疲労","疲労度85、戦闘中ダメージ-40%",},
        [9] = {109,"疲労","疲労度90、戦闘ダメージ-45%",},
        [10] = {110,"疲労","疲労度が100になると、戦闘中のダメージ-50%。",},
        [11] = {200,"占有","所属軍団が現在の鉱区を独占していると、戦闘中に受けるダメージ-10%。",},
    },

    -- index
    __index_buff_id = {
        [101] = 1,
        [102] = 2,
        [103] = 3,
        [104] = 4,
        [105] = 5,
        [106] = 6,
        [107] = 7,
        [108] = 8,
        [109] = 9,
        [110] = 10,
        [200] = 11,
    }
}

return mine_battle_buff