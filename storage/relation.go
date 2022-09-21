package storage

type Attention struct { // 关注表
	ID        int64
	WatchID   int64
	Watch     DBUser `gorm:"foreignKey:WatchID;references:ID;"`
	BeWatchID int64
	BeWatch   DBUser `gorm:"foreignKey:BeWatchID;references:ID;"`
}

type RelationResponse struct {
	Response
	UserList []User `json:"user_list,omitempty"`
}
