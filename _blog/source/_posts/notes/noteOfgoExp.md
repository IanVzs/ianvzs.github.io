---
title: Golang笔记
date: 2021-05-19 19:00:00
categories: [note, golang, expansion]
tags: [golang, expansion]
---
# Go golang笔记
![golang](https://wallpapercave.com/wp/wp7041189.jpg "power")

## 非硬性结束服务
### http.Server.Shutdown
`http.Server`结构体有一个终止服务的方法`Shutdown`
1. 首先关闭所有开启的监听器
2. 关闭所有闲置连接
3. 等待活跃的连接均闲置了才终止服务
#### 长链接
对诸如WebSocket等的长连接，Shutdown不会尝试关闭也不会等待这些连接。若需要，需调用者分开额外处理（诸如通知诸长连接或等待它们关闭，使用RegisterOnShutdown注册终止通知函数）

### signal.Notify
可指定信号类型/`all incoming signals will be relayed to c`

### 综上
#### Demo1
```go
    srv := http.Server{
        Addr:    *addr,
        Handler: handler,
    }

    // make sure idle connections returned
    processed := make(chan struct{})
    go func() {
        c := make(chan os.Signal, 1)
        signal.Notify(c, os.Interrupt)
        <-c

        ctx, cancel := context.WithTimeout(context.Background(), 3*time.Second)
        defer cancel()
        if err := srv.Shutdown(ctx); nil != err {
            log.Fatalf("server shutdown failed, err: %v\n", err)
        }
        log.Println("server gracefully shutdown")

        close(processed)
    }()

    // serve
    err := srv.ListenAndServe()
    if http.ErrServerClosed != err {
        log.Fatalf("server not gracefully shutdown, err :%v\n", err)
    }

    // waiting for goroutine above processed
    <-processed
}
```

#### Demo2
```go
func main() {
	c := make(chan os.Signal)
	// 监听信号
	signal.Notify(c, syscall.SIGHUP, syscall.SIGINT, syscall.SIGTERM, syscall.SIGQUIT, syscall.SIGUSR1, syscall.SIGUSR2)

	go func() {
		for s := range c {
			switch s {
			case syscall.SIGHUP, syscall.SIGINT, syscall.SIGTERM:
				fmt.Println("退出:", s)
				ExitFunc()
			case syscall.SIGUSR1:
				fmt.Println("usr1", s)
			case syscall.SIGUSR2:
				fmt.Println("usr2", s)
			default:
				fmt.Println("其他信号:", s)
			}
		}
	}()
	fmt.Println("启动了程序")
	sum := 0
	for {
		sum++
		fmt.Println("休眠了:", sum, "秒")
		time.Sleep(1 * time.Second)
	}
}

func ExitFunc() {
	fmt.Println("开始退出...")
	fmt.Println("执行清理...")
	fmt.Println("结束退出...")
	os.Exit(0)
}
```

#### Demo3
```go
package main

import (
    "log"
    "io"
    "time"
    "net/http"
)

func startHttpServer() *http.Server {
    srv := &http.Server{Addr: ":8080"}

    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        io.WriteString(w, "hello world\n")
    })

    go func() {
        if err := srv.ListenAndServe(); err != nil {
            // cannot panic, because this probably is an intentional close
            log.Printf("Httpserver: ListenAndServe() error: %s", err)
        }
    }()

    // returning reference so caller can call Shutdown()
    return srv
}

func main() {
    log.Printf("main: starting HTTP server")

    srv := startHttpServer()

    log.Printf("main: serving for 10 seconds")

    time.Sleep(10 * time.Second)

    log.Printf("main: stopping HTTP server")

    // now close the server gracefully ("shutdown")
    // timeout could be given instead of nil as a https://golang.org/pkg/context/
    if err := srv.Shutdown(nil); err != nil {
        panic(err) // failure/timeout shutting down the server gracefully
    }

    log.Printf("main: done. exiting")
}
```
