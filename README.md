## 项目介绍

该项目是基于x86架构的32位操作系统，利用汇编从主引导程序开始编写，将内核代码加载进内存，并从实模式进入32位保护模式。

该操作系统包含一个图形界面，能够显示鼠标和窗口。图形界面采用局部刷新机制，能最大化节省 CPU 性能。

该系统通过 8259A 控制器实现键盘、鼠标和时钟中断，并设计字体，设立键盘、鼠标和时钟缓冲区，能够在界面上显示输入的字符（包括 shift 特殊字符和 CAPS 按键输入），实现鼠标的移动。

内存管理中，内核使用 BIOS 的 int 15h 中断检测可用内存，写入内存范围描述符中，内存管理模块对用户可用的内存块进行分配与回收管理，其中对内存的大小是按照 4KB 的整数倍进行分配，方便日后拓展虚拟内存的分页管理功能。

图层显示模块中，采用局部刷新机制，只需要刷新鼠标移动前后两块 16*16 区域的像素点，并且当刷新第 n 层级的窗体时，只刷新比他层级更高且有变化的像素点，这样的机制可大幅度降低 CPU 的损耗。

进程管理中，通过设置 TSS（任务状态段）结构体，修改堆栈指帧，获取要跳转的进程的程序段描述符，然后跳转执行另一个进程。进程管理模块还包含通过分配时间片的大小来实现进程的优先级调度，设置多级反馈队列实现进程的多级反馈调度。

最后实现了一个简单的命令行，能够展示可用内存的大小，版权信息，和清屏，输入其他未定义的命令也会有相应提示符输出。


## 2021.3.13 新增 makefile文件（新）

已实现编译，链接，处理asm文件，nasm编译和生成镜像自动化

在 Linux 上运行 `make` 进行编译链接，`make all` 进行处理asm文件，进行 nasm 编译，生成 img 镜像

Tips：需要将 Windows 上工程文件夹在虚拟机上共享，虚拟机和 bochs 随意（若不共享请删除有关这两个文件夹的指令【cp 和 mv 命令】）

注：个人觉得该脚本中 `make all` 部分将字节码移来移去略有繁琐，若有更简洁的方法，欢迎与我分享~~

今后若有时间再进行 makefile 优化

## 编译 C 语言

boot 是引导程序，加载到软盘第0磁道第1扇区

kernel 是内核程序，编译方式如下

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

## 效果展示

![20220323161831](https://raw.githubusercontent.com/CherryYang05/PicGo-image/master/images/20220323161831.png)