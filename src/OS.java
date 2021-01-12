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
     * ��������д���������ݽṹ
     *
     * @param fileName Ҫд����ļ�
     * @param bootable �Ƿ�����������
     * @param cylinder Ҫд��������
     * @param sector   Ҫд���������
     */
    private void writeFileToFloppy(String fileName, boolean bootable, int cylinder, int sector) {
        InputStream in = null;
        try {
            in = new FileInputStream(new File(fileName));
            byte[] data = new byte[512];
            /*
            Ҫ���û��������̵�ͷ512�ֽڵ�������ϵͳ���ں˼��ص��ڴ�
            ǰ512�ֽڵ���������ֽڱ�����55,aa(Intel��˾�涨)
            �����޷������ں�
            */
            if (bootable) {
                data[510] = 0x55;
                data[511] = (byte) 0xaa;    //byte ��ʾ��Χ��-128~127
            }
            while (in.read(data) > 0) {
                //���ں˶��뵽���̵�0�棬��0���棬��1������
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
