package service;

import dao.UserDAO;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements IUserService{
    @Autowired
    private UserDAO dao;

    //添加用户
    public void addUser(User user) {
        dao.addUser(user);
    }

    //删除
    public void deleteUser(int id){
         dao.deleteUser(id);
    }

    //更改用户
    public void updateUser(User user){
         dao.updateUser(user);
    }

    //查询用户
    public User getUserByName(String userName){
        return dao.getUserByName(userName);
    }

    //获取用户列表
    public List<User> getUserList(){
        return dao.getUserList();
    }


}
