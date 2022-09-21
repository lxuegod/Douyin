package router

import (
	"github.com/gin-gonic/gin"
)

var DouyinRouter *gin.RouterGroup

func InitRouter() *gin.Engine {
	r := gin.Default()

	r.Static("/static", "./static")

	//	分组注册
	DouyinRouter = r.Group("/douyin")

	FeedRouter()
	FavoriteRouter()
	RelationRouter()
	UserRouter()
	CommentRouter()
	PublishRouter()

	return r

}
