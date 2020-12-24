

## 1. [competitive-companion](https://github.com/jmerle/competitive-companion)

>   [chrome拓展地址](https://chrome.google.com/webstore/detail/competitive-companion/cjnmckjndlpiamhfimnnjmnckgghkjbl)
>
>   [firefox](https://addons.mozilla.org/en-US/firefox/addon/competitive-companion/)
>
>   默认端口修改为 10042

## 2. [cf-tool](https://github.com/xalanq/cf-tool)

>   ### Installation
>
>   ```sh
>   $ go get github.com/xalanq/cf-tool
>   ```
>
>   编译和拷贝：
>
>   ```sh
>   $ cd $GOPATH/src/github.com/xalanq/cf-tool
>   $ go build -ldflags "-s -w" cf.go
>   $ cp cf /usr/local/bin/			# sbin 无权限
>   ```
>
>   对于 MacOS ，可能在  `$GOPATH/bin/cf-tool` 直接获得二进制可执行文件，则：
>
>   ```sh
>   $ cp $GOPATH/bin/cf-tool /usr/local/bin/cf
>   ```
>
>   ### Config
>
>   登陆：
>
>   ```sh
>   $ cf config
>   ```

## 3. [cpeditor](https://github.com/cpeditor/cpeditor)

>   [release](https://github.com/cpeditor/cpeditor/releases)
>
>   ### 拓展
>
>   C++ 编译指令:
>
>   ```sh
>   /usr/local/bin/g++-10 -Wall -std=c++17 --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
>
>   # 在此之前, 安装 g++ 10.2 for big_sur:
>   brew install gcc@10
>   # 获取 SDK 位置
>   # blog: https://qiita.com/Rascal/items/b92d94631adfbd19522a
>   xcrun --sdk macosx --show-sdk-path 
> 
>   ```
> 
>   Clang Format:
>
>   ```sh
>   $ brew install clang-format
>   ```
>
>   C++ Language Server:
>
>   ```sh
>   $ brew install llvm
>   $ echo 'export PATH="/usr/local/opt/llvm/bin:$PATH"' >> /Users/binacsmini/.bash_profile
>   
>   $ export LDFLAGS="-L/usr/local/opt/llvm/lib"
>   $ export CPPFLAGS="-I/usr/local/opt/llvm/include"
>   ```
>
>   Competitive Companion:
>
>   >   修改连接端口为10042
>   >
>   >   方便 vscode 同时使用该拓展
>
>   