package router

import "github.com/MiniDouyin/controller"

func CommentRouter() {
	// GET
	DouyinRouter.GET("/comment/list", controller.CommitList)

	// POST
	DouyinRouter.POST("/comment/action", controller.CommentAction)

}
