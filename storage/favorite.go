package storage

type Favorite struct { // 喜欢表
	ID      int64
	UserID  int64
	User    DBUser `gorm:"foreignKey:UserID;references:ID;"`
	VideoID int64
	Video   Video `gorm:"foreignKey:VideoID;references:Id;"`
}

type FavoriteResponse struct { // 点赞列表响应
	Response
	VideoList []VideoResponse `json:"video_list,omitempty"`
}
