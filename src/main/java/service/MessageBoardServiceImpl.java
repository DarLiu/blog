package service;

import dao.MessageBoardDAO;
import model.MessageBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageBoardServiceImpl implements MessageBoardService {

    @Autowired
    private MessageBoardDAO dao;

    public List<MessageBoard> getMessageListWithNothing() {
        return dao.getMessageListWithNothing();
    }

    //返回留言列表
    public List<MessageBoard> getMessageList(String userName) {
        return dao.getMessageList(userName);
    }

    //添加留言
    public void addMessage(MessageBoard message) {
        dao.addMessage(message);
    }

    public void deleteMessage(int id) {
        dao.deleteMessage(id);
    }
}
