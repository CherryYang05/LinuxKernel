import java.io.*;
import java.util.ArrayList;


public class HelloWorldOS {
    /**
     * ��ζ��������ݽ������� HelloWorld OS ���ں�
     * ������������ BIOS������ص���ַ 0x8000
     * Ȼ����� BIOS�ж�����Ļ�ϴ�ӡ��һ���ַ���
     */

    private int[] imgContent = new int[]{
        0xeb,0x4e,0x90,0x48,0x45,0x4c,0x4c,0x4f,0x49,0x50,0x4c,0x00,0x02,0x01,0x01,0x00,0x02,0xe0,
        0x00,0x40,0x0b,0xf0,0x09,0x00,0x12,0x00,0x02,0x00,0x00,0x00,0x00,0x00,0x40,0x0b,0x00,0x00,0x00,0x00,0x29,
        0xff,0xff,0xff,0xff,0x48,0x45,0x4c,0x4c,0x4f,0x2d,0x4f,0x53,0x20,0x20,0x20,0x46,0x41,0x54,0x31,0x32,
        0x20,0x20,0x20,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xb8,0x00,0x00,0x8e,
        0xd0,0xbc,0x00,0x7c,0x8e,0xd8,0x8e,0xc0,0xbe,0x74,0x7c,0x8a,
        0x04,0x83,0xc6,0x01,0x3c,0x00,0x74,0x09,0xb4,0x0e,0xbb,0x0f,0x00,0xcd,0x10,0xeb,0xee,0xf4,0xeb,0xfd
    };

    private ArrayList<Integer> imgByteToWrite = new ArrayList<Integer>();


    private void readKernelFromFile(String filename) throws IOException {
        File file = new File(filename);
        InputStream in = new FileInputStream(file);
        int tempbyte = 0;
        while ((tempbyte = in.read()) != -1) {
            imgByteToWrite.add(tempbyte);
        }


        /*
           Ҫ���û��������̵�ͷ512�ֽڵ�������ϵͳ���ں˼��ص��ڴ�
           ǰ512�ֽڵ���������ֽڱ�����55,aa(Intel��˾�涨)
           �����޷������ں�
        */
        imgByteToWrite.add(0x55);
        imgByteToWrite.add(0xaa);
        imgByteToWrite.add(0xf0);
        imgByteToWrite.add(0xff);
        imgByteToWrite.add(0xff);
    }

    private HelloWorldOS(String s) throws IOException {
        //for (int i : imgContent) {
        //    imgByteToWrite.add(i);
        //}
        ////0a ���з�
        //imgByteToWrite.add(0x0a);
        //imgByteToWrite.add(0x0a);
        //for (int j = 0; j < s.length(); j++) {
        //    imgByteToWrite.add((int)s.charAt(j));
        //}
        //imgByteToWrite.add(0x0a);
        //
        //int len = 0x1fe;         //510B
        //int curSize = imgByteToWrite.size();
        //for (int k = 0; k < len - curSize; k++) {
        //    imgByteToWrite.add(0);
        //}
        //
        ///*
        // * Ҫ���û��������̵�ͷ512�ֽڵ�������ϵͳ���ں˼��ص��ڴ�
        // * ͷ512�ֽڵ���������ֽڱ�����55,aa(Intel��˾�涨)
        // * �����޷������ں�
        // */
        //imgByteToWrite.add(0x55);
        //imgByteToWrite.add(0xaa);
        //imgByteToWrite.add(0xf0);
        //imgByteToWrite.add(0xff);
        //imgByteToWrite.add(0xff);
        readKernelFromFile("F:\\Code\\Java\\Java4LinuxOS\\boot");
        int len = 0x168000;         //1474560B
        int curSize = imgByteToWrite.size();
        for (int l = 0; l < len - curSize; l++) {
            imgByteToWrite.add(0);
        }

    }

    /**
     * �ڴ����ϴ���һ�� 1474560�ֽڵĶ������ļ�
     * �� imgContent������д����ļ���ͷ512�ֽ�
     * ����������ļ�����Ϊһ�� 1.5M�������������ڵ���
     * ���������������
     */
    private void makeFllopy()   {
        try {
            DataOutputStream out = new DataOutputStream(new FileOutputStream("system.img"));
            for (int i = 0; i < imgByteToWrite.size(); i++) {
                out.writeByte(imgByteToWrite.get(i).byteValue());
            }
            System.out.println("ӳ���ļ��������...");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) throws IOException {
    	HelloWorldOS op = new HelloWorldOS("hello, this is my first line of my operating system code");
        op.makeFllopy();
    }
}
