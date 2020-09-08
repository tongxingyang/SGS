--story_essence_boss

local story_essence_boss = {
    -- key
    __key_map = {
      id = 1,    --id-int 
      talk = 2,    --副本对话-string 
      name = 3,    --怪物名-string 
    
    },
    -- data
    _data = {
        [1] = {1,"Tuân Du","Tuân Du",},
        [2] = {2,"Nhạc Tiến","Nhạc Tiến",},
        [3] = {3,"Tuân Úc","Tuân Úc",},
        [4] = {4,"Mã Đại","Mã Đại",},
        [5] = {5,"Mạnh Hoạch","Mạnh Hoạch",},
        [6] = {6,"Lưu Bị","Lưu Bị",},
        [7] = {7,"Trình Phổ","Trình Phổ",},
        [8] = {8,"Hàn Đương","Hàn Đương",},
        [9] = {9,"Đại Kiều","Đại Kiều",},
        [10] = {10,"Trương Lương","Trương Lương",},
        [11] = {11,"Nhan Lương","Nhan Lương",},
        [12] = {12,"Hoa Đà","Hoa Đà",},
        [13] = {13,"Trình Dục","Trình Dục",},
        [14] = {14,"Từ Hoảng","Từ Hoảng",},
        [15] = {15,"Quách Gia","Quách Gia",},
        [16] = {16,"Mã Tốc","Mã Tốc",},
        [17] = {17,"Chúc Dung","Chúc Dung",},
        [18] = {18,"Nguyệt Anh","Nguyệt Anh",},
        [19] = {19,"Cố Ung","Cố Ung",},
        [20] = {20,"Chu Thái","Chu Thái",},
        [21] = {21,"Tiểu Kiều","Tiểu Kiều",},
        [22] = {22,"Trương Bảo","Trương Bảo",},
        [23] = {23,"Văn Xú","Văn Xú",},
        [24] = {24,"Điêu Thuyền","Điêu Thuyền",},
        [25] = {25,"Bàng Đức","Bàng Đức",},
        [26] = {26,"Tào Xung","Tào Xung",},
        [27] = {27,"Hạ Hầu Đôn","Hạ Hầu Đôn",},
        [28] = {28,"Liêu Hóa","Liêu Hóa",},
        [29] = {29,"A Đẩu","A Đẩu",},
        [30] = {30,"Quan Vũ","Quan Vũ",},
        [31] = {31,"Ngô Quốc Thái","Ngô Quốc Thái",},
        [32] = {32,"Hoàng Cái","Hoàng Cái",},
        [33] = {33,"Thái Sử Từ","Thái Sử Từ",},
        [34] = {34,"Thư Thụ","Thư Thụ",},
        [35] = {35,"Thái Văn Cơ","Thái Văn Cơ",},
        [36] = {36,"Đổng Trác","Đổng Trác",},
        [37] = {37,"Vương Dị","Vương Dị",},
        [38] = {38,"Tào Thực","Tào Thực",},
        [39] = {39,"Tào Nhân","Tào Nhân",},
        [40] = {40,"Lưu Tông","Lưu Tông",},
        [41] = {41,"Tinh Thái","Tinh Thái",},
        [42] = {42,"Trương Phi","Trương Phi",},
        [43] = {43,"Tôn Lỗ Dục","Tôn Lỗ Dục",},
        [44] = {44,"Lăng Thống","Lăng Thống",},
        [45] = {45,"Tôn Quyền","Tôn Quyền",},
        [46] = {46,"Lưu Biểu","Lưu Biểu",},
        [47] = {47,"Trần Cung","Trần Cung",},
        [48] = {48,"Hoa Hùng","Hoa Hùng",},
        [49] = {49,"Tào Ngang","Tào Ngang",},
        [50] = {50,"Hạ Hầu Uyên","Hạ Hầu Uyên",},
        [51] = {51,"Điển Vi","Điển Vi",},
        [52] = {52,"Lưu Phong","Lưu Phong",},
        [53] = {53,"Ngân Bình","Ngân Bình",},
        [54] = {54,"Mã Siêu","Mã Siêu",},
        [55] = {55,"Tôn Như ","Tôn Như ",},
        [56] = {56,"Trương Chiêu","Trương Chiêu",},
        [57] = {57,"Lữ Mông","Lữ Mông",},
        [58] = {58,"Lý Nho","Lý Nho",},
        [59] = {59,"Khổng Dung","Khổng Dung",},
        [60] = {60,"Giả Hủ","Giả Hủ",},
        [61] = {61,"Quách Chiếu","Quách Chiếu",},
        [62] = {62,"Xuân Hoa","Xuân Hoa",},
        [63] = {63,"Hứa Chử","Hứa Chử",},
        [64] = {64,"Trương Bao","Trương Bao",},
        [65] = {65,"Quan Bình","Quan Bình",},
        [66] = {66,"Hoàng Trung","Hoàng Trung",},
        [67] = {67,"Chu Nhiên","Chu Nhiên",},
        [68] = {68,"Bộ Luyện Sư","Bộ Luyện Sư",},
        [69] = {69,"Cam Ninh","Cam Ninh",},
        [70] = {70,"Hà Tiến","Hà Tiến",},
        [71] = {71,"Lữ Linh Thư ","Lữ Linh Thư ",},
        [72] = {72,"Công Tôn Toản","Công Tôn Toản",},
        [73] = {73,"Tào Duệ","Tào Duệ",},
        [74] = {74,"Vu Cấm","Vu Cấm",},
        [75] = {75,"Trương Liêu","Trương Liêu",},
        [76] = {76,"Tư Mã Huy","Tư Mã Huy",},
        [77] = {77,"Pháp Chính","Pháp Chính",},
        [78] = {78,"Khương Duy","Khương Duy",},
        [79] = {79,"Ngu Phiên","Ngu Phiên",},
        [80] = {80,"Gia Cát Cẩn","Gia Cát Cẩn",},
        [81] = {81,"Tôn Kiên","Tôn Kiên",},
        [82] = {82,"Phan Phượng","Phan Phượng",},
        [83] = {83,"Trương Nhượng","Trương Nhượng",},
        [84] = {84,"Trương Giác","Trương Giác",},
        [85] = {85,"Chung Hội","Chung Hội",},
        [86] = {86,"Tào Xung","Tào Xung",},
        [87] = {87,"Trương Hợp","Trương Hợp",},
        [88] = {88,"Hạ Hầu Quyên","Hạ Hầu Quyên",},
        [89] = {89,"Mạnh Hoạch","Mạnh Hoạch",},
        [90] = {90,"Ngụy Diên","Ngụy Diên",},
        [91] = {91,"Lục Kháng","Lục Kháng",},
        [92] = {92,"Hàn Đương","Hàn Đương",},
        [93] = {93,"Thượng Hương","Thượng Hương",},
        [94] = {94,"Vương Doãn","Vương Doãn",},
        [95] = {95,"Nhan Lương","Nhan Lương",},
        [96] = {96,"Vu Cát","Vu Cát",},
        [97] = {97,"Đặng Ngải","Đặng Ngải",},
        [98] = {98,"Hạ Hầu Uyên","Hạ Hầu Uyên",},
        [99] = {99,"Tào Phi","Tào Phi",},
        [100] = {100,"Bào Tam Nương","Bào Tam Nương",},
        [101] = {101,"Chúc Dung","Chúc Dung",},
        [102] = {102,"Bàng Thống","Bàng Thống",},
        [103] = {103,"Từ Thịnh","Từ Thịnh",},
        [104] = {104,"Chu Thái","Chu Thái",},
        [105] = {105,"Lục Tốn","Lục Tốn",},
        [106] = {106,"Viên Đàm","Viên Đàm",},
        [107] = {107,"Văn Xú","Văn Xú",},
        [108] = {108,"Viên Thiệu","Viên Thiệu",},
        [109] = {109,"Quách Hoài","Quách Hoài",},
        [110] = {110,"Vu Cấm","Vu Cấm",},
        [111] = {111,"Chân Cơ","Chân Cơ",},
        [112] = {112,"Sa Ma Kha","Sa Ma Kha",},
        [113] = {113,"Quan Bình","Quan Bình",},
        [114] = {114,"Từ Thứ","Từ Thứ",},
        [115] = {115,"Gia Cát Khác","Gia Cát Khác",},
        [116] = {116,"Hoàng Cái","Hoàng Cái",},
        [117] = {117,"Lỗ Túc","Lỗ Túc",},
        [118] = {118,"Lý Thôi","Lý Thôi",},
        [119] = {119,"Trần Cung","Trần Cung",},
        [120] = {120,"Viên Thuật","Viên Thuật",},
    },

    -- index
    __index_id = {
        [1] = 1,
        [10] = 10,
        [100] = 100,
        [101] = 101,
        [102] = 102,
        [103] = 103,
        [104] = 104,
        [105] = 105,
        [106] = 106,
        [107] = 107,
        [108] = 108,
        [109] = 109,
        [11] = 11,
        [110] = 110,
        [111] = 111,
        [112] = 112,
        [113] = 113,
        [114] = 114,
        [115] = 115,
        [116] = 116,
        [117] = 117,
        [118] = 118,
        [119] = 119,
        [12] = 12,
        [120] = 120,
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
        [41] = 41,
        [42] = 42,
        [43] = 43,
        [44] = 44,
        [45] = 45,
        [46] = 46,
        [47] = 47,
        [48] = 48,
        [49] = 49,
        [5] = 5,
        [50] = 50,
        [51] = 51,
        [52] = 52,
        [53] = 53,
        [54] = 54,
        [55] = 55,
        [56] = 56,
        [57] = 57,
        [58] = 58,
        [59] = 59,
        [6] = 6,
        [60] = 60,
        [61] = 61,
        [62] = 62,
        [63] = 63,
        [64] = 64,
        [65] = 65,
        [66] = 66,
        [67] = 67,
        [68] = 68,
        [69] = 69,
        [7] = 7,
        [70] = 70,
        [71] = 71,
        [72] = 72,
        [73] = 73,
        [74] = 74,
        [75] = 75,
        [76] = 76,
        [77] = 77,
        [78] = 78,
        [79] = 79,
        [8] = 8,
        [80] = 80,
        [81] = 81,
        [82] = 82,
        [83] = 83,
        [84] = 84,
        [85] = 85,
        [86] = 86,
        [87] = 87,
        [88] = 88,
        [89] = 89,
        [9] = 9,
        [90] = 90,
        [91] = 91,
        [92] = 92,
        [93] = 93,
        [94] = 94,
        [95] = 95,
        [96] = 96,
        [97] = 97,
        [98] = 98,
        [99] = 99,
    }
}

return story_essence_boss