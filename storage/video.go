package storage

import "time"

type Video struct {
	Id            int64     `json:"id,omitempty"`
	AuthorID      int64     `json:"-"`
	Author        User      `gorm:"foreignKey:AuthorID;references:ID;" json:"author,omitempty"`
	PlayUrl       string    `json:"play_url,omitempty"`
	CoverUrl      string    `json:"cover_url,omitempty"`
	FavoriteCount int64     `json:"favorite_count"`
	CommentCount  int64     `json:"comment_count"`
	IsFavorite    bool      `json:"is_favorite"`
	Title         string    `json:"title"`
	CreatedAt     time.Time `json:"created_at,omitempty"`
}

// 视频响应
type VideoResponse struct {
	Id            int64  `json:"id,omitempty"`
	AuthorID      int64  `json:"-"`
	Author        User   `gorm:"foreignKey:AuthorID;references:ID;" json:"author"`
	PlayUrl       string `json:"play_url,omitempty"`
	CoverUrl      string `json:"cover_url,omitempty"`
	FavoriteCount int64  `json:"favorite_count"`
	CommentCount  int64  `json:"comment_count"`
	IsFavorite    bool   `json:"is_favorite"`
	Title         string `json:"title"`
}
