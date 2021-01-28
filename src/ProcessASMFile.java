import java.io.*;

/**
 * @Author Cherry
 * @Date 2021/1/26
 * @Time 16:32
 * @Brief ���� ASM ����ļ���ɾ��ȫ�ֱ������� (global)
 * �ⲿ�������� (extern) �� SECTION �ζ���
 */

public class ProcessASMFile {
    private String fileName = null;
    private static String bakFileName = null;
    private FileWriter fileWriter = null;
    private static boolean isRename = false;
    private static File bakFile = null;

    /**
     * ��ԭ ASM �ļ�����һ�ݣ����� .bak ��׺���ٽ��������ļ����д���д��ԭ�ļ�
     * @param fileName ���ձ�����ļ�����Ҳ��һ��ʼ��Ҫ������ļ�
     * @throws IOException IOException
     */
    private ProcessASMFile(String fileName) throws IOException {
        this.fileName = fileName;
        File file = new File(fileName);
        if (file.exists()) {
            bakFileName = fileName + ".bak";
            bakFile = new File(bakFileName);
            isRename = file.renameTo(bakFile);
            fileWriter = new FileWriter(fileName, true);
        } else {
            System.out.println("Do not exist this file!");
        }

    }

    /**
     * ɾ��ȫ�ֱ������� (global) �ⲿ�������� (extern) �� SECTION �ζ���
     * @throws IOException IOException
     */
    private void processASM() throws IOException {
        File file = new File(bakFileName);
        FileInputStream fis = new FileInputStream(file);
        BufferedReader reader = new BufferedReader(new InputStreamReader(fis));
        if (file.getName().endsWith(".asm.bak") && file.exists() && file.isFile()) {
            String lineText;
            while ((lineText = reader.readLine()) != null) {
                while (lineText.toLowerCase().contains("global") |
                        lineText.toLowerCase().contains("extern") |
                        lineText.toLowerCase().contains("section")) {
                    lineText = reader.readLine();
                }
                //System.out.println(lineText);
                fileWriter.write(lineText + "\n");
            }
        }
        fileWriter.flush();
        fileWriter.close();
        fis.close();                        //����ر�������ɾ���ļ�
    }

    public static void main(String[] args) throws IOException {
        ProcessASMFile processASMFile = new ProcessASMFile(args[0]);    //�����������������ִ��
        if (isRename) {
            processASMFile.processASM();
            System.out.println("ASM file modified done!");
            System.out.println(bakFile.getName() + " delete " + bakFile.delete());
        } else {
            System.out.println("ASM file modified failed!");
        }
    }
}
