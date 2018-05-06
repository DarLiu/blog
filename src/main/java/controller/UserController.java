package controller;

import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.IUserService;

import java.util.List;


@Controller
@RequestMapping("/admin")
public class UserController {

    @Autowired
    private IUserService service;



    //获取用户列表
    @RequestMapping("user")
    public String getUserList(Model model){
        List<User> userList=service.getUserList();
        System.out.println(userList);
        model.addAttribute("userList",userList);
        return "admin/index";
    }

    //删除用户
    @RequestMapping(value = "deleteUser",method = RequestMethod.GET)
    public String deleteUserById( @RequestParam int id){
        service.deleteUser(id);
        System.out.println("删除用户成功");
        return "admin/index";
    }



}
