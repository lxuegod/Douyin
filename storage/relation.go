package storage

// 关注表
type Attention struct {
	ID        int64
	WatchID   int64
	Watch     DBUser `gorm:"foreignKey:WatchID;references:ID;"`
	BeWatchID int64
	BeWatch   DBUser `gorm:"foreignKey:BeWatchID;references:ID;"`
}
