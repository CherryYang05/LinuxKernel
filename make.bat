@echo off
cls
f:
cd F:\Code\Java\Java4LinuxOS
nasm boot.asm -o boot
nasm kernel.asm -o kernel
cd src
javac OS.java
java OS
del OS.class
move system.img ../
cd F:\Code\Java\Java4LinuxOS
e:
cd E:\Virtual\SimpleOS
del system.img
echo 原映像文件已删除
move F:\Code\Java\Java4LinuxOS\system.img E:\Virtual\SimpleOS
echo 新映像移动完成