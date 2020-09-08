--friend_invite

local friend_invite = {
    version =  1,
    -- key
    __key_map = {
      id = 1,    --编号-int 
      name = 2,    --任务名称-string 
    
    },
    -- data
    _data = {
        [1] = {1,"プレイヤー1名を招待",},
        [2] = {2,"プレイヤー2名を招待",},
        [3] = {3,"プレイヤー3名を招待",},
        [4] = {4,"招待したプレイヤー1名がレベル50に到達",},
        [5] = {5,"招待したプレイヤー2名がレベル50に到達",},
        [6] = {6,"招待したプレイヤー3名がレベル50に到達",},
        [7] = {7,"招待したプレイヤー1名が500万戦力に達する",},
        [8] = {8,"招待したプレイヤー2名が500万戦力に達する",},
        [9] = {9,"招待したプレイヤー3名が500万戦力に達する",},
        [10] = {10,"招待されました",},
        [11] = {11,"累計ログイン1日",},
        [12] = {12,"累計ログイン2日",},
        [13] = {13,"累計ログイン3日",},
        [14] = {14,"Lv20になりました",},
        [15] = {15,"Lv30になりました",},
        [16] = {16,"Lv50になりました",},
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

return friend_invite