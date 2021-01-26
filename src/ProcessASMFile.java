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
    private static String newFileName = null;
    private static FileWriter fileWriter = null;
    private static boolean isRename = false;
    private static File newfile = null;
    private ProcessASMFile(String fileName) throws IOException {
        this.fileName = fileName;
        File file = new File(fileName);
        newFileName = fileName + ".bak";
        newfile = new File(newFileName);
        isRename = file.renameTo(newfile);
        fileWriter = new FileWriter(fileName, true);
    }

    private void processASM() throws IOException {
        File file = new File(newFileName);
        FileInputStream fis = new FileInputStream(file);
        BufferedReader reader = new BufferedReader(new InputStreamReader(fis));
        if (file.getName().endsWith(".asm.bak") && file.exists() && file.isFile()) {
            String lineText = null;
            while ((lineText = reader.readLine()) != null) {
                while (lineText.contains("global") | lineText.contains("extern") |
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
        ProcessASMFile processASMFile = new ProcessASMFile("ASMTest.asm");
        if (isRename) {
            processASMFile.processASM();
            System.out.println("ASM file modified done!");
            System.out.println(newfile.getName() + " delete " + newfile.delete());
        } else {
            System.out.println("ASM file modified failed!");
        }
    }
}
