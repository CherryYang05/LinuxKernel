import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * @Author Cherry
 * @Date 2021/1/8
 * @Time 15:24
 * @Brief 模拟软盘的的读写逻辑
 * 对于我们要开发的系统，我们要模拟的是3.5寸软盘
 * 有两个盘面，因此对应两个磁头，每个盘面有80个磁道
 * 也就是柱面，编号分别为0-79. 每个柱面都有18个扇区
 * 编号分别为1-18. 所以一个盘面可以存储的数据量大小为：
 * 512 * 18 * 80
 * 一个软盘有两个盘面，因此一个软盘可以存储的数据为：
 * 2 * 512 * 18 * 80 = 1474560 Byte = 1440 KB = 1.5M
 */

public class Floppy {
    enum MAGNETIC_HEAD {                //定义磁头的枚举类型(正反两个盘面的磁头)
        MAGNETIC_HEAD_0,
        MAGNETIC_HEAD_1
    }

    private int SECTOR_SIZE = 512;      //一个扇区512B
    private int CYLINDER_COUNT = 80;    //80个柱面
    private int SECTORS_COUNT = 18;     //1个柱面18个扇区
    private MAGNETIC_HEAD magneticHead = MAGNETIC_HEAD.MAGNETIC_HEAD_0;
    private int current_cylinder = 0;
    private int current_sector = 0;

    //该数据结构 Integer 标识磁盘正反两个盘面，外围的 ArrayList 表示每个盘面的磁道，里面的 ArrayList 表示每个磁道的扇区
    private HashMap<Integer, ArrayList<ArrayList<byte[]>>> floppy = new HashMap<>();

    public Floppy() {
        initFloppy();
    }

    /**
     * 一个磁盘有两个盘面
     */
    private void initFloppy() {
        floppy.put(MAGNETIC_HEAD.MAGNETIC_HEAD_0.ordinal(), initFloppyDisk());
        floppy.put(MAGNETIC_HEAD.MAGNETIC_HEAD_1.ordinal(), initFloppyDisk());
    }

    /**
     * 初始化磁盘
     *
     * @return 80个磁道
     */
    private ArrayList<ArrayList<byte[]>> initFloppyDisk() {
        ArrayList<ArrayList<byte[]>> floppyDisk = new ArrayList<>();        //磁盘的一个面
        for (int i = 0; i < CYLINDER_COUNT; ++i) {
            floppyDisk.add(initCylinder());
        }
        return floppyDisk;
    }

    /**
     * 初始化柱面
     *
     * @return 每个磁道 18个柱面
     */
    private ArrayList<byte[]> initCylinder() {
        //一个柱面有18个扇区
        ArrayList<byte[]> cylinder = new ArrayList<>();
        for (int i = 0; i < SECTORS_COUNT; ++i) {
            byte[] sector = new byte[SECTOR_SIZE];
            cylinder.add(sector);
        }
        return cylinder;
    }

    /**
     * 设置磁头
     *
     * @param head 磁头
     */
    public void setMagneticHead(MAGNETIC_HEAD head) {
        magneticHead = head;
    }

    /**
     * 设置每一个柱面号 0~79号
     *
     * @param cylinder 柱面号
     */
    public void setCylinder(int cylinder) {
        this.current_cylinder = cylinder >= 80 ? 79 : Math.max(cylinder, 0);
    }

    /**
     * 设置扇区号 1~18号
     *
     * @param sector 扇区号
     */
    public void setSector(int sector) {
        this.current_sector = sector > 18 ? 17 : Math.max(sector - 1, 0);
    }

    /**
     * 读软盘，从指定磁头中读取指定磁道，再从指定磁道读取指定扇区
     *
     * @param head         磁头
     * @param cylinder_num 柱面号
     * @param sector_num   扇区号
     * @return 扇区的 byte 数据
     */
    public byte[] readFloppy(MAGNETIC_HEAD head, int cylinder_num, int sector_num) {
        setParam(head, cylinder_num, sector_num);
        ArrayList<ArrayList<byte[]>> disk = floppy.get(magneticHead.ordinal());
        ArrayList<byte[]> cylinder = disk.get(current_cylinder);
        return cylinder.get(current_sector);
    }

    /**
     * 写软盘，将数据流以二进制文件写入
     *
     * @param head         磁头
     * @param cylinder_num 柱面号
     * @param sector_num   扇区号
     * @param data         扇区的 byte 数据
     */
    public void writeFloppy(MAGNETIC_HEAD head, int cylinder_num, int sector_num, byte[] data) {
        setParam(head, cylinder_num, sector_num);
        ArrayList<ArrayList<byte[]>> disk = floppy.get(magneticHead.ordinal());
        ArrayList<byte[]> cylinder = disk.get(current_cylinder);
        //这里的data不足一个扇区，但是要填充满整个扇区
        //cylinder.set(current_sector, data);
        //System.out.println(data.length);
        byte[] sector = cylinder.get(current_sector);
        System.arraycopy(data, 0, sector, 0, data.length);
        //System.out.println(sector.length);
    }

    /**
     * 将软盘数据制作成镜像文件
     * 虚拟软盘是存粹的二进制文件，它的逻辑结构如下：
     * 前 512*18 字节的内容对应盘面 0，柱面 0 的所有扇区内容
     * 接着的 512*18 字节的内容对应盘面 1，柱面 0 的所有扇区内容
     * 再接着的 512*18 字节的内容对应盘面 0，柱面 1 所有扇区内容
     * 再接着 512*18 字节的内容对应盘面 1，柱面 1 所有扇区内容
     *
     * @param fileName 这里镜像文件名 system.img
     */
    public void makeFloppy(String fileName) {
        OutputStream out = null;
        try {
            out = new FileOutputStream(new File(fileName));
            //地址结构（柱面，盘面，扇区）
            for (int cylinder = 0; cylinder < CYLINDER_COUNT; ++cylinder) {
                for (int head = MAGNETIC_HEAD.MAGNETIC_HEAD_0.ordinal(); head <= MAGNETIC_HEAD.MAGNETIC_HEAD_1.ordinal(); ++head) {
                    for (int sector = 1; sector <= SECTORS_COUNT; ++sector) {
                        byte[] data = readFloppy(MAGNETIC_HEAD.values()[head], cylinder, sector);
                        out.write(data);
                    }
                }
            }
            System.out.println("镜像文件制作完成...");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 设置磁盘参数，供读写使用
     * @param head 磁头
     * @param cylinder_num 柱面号
     * @param sector_num 扇区号
     */
    private void setParam(MAGNETIC_HEAD head, int cylinder_num, int sector_num) {
        setMagneticHead(head);
        setCylinder(cylinder_num);
        setSector(sector_num);
    }
}
