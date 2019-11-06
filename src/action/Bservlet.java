package action;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

@WebServlet("/Bservlet")
public class Bservlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// 需要用到commons-fileupload.jar, commons-io.jar

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. 创建配置工厂
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 2. 根据配置工厂创建解析请求中文件上传内容的解析器
        ServletFileUpload upload = new ServletFileUpload(factory);
        // 3. 判断当前请求是不是多段提交
        if (!upload.isMultipartContent(request)) {
            throw new RuntimeException("不是多段提交！");
        }
       
        try {
            // 4. 解析request对象，将已经分割过的内容放进了List
            List<FileItem> list = upload.parseRequest(request);
            if (list != null) {
                for (FileItem fileItem : list) {
                    // 判断当前段是普通字段还是文件,这个方法是判断普通段
                    if (fileItem.isFormField()) {
                        // 获得jsp里name属性对应的值,这里是username
                        String fname = fileItem.getFieldName();
                        // 获得用户输入的用户名
                        String value = fileItem.getString();
                       
                        System.out.println(fname +  "=>"+value );
                       
                    // 否则就是文件了
                    } else {
                        // 获得上传文件的文件名
                        String name = fileItem.getName();
                        // 获得文件上传段中，文件的流
                        InputStream in = fileItem.getInputStream();
                        // 字节输出流，用以保存文件
                        FileOutputStream fos = new FileOutputStream("C:\\Users\\"+name);
                        // 将输入流复制到输出流中
                        IOUtils.copy(in, fos);
                        fos.close();
                    }
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }

}