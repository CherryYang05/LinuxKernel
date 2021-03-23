ckernel.asm : ckernel.o
	./objconv -fnasm ckernel.o -o ckernel.asm
ckernel.o : write_vga_desktop_win.o win_sheet.o mem_util.o
	ld -m elf_i386 -r write_vga_desktop_win.o mem_util.o win_sheet.o -o ckernel.o
write_vga_desktop_win.o : write_vga_desktop_win.c win_sheet.c win_sheet.h mem_util.c mem_util.h
	gcc -m32 -fno-pic -fno-asynchronous-unwind-tables -s -c write_vga_desktop_win.c -o write_vga_desktop_win.o
win_sheet.o : win_sheet.c win_sheet.h
	gcc -m32 -fno-pic -fno-asynchronous-unwind-tables -s -c win_sheet.c -o win_sheet.o
mem_util.o : mem_util.c mem_util.h
	gcc -m32 -fno-pic -fno-asynchronous-unwind-tables -s -c mem_util.c -o mem_util.o
all : ckernel.asm
	@cd src/ && javac -encoding gbk OS.java
	@cd src/ && mv OS.class ../ && mv Floppy.class ../ && mv Floppy\$$MAGNETIC_HEAD.class ../ && mv ProcessASMFile.class ../
	java OS ckernel.asm
	@rm *.class
	@cp system.img /home/cherry/Virtual
	@echo "镜像已移动到虚拟机根目下"
	@mv system.img /home/cherry/Bochs
	@echo "镜像已移动到Bochs根目下"
	@rm ckernel.o write_vga_desktop_win.o win_sheet.o mem_util.o
clean:
	rm ckernel.o write_vga_desktop_win.o win_sheet.o mem_util.o