package controller;

import model.MessageBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.MessageBoardService;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class MessageManageController {
    @Autowired
    private MessageBoardService service;

    @RequestMapping("messageBoard")
    public String toMessageBoardManage(Model model){
        List<MessageBoard> messageList=service.getMessageListWithNothing();
        model.addAttribute("messageList",messageList);
        System.out.println(messageList);
        return "admin/messageManage";
    }

    @RequestMapping("deleteMessage")
    public String  deleteMessage(@RequestParam int id){
        service.deleteMessage(id);
        return "admin/messageManage";
    }



}
