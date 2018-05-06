package controller;

import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.IUserService;

@Controller
public class AboutController {
    @Autowired
    private IUserService service;

    //获取用户信息，有了登录注册后通过session获取
    @RequestMapping(value = "about",method = RequestMethod.GET)
    public String toAbout(Model model,@RequestParam String userName){
        User user=service.getUserByName(userName);
        model.addAttribute("user",user);
        return "page/about";
    }

}
