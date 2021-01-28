import org.junit.Test;

import java.io.*;

/**
 * @Author Cherry
 * @Date 2021/1/10
 * @Time 15:54
 * @Brief
 */
public class TestDemo {
    public static void main(String[] args) throws IOException {
        //FileOutputStream out = new FileOutputStream(new File("test.txt"));
        //DataOutputStream out = new DataOutputStream(new FileOutputStream("test.aaa"));
        //byte[] buf = new byte[11];
        //for (int i = 0; i < 11; ++i) {
        //    buf[i] = (byte)i;
        //}
        //out.write(buf);
        //out.writeInt(65);
        //byte[] buf = new byte[10];
        //buf[0] = 0x55;
        //buf[1] = (byte) 0xaa;
        //buf[2] = 120;
        //System.out.println(0xaa);
        //System.out.println((byte)0xaa);
    }

    @Test
    public void Test1() throws IOException {
        FileWriter fileWriter = new FileWriter(new File("test.txt"), true);
        fileWriter.write("Hello");
        fileWriter.flush();
    }

    @Test
    public void writeToBinary() throws IOException {
        File file = new File("./Test/fontTest.txt");
        FileWriter fileWriter = new FileWriter(file);
        BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream("./Test/fontDemo.txt"), "GBK"));
        fileWriter.write("db ");
        String lineText = null;
        while ((lineText = reader.readLine()) != null) {
            int line = 16;              //一个字符有16行
            if (lineText.contains("char")) {
                while (line > 0) {
                    lineText = reader.readLine();
                    //System.out.println(lineText);
                    byte b = 0;
                    for (int i = 0; i < 8; ++i) {
                        if (lineText.charAt(i) == '*') {
                            b = (byte) (b | (1 << (7 - i)));
                        }
                    }
                    line--;
                    System.out.print("0" + Integer.toHexString(b & 0xff) + "H");
                    if (line != 0) {
                        System.out.print(", ");
                    }
                }
                System.out.println("\n");
            } else {
                continue;
            }
        }

        fileWriter.flush();
    }

    @Test
    public void makeFile() throws IOException {
        File file = new File("123.txt");
        FileWriter fileWriter = new FileWriter(file);
    }
}
