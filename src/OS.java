import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * @Author Cherry
 * @Date 2021/1/10
 * @Time 16:12
 * @Brief
 */

public class OS {
    private Floppy floppyDisk = new Floppy();

    public OS(String fileName) {
        writeFileToFloppy(fileName);
    }

    /**
     * 将数据流写入软盘数据结构
     *
     * @param fileName
     */
    private void writeFileToFloppy(String fileName) {
        InputStream in = null;
        try {
            in = new FileInputStream(new File(fileName));
            byte[] data = new byte[512];
        /*
           要想让机器将软盘的头512字节当做操作系统的内核加载到内存
           前512字节的最后两个字节必须是55,aa(Intel公司规定)
           否则无法加载内核
        */
            data[510] = 0x55;
            data[511] = (byte) 0xaa;    //byte 表示范围是-128~127
            if (in.read(data) != -1) {
                //将内核读入到磁盘第0面，第0柱面，第1个扇区
                floppyDisk.writeFloppy(Floppy.MAGNETIC_HEAD.MAGNETIC_HEAD_0, 0, 1, data);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public void makeFloppy() {
        String s = "This is Cylinder 1 and Sector 2...";
        floppyDisk.writeFloppy(Floppy.MAGNETIC_HEAD.MAGNETIC_HEAD_0, 1, 2, s.getBytes());
        floppyDisk.makeFloppy("system.img");
    }

    public static void main(String[] args) {
        OS os = new OS("F:\\Code\\Java\\Java4LinuxOS\\boot");
        os.makeFloppy();
    }
}
