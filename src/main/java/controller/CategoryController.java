package controller;

import model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.CategoryService;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class CategoryController {
    @Autowired
    private CategoryService service;

    @RequestMapping("category")
    public String getCategoryList(Model model){
        List<Category> categoryList=service.getCategoryList();
        model.addAttribute("categoryList",categoryList);
        return "admin/categoryManage";
    }

    @RequestMapping("deleteCategory")
    public String deleteCategoryById(@RequestParam int id){
        service.deleteCategory(id);
        return "admin/categoryManage";
    }

    @RequestMapping("toAddCategory")
    public String toAddCategory(){
        return "admin/addCategory";
    }

    @RequestMapping("addCategory")
    public String addCategory(@RequestParam String categoryName){
        Category category=new Category();
        category.setCategoryName(categoryName);
        service.addCategory(category);
        return "admin/categoryManage";
    }


}
