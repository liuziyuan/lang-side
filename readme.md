Go Version Manager https://github.com/moovweb/gvm

Package Management for Golang https://github.com/Masterminds/glide

***
## Setup go workspace
>Default, the gvm have a global path, if you setted  local path, the local path will be used first.  
Please ensure that the vscode-go extension is installed on the global path.

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
>If you are in china, please run lantern or other proxy application, and get the IP and port, the port is not fixed.  
Then, we can get golang any package!
### Setting: 

```
git config --global http.proxy http://127.0.0.1:1080
git config --global https.proxy https://127.0.0.1:1080
git config --global http.proxy 'socks5://127.0.0.1:1080'
git config --global https.proxy 'socks5://127.0.0.1:1080'
```

### Unsetting:
```
git config --global --unset http.proxy
git config --global --unset https.proxy
```

### Look at current proxy
```
git config --global http.proxy
```

### How to use proxy to get vscode-go extension depends on

step1: Set git proxy, refer to the previous section.

step2: open an ternimal, refer to https://github.com/Microsoft/vscode-go/wiki/Go-tools-that-the-Go-extension-depends-on
```
go get -u -v github.com/ramya-rao-a/go-outline
go get -u -v github.com/acroca/go-symbols
go get -u -v github.com/nsf/gocode
go get -u -v github.com/rogpeppe/godef
go get -u -v golang.org/x/tools/cmd/godoc
go get -u -v github.com/zmb3/gogetdoc
go get -u -v github.com/golang/lint/golint
go get -u -v github.com/fatih/gomodifytags
go get -u -v github.com/uudashr/gopkgs/cmd/gopkgs
go get -u -v golang.org/x/tools/cmd/gorename
go get -u -v sourcegraph.com/sqs/goreturns
go get -u -v github.com/cweill/gotests/...
go get -u -v golang.org/x/tools/cmd/guru
go get -u -v github.com/josharian/impl
go get -u -v github.com/haya14busa/goplay/cmd/goplay
```

