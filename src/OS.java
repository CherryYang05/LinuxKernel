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
     * ��������д���������ݽṹ
     *
     * @param fileName
     */
    private void writeFileToFloppy(String fileName) {
        InputStream in = null;
        try {
            in = new FileInputStream(new File(fileName));
            byte[] data = new byte[512];
        /*
           Ҫ���û��������̵�ͷ512�ֽڵ�������ϵͳ���ں˼��ص��ڴ�
           ǰ512�ֽڵ���������ֽڱ�����55,aa(Intel��˾�涨)
           �����޷������ں�
        */
            data[510] = 0x55;
            data[511] = (byte) 0xaa;    //byte ��ʾ��Χ��-128~127
            if (in.read(data) != -1) {
                //���ں˶��뵽���̵�0�棬��0���棬��1������
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
