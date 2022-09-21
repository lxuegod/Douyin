package storage

type Comment struct {
	Id         int64 `json:"id,omitempty"`
	UserID     int64
	User       User   `json:"user" gorm:"foreignKey:UserID;references:ID;"`
	Content    string `json:"content,omitempty"`
	CreateDate string `json:"create_date,omitempty"`
}

type CommentResponse struct { // 评论响应列表
	Response
	VideoList []VideoResponse `json:"video_list,omitempty"`
}

type CommentActionRequest struct { // 评论请求
	Token       string
	VideoID     int64
	ActionType  bool
	CommentText string
	CommentID   int64
}
