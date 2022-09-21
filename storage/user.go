package storage

// DBUser 数据库用户表
type DBUser struct {
	ID            int64  `gorm:"column:id; primaryKey"`
	Username      string `gorm:"column:username; unique"`
	Password      string `gorm:"column:password"`
	FollowCount   int64  `gorm:"column:followCount"`
	FollowerCount int64  `gorm:"column:followerCount"`
	IsFollow      bool   `gorm:"column:isfollow"`
	Online        bool   `gorm:"column:online"`
}

// TableName DBUser表名
func (u DBUser) TableName() string {
	return "user"
}
