import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * @Author Cherry
 * @Date 2021/1/8
 * @Time 15:24
 * @Brief ģ�����̵ĵĶ�д�߼�
 * ��������Ҫ������ϵͳ������Ҫģ�����3.5������
 * ���������棬��˶�Ӧ������ͷ��ÿ��������80���ŵ�
 * Ҳ�������棬��ŷֱ�Ϊ0-79. ÿ�����涼��18������
 * ��ŷֱ�Ϊ1-18. ����һ��������Դ洢����������СΪ��
 * 512 * 18 * 80
 * һ���������������棬���һ�����̿��Դ洢������Ϊ��
 * 2 * 512 * 18 * 80 = 1474560 Byte = 1440 KB = 1.5M
 */

public class Floppy {
    enum MAGNETIC_HEAD {                //�����ͷ��ö������(������������Ĵ�ͷ)
        MAGNETIC_HEAD_0,
        MAGNETIC_HEAD_1
    }

    private int SECTOR_SIZE = 512;      //һ������512B
    private int CYLINDER_COUNT = 80;    //80������
    private int SECTORS_COUNT = 18;     //1������18������
    private MAGNETIC_HEAD magneticHead = MAGNETIC_HEAD.MAGNETIC_HEAD_0;
    private int current_cylinder = 0;
    private int current_sector = 0;

    //�����ݽṹ Integer ��ʶ���������������棬��Χ�� ArrayList ��ʾÿ������Ĵŵ�������� ArrayList ��ʾÿ���ŵ�������
    private HashMap<Integer, ArrayList<ArrayList<byte[]>>> floppy = new HashMap<>();

    public Floppy() {
        initFloppy();
    }

    /**
     * һ����������������
     */
    private void initFloppy() {
        floppy.put(MAGNETIC_HEAD.MAGNETIC_HEAD_0.ordinal(), initFloppyDisk());
        floppy.put(MAGNETIC_HEAD.MAGNETIC_HEAD_1.ordinal(), initFloppyDisk());
    }

    /**
     * ��ʼ������
     *
     * @return 80���ŵ�
     */
    private ArrayList<ArrayList<byte[]>> initFloppyDisk() {
        ArrayList<ArrayList<byte[]>> floppyDisk = new ArrayList<>();        //���̵�һ����
        for (int i = 0; i < CYLINDER_COUNT; ++i) {
            floppyDisk.add(initCylinder());
        }
        return floppyDisk;
    }

    /**
     * ��ʼ������
     *
     * @return ÿ���ŵ� 18������
     */
    private ArrayList<byte[]> initCylinder() {
        //һ��������18������
        ArrayList<byte[]> cylinder = new ArrayList<>();
        for (int i = 0; i < SECTORS_COUNT; ++i) {
            byte[] sector = new byte[SECTOR_SIZE];
            cylinder.add(sector);
        }
        return cylinder;
    }

    /**
     * ���ô�ͷ
     *
     * @param head ��ͷ
     */
    public void setMagneticHead(MAGNETIC_HEAD head) {
        magneticHead = head;
    }

    /**
     * ����ÿһ������� 0~79��
     *
     * @param cylinder �����
     */
    public void setCylinder(int cylinder) {
        this.current_cylinder = cylinder >= 80 ? 79 : Math.max(cylinder, 0);
    }

    /**
     * ���������� 1~18��
     *
     * @param sector ������
     */
    public void setSector(int sector) {
        this.current_sector = sector > 18 ? 17 : Math.max(sector - 1, 0);
    }

    /**
     * �����̣���ָ����ͷ�ж�ȡָ���ŵ����ٴ�ָ���ŵ���ȡָ������
     *
     * @param head         ��ͷ
     * @param cylinder_num �����
     * @param sector_num   ������
     * @return ������ byte ����
     */
    public byte[] readFloppy(MAGNETIC_HEAD head, int cylinder_num, int sector_num) {
        setParam(head, cylinder_num, sector_num);
        ArrayList<ArrayList<byte[]>> disk = floppy.get(magneticHead.ordinal());
        ArrayList<byte[]> cylinder = disk.get(current_cylinder);
        return cylinder.get(current_sector);
    }

    /**
     * д���̣����������Զ������ļ�д��
     *
     * @param head         ��ͷ
     * @param cylinder_num �����
     * @param sector_num   ������
     * @param data         ������ byte ����
     */
    public void writeFloppy(MAGNETIC_HEAD head, int cylinder_num, int sector_num, byte[] data) {
        setParam(head, cylinder_num, sector_num);
        ArrayList<ArrayList<byte[]>> disk = floppy.get(magneticHead.ordinal());
        ArrayList<byte[]> cylinder = disk.get(current_cylinder);
        //�����data����һ������������Ҫ�������������
        //cylinder.set(current_sector, data);
        //System.out.println(data.length);
        byte[] sector = cylinder.get(current_sector);
        System.arraycopy(data, 0, sector, 0, data.length);
        //System.out.println(sector.length);
    }

    /**
     * ���������������ɾ����ļ�
     * ���������Ǵ��Ķ������ļ��������߼��ṹ���£�
     * ǰ 512*18 �ֽڵ����ݶ�Ӧ���� 0������ 0 ��������������
     * ���ŵ� 512*18 �ֽڵ����ݶ�Ӧ���� 1������ 0 ��������������
     * �ٽ��ŵ� 512*18 �ֽڵ����ݶ�Ӧ���� 0������ 1 ������������
     * �ٽ��� 512*18 �ֽڵ����ݶ�Ӧ���� 1������ 1 ������������
     *
     * @param fileName ���ﾵ���ļ��� system.img
     */
    public void makeFloppy(String fileName) {
        OutputStream out = null;
        try {
            out = new FileOutputStream(new File(fileName));
            //��ַ�ṹ�����棬���棬������
            for (int cylinder = 0; cylinder < CYLINDER_COUNT; ++cylinder) {
                for (int head = MAGNETIC_HEAD.MAGNETIC_HEAD_0.ordinal(); head <= MAGNETIC_HEAD.MAGNETIC_HEAD_1.ordinal(); ++head) {
                    for (int sector = 1; sector <= SECTORS_COUNT; ++sector) {
                        byte[] data = readFloppy(MAGNETIC_HEAD.values()[head], cylinder, sector);
                        out.write(data);
                    }
                }
            }
            System.out.println("�����ļ��������...");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * ���ô��̲���������дʹ��
     * @param head ��ͷ
     * @param cylinder_num �����
     * @param sector_num ������
     */
    private void setParam(MAGNETIC_HEAD head, int cylinder_num, int sector_num) {
        setMagneticHead(head);
        setCylinder(cylinder_num);
        setSector(sector_num);
    }
}
