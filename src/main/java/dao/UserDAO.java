package dao;

import model.User;

import java.util.List;

//不需要dao的实现类，通过代理生成
public interface UserDAO {
    public void addUser(User user);
    public void updateUser(User user);
    public void deleteUser(int id);
    public User getUserByName(String userName);
    public List<User> getUserList();
}
