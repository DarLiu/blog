package dao;

import model.MessageBoard;

import java.util.List;

public interface MessageBoardDAO {
    public List<MessageBoard> getMessageListWithNothing();
    public List<MessageBoard> getMessageList(String userName);
    public  void addMessage(MessageBoard message);
    public void deleteMessage(int id);
}
