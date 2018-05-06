package service;

import dao.AdminDAO;
import model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDAO adminDAO;

    //检查数据库是否存在该用户或者密码是否正确
    public Admin checkAdminLogin(String name, String password) {
        Admin admin=adminDAO.getAdminByName(name);
        System.out.println("service    ---"+admin);
        if(admin!=null&&password.equals(admin.getPassword())){
            return admin;
        }
        return null;
    }

    //管理注册
    public void checkAdminRegister(Admin admin) {
        if(checkAdminLogin(admin.getName(),admin.getPassword())!=null){
            System.out.println("管理员已存在");
        }else{
            adminDAO.addAdmin(admin);
        }
    }
}
