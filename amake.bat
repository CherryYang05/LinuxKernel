@echo off
::cls
f:
cd F:\Code\Java\Java4LinuxOS
nasm boot.asm -o boot
::copy boot \src
nasm kernel.asm -o kernel
::copy kernel \src
cd src
javac OS.java
java OS
del OS.class
del Floppy.class
del Floppy$MAGNETIC_HEAD.class
::del boot
::del kernel
move system.img ../
cd F:\Code\Java\Java4LinuxOS
e:
cd E:\Virtual\SimpleOS
del system.img
echo 原映像文件已删除
copy F:\Code\Java\Java4LinuxOS\system.img E:\Virtual\SimpleOS
echo 新映像已移动至虚拟机根目录下
f:
move F:\Code\Java\Java4LinuxOS\system.img F:\bochs\Bochs-2.6.11
echo 新映像已移动至bochs根目录下