Go Version Manager https://github.com/moovweb/gvm

Package Management for Golang https://github.com/Masterminds/glide

***
## Setup go workspace
```
mkdir your_go_workspace
cd your_go_workspace
gvm pkgset create --local
gvm pkgset create --local
mkdir src
cd src
mkdir your_project_name
cd your_project_name
glide create
glide get github.com/Masterminds/cookoo
vim hello.go
glide rebuild
go run hello.go
```

hello.go
```
package main

import (
	// This is the path to Cookoo
	"fmt"
	"github.com/Masterminds/cookoo"
)

func main() {

	// Build a new Cookoo app.
	registry, router, context := cookoo.Cookoo()

	// Fill the registry.
	registry.AddRoutes(
		cookoo.Route{
			Name: "TEST",
			Help: "A test route",
			Does: cookoo.Tasks{
				cookoo.Cmd{
					Name: "hi",
					Fn:   HelloWorld,
				},
			},
		},
	)

	// Execute the route.
	router.HandleRequest("TEST", context, false)
}

func HelloWorld(cxt cookoo.Context, params *cookoo.Params) (interface{}, cookoo.Interrupt) {
	fmt.Println("Hello World")
	return true, nil
}

```
***
## Setup http proxy
### setting: 
(if you are in china, please run lantern or other proxy application, and get the IP and port, the port is not fixed.)
```
git config --global http.proxy http://127.0.0.1:1080
git config --global https.proxy https://127.0.0.1:1080
git config --global http.proxy 'socks5://127.0.0.1:1080'
git config --global https.proxy 'socks5://127.0.0.1:1080'
```

### unsetting:
```
git config --global --unset http.proxy
git config --global --unset https.proxy
```

### look at current proxy
```
git config --global http.proxy
```
