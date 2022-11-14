package main

import (
    "github.com/gin-gonic/gin"
)

func main() {
    router := gin.Default()
    router.GET("/", testroute)

    router.Run("localhost:8080")
}

func testroute(c *gin.Context){
  c.Writer.WriteString("hallo")
}
