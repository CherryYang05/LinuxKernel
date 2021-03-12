boot 是引导程序，加载到软盘第0磁道第1扇区
kernel 是内核程序，编译方式如下

## 2021.3.13 新增 makefile文件（新）

已实现编译，链接，处理asm文件，nasm编译和生成镜像自动化

在 Linux 上运行 `make` 进行编译链接，`make all` 进行处理asm文件，进行 nasm 编译，生成 img 镜像

Tips：需要将 Windows 上工程文件夹在虚拟机上共享，虚拟机和 bochs 随意（若不共享请删除有关这两个文件夹的指令【cp 和 mv 命令】）

注：个人觉得该脚本中 `make all` 部分将字节码移来移去略有繁琐，若有更简洁的方法，欢迎与我分享~~

今后若有时间再进行 makefile 优化

## 编译 C 语言

```shell script
gcc -m32 -fno-pic -fno-asynchronous-unwind-tables -s -c $cfile$.c -o $cfile$.o 
```

上述命令不包含 C 语言编译时的调试信息和符号表，为了方便之后的反汇编

下载 objconv 反汇编工具

```shell script
git clone https://github.com/vertis/objconv.git
```

运行命令，生成 objconv 二进制文件，O2 表示启用 O2 优化，``O``是字母大写

```shell script
g++ -o objconv -O2 src/*cpp
```

若出现以下报错信息：

```shell script
g++ narrowing conversion of '2147483648' from 'unsigned int' to 'int' inside
```

表示 C++11 中的列表初始化禁止缩窄转换，切换低版本进行编译:

```shell script
g++ -o objconv -O2 src/*cpp --std=c++98
```

然后进行反汇编：

```shell script
./objconv -fnasm $ofile$.o -o $ofile$.asm
```

最后将生成的 asm 文件放入 boot 和 kernel 同一个文件夹下

## 编译方法

需要用 ProcessASMFile 工具（即ProcessASMFile.class字节码文件）
将 ASM 文件中包含 `global`，`section`，`extern` 的行删除，代码如下：

```java
java ProcessASMFile <你的 ASM 文件>
```

若提示 `ASM file modified done!` 则表示修改成功

然后运行下述代码：

```shell script
nasm boot.asm -o boot
nasm kernel.asm -o kernel
```

然后打开 Java 工程文件，运行 OS 类，将 boot 和 kernel 文件写入软盘（文件名为 system.img）

```java
javac OS.java
java OS
```

或者运行根目录中的 `amake.bat` 脚本(里面的一些路径需要自己修改，很容易看懂，
之所以要起名为 `amake` 仅仅是因为按照名称排序时以 `a` 为开头的文件会显示在最上面，
方便查看或复制粘贴下面很多的汇编文件和 c 语言文件)

将生成的 img 镜像文件在虚拟机中运行，选择 Floppy 方式启动。