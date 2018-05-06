package dao;

import model.Admin;

public interface AdminDAO {
    public Admin getAdminByName(String name);//查询
    public void addAdmin(Admin admin);//添加
}
