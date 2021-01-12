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

    private static final String FILENAME = "F:\\Code\\Java\\Java4LinuxOS\\boot";

    private static int MAX_SECTOR_NUM = 18;

    public OS(String fileName) {
        writeFileToFloppy(fileName, true, 0, 1);
    }

    /**
     * 将数据流写入软盘数据结构
     *
     * @param fileName 要写入的文件
     * @param bootable 是否是引导程序
     * @param cylinder 要写入的柱面号
     * @param sector   要写入的扇区号
     */
    private void writeFileToFloppy(String fileName, boolean bootable, int cylinder, int sector) {
        InputStream in = null;
        try {
            in = new FileInputStream(new File(fileName));
            byte[] data = new byte[512];
            /*
            要想让机器将软盘的头512字节当做操作系统的内核加载到内存
            前512字节的最后两个字节必须是55,aa(Intel公司规定)
            否则无法加载内核
            */
            if (bootable) {
                data[510] = 0x55;
                data[511] = (byte) 0xaa;    //byte 表示范围是-128~127
            }
            while (in.read(data) > 0) {
                //将内核读入到磁盘第0面，第0柱面，第1个扇区
                floppyDisk.writeFloppy(Floppy.MAGNETIC_HEAD.MAGNETIC_HEAD_0, cylinder, sector, data);
                sector++;
                if (sector > MAX_SECTOR_NUM) {
                    sector = 1;
                    cylinder++;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public void makeFloppy() {
        //String s = "This is Cylinder 1 and Sector 2...";
        //floppyDisk.writeFloppy(Floppy.MAGNETIC_HEAD.MAGNETIC_HEAD_0, 1, 2, s.getBytes());
        writeFileToFloppy("kernel", false, 1, 2);
        floppyDisk.makeFloppy("system.img");
    }

    public static void main(String[] args) {
        OS os = new OS(FILENAME);
        os.makeFloppy();
    }
}
