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
public class MessageBoardController {

    @Autowired
    private MessageBoardService service;


    @RequestMapping("board")
    public String messageBoard(Model model, @RequestParam String userName) {
        List<MessageBoard> messageList = service.getMessageList(userName);
        model.addAttribute("messageList", messageList);
        return "page/messageBoard";
    }

    @RequestMapping("leaveMessage")
    public String leaveMessage(Model model, @RequestParam String userName, @RequestParam String content) {
        MessageBoard message=new MessageBoard();
        message.setUserName(userName);
        message.setContent(content);
        service.addMessage(message);
        List<MessageBoard> messageList = service.getMessageList(userName);
        model.addAttribute("messageList", messageList);
        return "page/messageBoard";
    }

}
