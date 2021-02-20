@echo off
e:
cd E:\Virtual\SimpleOS
del system.img
echo 原映像文件已删除
move F:\Code\Java\Java4LinuxOS\system.img E:\Virtual\SimpleOS
echo 新映像移动完成