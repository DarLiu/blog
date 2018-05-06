package service;

import model.User;

import java.util.List;

public interface IUserService {
    public void addUser(User user);
    public void updateUser(User user);
    public void deleteUser(int id);
    public User getUserByName(String userName);
    public List<User> getUserList();
}
