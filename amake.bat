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
echo ԭӳ���ļ���ɾ��
copy F:\Code\Java\Java4LinuxOS\system.img E:\Virtual\SimpleOS
echo ��ӳ�����ƶ����������Ŀ¼��
f:
move F:\Code\Java\Java4LinuxOS\system.img F:\bochs\Bochs-2.6.11
echo ��ӳ�����ƶ���bochs��Ŀ¼��