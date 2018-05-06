package controller;

import model.Admin;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import service.AdminService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
//model中放入admin，当做key
@SessionAttributes("admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("go")
    public String go(){
        return "redirect:user";
    }

    //正常访问login页面
    @RequestMapping(value = "login",method = RequestMethod.GET)
    public String login(){
        return "admin/login";
    }

    //正常访问register页面
    @RequestMapping(value = "register",method = RequestMethod.GET)
    public String register(){
        return "admin/registerAdmin";
    }

    //表单提交的路径
    @RequestMapping(value = "checkAdminLogin",method = RequestMethod.POST)
    public String checkAdminLogin(Model model, @RequestParam String name,@RequestParam String password){
        Admin admin=adminService.checkAdminLogin(name,password);
        System.out.println("checkAdmin   "+admin);
        if(admin!=null){
            model.addAttribute("admin",admin);
            return "redirect:/admin/go";
        }
        return "admin/login";
    }

    @RequestMapping(value = "checkAdminRegister",method = RequestMethod.POST)
    public String checkAdminRegister(@RequestParam String name,@RequestParam String password,
                                     @RequestParam String rePassword){
        if(!name.equals("")&&password.equals(rePassword)){
            Admin admin=new Admin();
            admin.setName(name);
            admin.setPassword(password);
            adminService.checkAdminRegister(admin);
            return "admin/login";
        }
        return "admin/registerAdmin";
    }

    @RequestMapping("outLogin")
    public String outAdminLogin(HttpSession session){
        session.invalidate();
        return "admin/login";
    }

}
