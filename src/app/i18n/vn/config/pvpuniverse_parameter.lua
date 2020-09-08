--pvpuniverse_parameter

local pvpuniverse_parameter = {
    -- key
    __key_map = {
      id = 1,    --序号-int 
      content = 2,    --参数内容-string 
    
    },
    -- data
    _data = {
        [1] = {1,"1|3|5",},
        [2] = {4,"0|01",},
        [3] = {5,"86400",},
        [4] = {6,"7229",},
        [5] = {7,"120",},
        [6] = {8,"300",},
        [7] = {9,"3",},
        [8] = {10,"50|150",},
        [9] = {11,"200|500",},
        [10] = {12,"1,100|2,100|3,100|4,100|5,200|6,100|7,100|8,100|9,100",},
        [11] = {13,"1, Top 24|2, Top16|3, Top 8|4, Top 4|5, Bán Kết|6, Chung Kết",},
        [12] = {14,"5|00|01",},
        [13] = {15,"7|23|59",},
        [14] = {16,"180",},
        [15] = {17,"60",},
        [16] = {18,"50",},
        [17] = {19,"200",},
        [18] = {20,"3000",},
        [19] = {21,"1",},
    },

    -- index
    __index_id = {
        [1] = 1,
        [10] = 8,
        [11] = 9,
        [12] = 10,
        [13] = 11,
        [14] = 12,
        [15] = 13,
        [16] = 14,
        [17] = 15,
        [18] = 16,
        [19] = 17,
        [20] = 18,
        [21] = 19,
        [4] = 2,
        [5] = 3,
        [6] = 4,
        [7] = 5,
        [8] = 6,
        [9] = 7,
    }
}

return pvpuniverse_parameter