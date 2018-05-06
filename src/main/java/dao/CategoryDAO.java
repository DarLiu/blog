package dao;

import model.Article;
import model.Category;

import java.util.List;

public interface CategoryDAO {
    public void addCategory(Category category);
    public void deleteCategory(int id);
    public void updateCategory(int id);
    public List<Category> getCategoryList();
    public Category getCategoryById(int id);
}
