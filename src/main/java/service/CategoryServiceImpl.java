package service;

import dao.CategoryDAO;
import model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDAO dao;

    public void addCategory(Category category) {
        dao.addCategory(category);
    }

    public void deleteCategory(int id) {
       dao.deleteCategory(id);
    }

    public void updateCategory(int id) {
        dao.updateCategory(id);
    }

    //获取分类列表
    public List<Category> getCategoryList() {
            return dao.getCategoryList();
    }

    public Category getCategoryById(int id) {
        return null;
    }
}
