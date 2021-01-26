boot 是引导程序，加载到软盘第0磁道第1扇区
kernel 是内核程序，编译方式如下
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
```shell script
nasm boot.asm -o boot
nasm kernel.asm -o kernel
```

然后打开 Java 工程文件，运行 OS 类，将 boot 和 kernel 文件写入软盘（文件名为 system.img）
```java
javac OS.java
java OS
```
将生成的 img 镜像文件在虚拟机中运行，选择 Floppy 方式启动。