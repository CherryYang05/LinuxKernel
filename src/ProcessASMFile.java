import java.io.*;

/**
 * @Author Cherry
 * @Date 2021/1/26
 * @Time 16:32
 * @Brief 处理 ASM 汇编文件，删除全局变量声明 (global)
 * 外部变量声明 (extern) 和 SECTION 段定义
 */

public class ProcessASMFile {
    private String fileName = null;
    private static String bakFileName = null;
    private FileWriter fileWriter = null;
    private static boolean isRename = false;
    private static File bakFile = null;

    /**
     * 将原 ASM 文件拷贝一份，加上 .bak 后缀，再将拷贝的文件进行处理写入原文件
     * @param fileName 最终保存的文件名，也是一开始需要处理的文件
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
     * 删除全局变量声明 (global) 外部变量声明 (extern) 和 SECTION 段定义
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
        fis.close();                        //必须关闭流才能删除文件
    }

    public static void main(String[] args) throws IOException {
        ProcessASMFile processASMFile = new ProcessASMFile(args[0]);    //用于命令行输入参数执行
        if (isRename) {
            processASMFile.processASM();
            System.out.println("ASM file modified done!");
            System.out.println(bakFile.getName() + " delete " + bakFile.delete());
        } else {
            System.out.println("ASM file modified failed!");
        }
    }
}
