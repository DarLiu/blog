package controller;


import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;



@Controller
public class UploadController {
    @RequestMapping("/upload")
    //@ResponseBody
    public JSONObject upload(@RequestParam(value="myFileName") MultipartFile upload, HttpSession session) throws IOException {
        JSONObject json=new JSONObject();
        String fileName=upload.getOriginalFilename();
        String leftPath=session.getServletContext().getRealPath("/upload/");
        File file=new File(leftPath,fileName);

        if(!file.exists()){
            file.mkdirs();
        }
        upload.transferTo(file);
        json.put("url",leftPath+fileName);
        System.out.println("文件名： "+leftPath+fileName);
        return json;
    }
}
