import java.io.*;

/**
 * @Author Cherry
 * @Date 2021/1/24
 * @Time 21:30
 * @Brief 将字体转成二进制文件，字体见 font.txt
 */

public class MakeFont {
    private String fontFilePath = null;
    private FileWriter fileWriter = null;
    private File file = new File("fontData.inc");

    private MakeFont(String filePath, boolean isAppend) throws IOException {
        this.fontFilePath = filePath;
        fileWriter = new FileWriter(file.getName(), isAppend);
    }

    /**
     * 创建文件输出流对象，并在文件头部添加标签： systemFont
     *
     * @throws IOException IOException
     */
    private void makeFont() throws IOException {
        String encoding = "GBK";
        File file = new File(fontFilePath);
        if (file.exists() && file.isFile()) {
            fileWriter.write("systemFont:\n");
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, encoding));
            String lineText = null;
            while ((lineText = bufferedReader.readLine()) != null) {
                if (lineText.contains("char")) {
                    writeToBinary(bufferedReader);
                }
            }
            fileWriter.flush();     //刷新流，写入文件
            fileWriter.close();
            System.out.println("Font File Done!");
        }
    }

    /**
     * 将符号表示的字体转化成二进制
     *
     * @param reader BufferedReader
     * @throws IOException
     */
    private void writeToBinary(BufferedReader reader) throws IOException {
        int line = 16;              //一个字符有16行
        fileWriter.write("db ");
        String lineText = null;
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
            fileWriter.write("0" + Integer.toHexString(b & 0xff) + "H");
            //System.out.print("0" + Integer.toHexString(b & 0xff) + "H");
            if (line != 0) {
                //System.out.print(", ");
                fileWriter.write(", ");
            }
        }
        fileWriter.write("\n");
        //System.out.println("\n");
    }

    public static void main(String[] args) throws IOException {
        MakeFont makeFont = new MakeFont("font.txt", false);
        makeFont.makeFont();
    }
}
