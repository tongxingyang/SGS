--guild_true_flag

local guild_true_flag = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --颜色id-int 
      name = 2,    --名称-string 
    
    },
    -- data
    _data = {
        [1] = {1,"基礎色-酡紅",},
        [2] = {2,"基礎色-橙黄",},
        [3] = {3,"基礎色-赤金",},
        [4] = {4,"基礎色-葱緑",},
        [5] = {5,"基礎色-柏緑",},
        [6] = {6,"基礎色-紺碧",},
        [7] = {7,"基礎色-湖藍",},
        [8] = {8,"基礎色-青蓮",},
        [9] = {9,"基礎色-紫棠",},
        [10] = {10,"基礎色-黄栌",},
    },

    -- index
    __index_id = {
        [1] = 1,
        [10] = 10,
        [2] = 2,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 6,
        [7] = 7,
        [8] = 8,
        [9] = 9,
    }
}

return guild_true_flag