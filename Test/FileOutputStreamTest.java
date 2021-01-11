import org.junit.Test;

import java.io.*;
import java.util.ArrayList;

/**
 * @Author Cherry
 * @Date 2021/1/10
 * @Time 15:54
 * @Brief
 */
public class FileOutputStreamTest {
    public static void main(String[] args) throws IOException {
        //FileOutputStream out = new FileOutputStream(new File("test.txt"));
        //DataOutputStream out = new DataOutputStream(new FileOutputStream("test.aaa"));
        //byte[] buf = new byte[11];
        //for (int i = 0; i < 11; ++i) {
        //    buf[i] = (byte)i;
        //}
        //out.write(buf);
        //out.writeInt(65);
        byte[] buf = new byte[10];
        buf[0] = 0x55;
        buf[1] = (byte) 0xaa;
        buf[2] = 120;
        System.out.println(0xaa);
        System.out.println((byte)0xaa);
    }
}
