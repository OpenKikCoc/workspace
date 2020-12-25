

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
>   $ cp cf /usr/sbin/			# ubuntu 可拷贝至 sbin
>	```
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
>   C++ 编译指令(ubuntu 20 默认 g++@9):
>
>   ```sh
>   g++ -Wall -std=c++17
>   ```
> 
>   Clang Format:
>
>   ```sh
>   $ apt-get install clang-format
>   ```
>
>   C++ Language Server(似乎自带 可略过):
>
>   ```sh
>   $ apt-get install llvm
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

```sh
binacs@binacs-xnet:~$ cf config
Configure the tool
0) login
1) add a template
2) delete a template
3) set default template
4) run "cf gen" after "cf parse"
5) set host domain
6) set proxy
7) set folders' name
Please choose one (index): 
1
Add a template
Language list:
   14: ActiveTcl 8.5
   33: Ada GNAT 4
   18: Befunge
    9: C# Mono 5.18
   52: Clang++17 Diagnostics
   28: D DMD32 v2.086.0
    3: Delphi 7
   39: FALSE
   25: Factor
    4: Free Pascal 3.0.2
   45: GNU C++11 5 ZIP
   42: GNU G++11 5.1.0
   50: GNU G++14 6.4.0
   54: GNU G++17 7.3.0
   43: GNU GCC C11 5.1.0
   32: Go 1.12.6
   12: Haskell GHC 8.6.3
   15: Io-2008-01-07 (Win32)
   47: J
   36: Java 1.8.0_162
   60: Java 11.0.5
   46: Java 8 ZIP
   34: JavaScript V8 4.8.0
   48: Kotlin 1.3.10
   56: Microsoft Q#
    2: Microsoft Visual C++ 2010
   59: Microsoft Visual C++ 2017
   38: Mysterious Language
   55: Node.js 9.4.0
   19: OCaml 4.02.1
   22: OpenCobol 1.0
    6: PHP 7.2.13
   51: PascalABC.NET 3.4.2
   13: Perl 5.20.1
   44: Picat 0.9
   17: Pike 7.8
   40: PyPy 2.7 (7.2.0)
   41: PyPy 3.6 (7.2.0)
    7: Python 2.7.15
   31: Python 3.7.2
   27: Roco
    8: Ruby 2.0.0p645
   49: Rust 1.35.0
   20: Scala 2.12.8
   26: Secret_171
Select a language (e.g. "42"): 
54
GNU G++17 7.3.0
Template:
  You can insert some placeholders into your template code. When generate a code from the
  template, cf will replace all placeholders by following rules:

  $%U%$   Handle (e.g. xalanq)
  $%Y%$   Year   (e.g. 2019)
  $%M%$   Month  (e.g. 04)
  $%D%$   Day    (e.g. 09)
  $%h%$   Hour   (e.g. 08)
  $%m%$   Minute (e.g. 05)
  $%s%$   Second (e.g. 00)
Template absolute path(e.g. "~/template/io.cpp"): 
/home/binacs/template/io.cpp
The suffix of template above will be added by default.
Other suffix? (e.g. "cxx cc"), empty is ok: 

Template's alias (e.g. "cpp" "py"): 
cpp
Script in template:
Template will run 3 scripts in sequence when you run "cf test":
    - before_script   (execute once)
    - script          (execute the number of samples times)
    - after_script    (execute once)
  You could set "before_script" or "after_script" to empty string, meaning not executing.
  You have to run your program in "script" with standard input/output (no need to redirect).

  You can insert some placeholders in your scripts. When execute a script,
  cf will replace all placeholders by following rules:

  $%path%$   Path to source file (Excluding $%full%$, e.g. "/home/xalanq/")
  $%full%$   Full name of source file (e.g. "a.cpp")
  $%file%$   Name of source file (Excluding suffix, e.g. "a")
  $%rand%$   Random string with 8 character (including "a-z" "0-9")
Before script (e.g. "g++ $%full%$ -o $%file%$.exe -std=c++11"), empty is ok: 
g++ -Wall -std=c++17 $%full%$ -o $%file%$
Script (e.g. "./$%file%$.exe" "python3 $%full%$"): 
./$%file%$
After script (e.g. "rm $%file%$.exe" or "cmd.exe /C del $%file%$.exe" in windows), empty is ok: 
rm $%file%$
Make it default (y/n)? 
y
```
