package service;

import model.Admin;

public interface AdminService {
    public Admin checkAdminLogin(String name, String password);//管理员登录
    public void checkAdminRegister(Admin admin);//管理员注册
}
