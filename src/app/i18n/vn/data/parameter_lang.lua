--parameter_lang

local parameter_lang = {
    -- key
    __key_map = {
      id = 1,    --序号_key-int 
      content = 2,    --参数内容-越南翻译-string 
    
    },
    -- data
    _data = {
        [1] = {14001,"Ngày",},
        [2] = {14002,"Giờ",},
        [3] = {14003,"Phút",},
        [4] = {14004,"Giây",},
        [5] = {174,"Không",},
        [6] = {245,"Quân Đoàn",},
        [7] = {31501,"Ngụy",},
        [8] = {31502,"Thục",},
        [9] = {31503,"Ngô",},
        [10] = {31504,"Quần Hùng",},
        [11] = {42101,"[Khoáng x2]",},
        [12] = {42102,"[Khoáng x3]",},
        [13] = {482,"Vĩnh viễn",},
        [14] = {483,"Ngày",},
        [15] = {634,"#server#-#name# nhận được #goods#!",},
        [16] = {635,"#server#-#name# nhận được #hero#!",},
    },

    -- index
    __index_id = {
        [14001] = 1,
        [14002] = 2,
        [14003] = 3,
        [14004] = 4,
        [174] = 5,
        [245] = 6,
        [31501] = 7,
        [31502] = 8,
        [31503] = 9,
        [31504] = 10,
        [42101] = 11,
        [42102] = 12,
        [482] = 13,
        [483] = 14,
        [634] = 15,
        [635] = 16,
    }
}

return parameter_lang