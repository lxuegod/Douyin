package storage

type FeedResponse struct { // 视频列表回应
	Response
	VideoList []VideoResponse `json:"video_list,omitempty"`
	NextTime  int64           `json:"next_time,omitempty"`
}
