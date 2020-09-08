--avatar_show

local avatar_show = {
    -- key
    __key_map = {
      id = 1,    --图鉴id-int 
      name = 2,    --图鉴名称-string 
    
    },
    -- data
    _data = {
        [1] = {1,"Xảo Biến Kiêu Quả",},
        [2] = {2,"Chinh Chiến Bốn Phương",},
        [3] = {3,"Dũng Mãnh Cương Nghị",},
        [4] = {4,"Dũng Mãnh Phi Thường",},
        [5] = {5,"Đại Trí Nhược Ngu",},
        [6] = {6,"Thừa Tướng Giúp Ta",},
        [7] = {7,"Kiêu Dũng Hổ Tướng",},
        [8] = {8,"Dũng Cảm Tiến Tới",},
        [9] = {9,"Xả Thân Vì Nước",},
        [10] = {10,"Cương Trực Tráng Liệt",},
        [11] = {11,"Bài Trận Ngự Địch",},
        [12] = {12,"Minh Châu Hộ Kích",},
        [13] = {13,"Thần Dũng Hám Địch",},
        [14] = {14,"Triều Khí",},
        [15] = {15,"Tự Cường Bất Tức",},
        [16] = {16,"Thủ Chấp Tiết Nghĩa",},
        [17] = {17,"Huynh Đệ Tề Tâm",},
        [18] = {18,"Luyện Ngục Võ Thần",},
        [19] = {19,"Khuông Phù Hán Thất",},
        [20] = {20,"Đồng Lòng",},
        [21] = {21,"Cẩm Phàm Thiên Hương",},
        [22] = {22,"Phụng Nghi Chi Tư",},
        [23] = {23,"Trung Thành Hộ Hoa",},
        [24] = {24,"An Tuất Giải Phiền",},
        [25] = {25,"Bạch Linh Thiên Ảo",},
        [26] = {26,"Thao Loạn Cổ Hoặc",},
        [27] = {27,"Thiên Ảo Minh Châu",},
        [28] = {28,"Kiệt Duyên Phần Tâm",},
        [29] = {29,"Lăng Ba Vi Bộ",},
        [30] = {30,"Tiên Phong Duệ Trí",},
        [31] = {31,"Lương Tận Viện Tuyệt",},
        [32] = {32,"Diệu Pháp Nhân Tâm",},
        [33] = {33,"Trung Hiếu Kỳ Chí",},
        [34] = {34,"Mỹ Nữ Cầm Thích",},
        [35] = {35,"Chí Dũng Hiệp Nghĩa",},
        [36] = {36,"Thúy Vũ Liệt Hỏa",},
        [37] = {37,"Hỏa Phần Thiên",},
        [38] = {38,"Đốc Liệt Nhã Chí",},
        [39] = {39,"Tung Hoành",},
        [40] = {40,"Trực Gián Phượng Nghi",},
        [41] = {41,"Loạn Thế Thủy",},
        [42] = {42,"Quỷ Đạo Họa Loạn",},
        [43] = {43,"Sau Danh Môn",},
        [44] = {44,"Quốc Gia Thừa Bình",},
        [45] = {45,"Thanh Kiệm Di Kế",},
        [46] = {46,"Bát Đấu Chi Tài",},
        [47] = {47,"Nhanh Như Chớp",},
        [48] = {48,"Tuyệt Trần Diệu Tài",},
        [49] = {49,"Nhất Kỵ Đương Thiên",},
        [50] = {50,"Loạn Thế Tinh",},
        [51] = {51,"Thục Hán Phụ Dực",},
        [52] = {52,"Biết Rõ Thời Cơ",},
        [53] = {53,"Khắc Kỷ Chế Hoành",},
        [54] = {54,"Minh Triết Hoãn Thích",},
        [55] = {55,"Trí Dũng Song Toàn",},
        [56] = {56,"Công Thủ Đồng Minh",},
        [57] = {57,"Ma Tướng Lạnh Lùng",},
        [58] = {58,"Thị Dũng Bi Ca",},
        [59] = {59,"Kiêu Dũng Song Hùng",},
        [60] = {60,"Bi Đồ Sầu Âm",},
        [61] = {61,"Trấn Giữ Ải",},
        [62] = {62,"Tuyệt Tình Cường Tập",},
        [63] = {63,"Dũng Lực",},
        [64] = {64,"Vô Lai Vô Khứ",},
        [65] = {65,"Văn Võ Kiêm Toàn",},
        [66] = {66,"Áo Rồng",},
        [67] = {67,"Niết Bàn Hoàng Vũ",},
        [68] = {68,"Hậu Duệ Võ Thánh",},
        [69] = {69,"Đế Minh Kết Nhân",},
        [70] = {70,"Hào Tình Liệt Đảm",},
        [71] = {71,"Trung Tâm Phò Ngô",},
        [72] = {72,"Ưu Tú",},
        [73] = {73,"Ngạo Thị",},
        [74] = {74,"Hổ Lang Cuồng Bạo",},
        [75] = {75,"Cao Quý Danh Môn",},
        [76] = {76,"Đại Nghĩa Hào Hùng",},
        [77] = {77,"Vương Tá Hành Thương",},
        [78] = {78,"Tiết Mệnh Tửu Thi",},
        [79] = {79,"Lãnh Huyết Bá Nghiệp",},
        [80] = {80,"Xuân Phong Chước Hoa",},
        [81] = {81,"Bối Rối",},
        [82] = {82,"Nhân Đức Thậm Hiền",},
        [83] = {83,"Long Ngâm Thị Huyết",},
        [84] = {84,"Tướng Môn Gia",},
        [85] = {85,"Quốc Sắc Anh Hồn",},
        [86] = {86,"Thấu Hiểu Thận Trọng",},
        [87] = {87,"Bách Thắng",},
        [88] = {88,"Một Lòng Vì Nước",},
        [89] = {89,"Thanh Nang Bế Nguyệt",},
        [90] = {90,"Loạn Thế Bi Ca",},
        [91] = {91,"Tuyệt Thế",},
        [92] = {92,"Song Hùng Đoạn Trường",},
        [93] = {93,"Khó Phai",},
        [94] = {94,"Đồng Lòng",},
        [95] = {95,"Thủy Hỏa Tương Tế",},
        [96] = {96,"Mỹ Nhân",},
        [97] = {97,"Thân Tàn Chí Kiên",},
        [98] = {98,"Tô Điểm",},
        [99] = {99,"Văn Võ Song Toàn",},
        [100] = {100,"Tây Lương Kỵ",},
        [101] = {101,"Trung Thành Hộ Chủ",},
        [102] = {102,"Thị Huyết Liệt Cung",},
        [103] = {103,"Quốc Sắc Kiêu Cơ",},
        [104] = {104,"Quỷ Thần Khó Đoán",},
        [105] = {105,"Kiên Cường Hành Thương",},
        [106] = {106,"Anh Hùng Tương Trợ",},
        [107] = {107,"Bách Kỵ Độ Giang",},
        [108] = {108,"Chư Hầu Liên Quân",},
        [109] = {109,"Vệ Sĩ Mưu Thần",},
        [110] = {110,"Cung Tên Nhân Đức",},
        [111] = {111,"Kiêu Cơ Lưu Ly",},
        [112] = {112,"Loạn Vũ Thanh Nang",},
        [113] = {113,"Đố Kỵ Nhân Tài",},
        [114] = {114,"Kim Phong Ngọc Lộ",},
        [115] = {115,"Chính Nhân Quân Tử",},
        [116] = {116,"Cùng Quê Bái Quốc",},
        [117] = {117,"Giỏi Công Giỏi Thủ",},
        [118] = {118,"Tre Già Măng Mọc",},
        [119] = {119,"Biệt Tam Nhật",},
        [120] = {120,"Hổ Lang Độc Sĩ",},
        [121] = {121,"Chúa Công Anh Minh",},
        [122] = {122,"Liên Hoàn Tập Trí",},
        [123] = {123,"Hồng Nhan Kiêu Cơ",},
        [124] = {124,"Vọng Xưng Thiên Mệnh",},
        [125] = {125,"Tịnh Tề",},
        [126] = {126,"Liên Hoàn Kế Thừa",},
        [127] = {127,"Kìm Hãm Hồng Nhan",},
        [128] = {128,"Ngụy Đế Diệu Võ",},
        [129] = {129,"Quỷ Tài Vương Tá",},
        [130] = {130,"Tâm Phục Khẩu Phục",},
        [131] = {131,"Hảo Thi Hồng Nhan",},
        [132] = {132,"Quỷ Đạo Thanh Nang",},
        [133] = {133,"Thân Sơ Hữu Biệt",},
        [134] = {134,"Tập Trí Nhân Đức",},
        [135] = {135,"Thần Đình Hàm Chiến",},
        [136] = {136,"Phượng Nghi Thùy Lệ",},
        [137] = {137,"Đột Tập Di Kế",},
        [138] = {138,"Hữu Duyên Vô Phần",},
        [139] = {139,"Nan Huynh Nan Đệ",},
        [140] = {140,"Bế Nguyệt Hoàng Thiên",},
        [141] = {141,"Công Thủ Kiêm Bị",},
        [142] = {142,"Ngũ Hổ Thượng Tướng",},
        [143] = {143,"Cẩm Phàm Anh Hồn",},
        [144] = {144,"Bắc Phương Song Hùng",},
        [145] = {145,"Năng Tiến Năng Thoái",},
        [146] = {146,"Thục Địa Anh Kiệt",},
        [147] = {147,"Hồn Hựu Giang Đông",},
        [148] = {148,"Thiên Ảo Dung Tứ",},
        [149] = {149,"Lạc Thần Cố Thủ",},
        [150] = {150,"Dũng Mãnh",},
        [151] = {151,"Đỉnh Túc Tam Phân",},
        [152] = {152,"Thiên Nhân Vĩnh Cách",},
        [153] = {153,"Tài Trí Siêu Quần",},
        [154] = {154,"Thị Vệ Thân Cận",},
        [155] = {155,"Đồng Tâm",},
        [156] = {156,"Thần Tiên",},
        [157] = {157,"Thay Đổi Triều Đại",},
        [158] = {158,"Trí Dũng",},
        [159] = {159,"Thủ Túc",},
        [160] = {160,"Thần Thông",},
        [161] = {161,"Đại Nghiệp",},
        [162] = {162,"Phục Hưng",},
        [163] = {163,"Trai Tài Gái Sắc",},
        [164] = {164,"Vạn Nhân Địch",},
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
        [121] = 121,
        [122] = 122,
        [123] = 123,
        [124] = 124,
        [125] = 125,
        [126] = 126,
        [127] = 127,
        [128] = 128,
        [129] = 129,
        [13] = 13,
        [130] = 130,
        [131] = 131,
        [132] = 132,
        [133] = 133,
        [134] = 134,
        [135] = 135,
        [136] = 136,
        [137] = 137,
        [138] = 138,
        [139] = 139,
        [14] = 14,
        [140] = 140,
        [141] = 141,
        [142] = 142,
        [143] = 143,
        [144] = 144,
        [145] = 145,
        [146] = 146,
        [147] = 147,
        [148] = 148,
        [149] = 149,
        [15] = 15,
        [150] = 150,
        [151] = 151,
        [152] = 152,
        [153] = 153,
        [154] = 154,
        [155] = 155,
        [156] = 156,
        [157] = 157,
        [158] = 158,
        [159] = 159,
        [16] = 16,
        [160] = 160,
        [161] = 161,
        [162] = 162,
        [163] = 163,
        [164] = 164,
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

return avatar_show