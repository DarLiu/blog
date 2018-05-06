package controller;

import model.Article;
import model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.ArticleService;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class ArticleController {
    @Autowired
    private ArticleService service;

    @RequestMapping("article")
    public String getArticleList(Model model){
        List<Article> articleList=service.getArticleList();
        System.out.println(articleList);
        model.addAttribute("articleList",articleList);
        return "admin/articleManage";
    }

    @RequestMapping("toAddArticle")
    public String toAddArticle(){
        return "admin/addArticle";
    }

    @RequestMapping(value = "addArticle",method = RequestMethod.POST)
    public String addArticle(@RequestParam String title,@RequestParam String content,@RequestParam String categoryName){
        Article article=new Article();
        article.setTitle(title);
        article.setContent(content);
        article.setCategoryName(categoryName);
        article.setUserName("DarLiu");
        service.addArticle(article);
        return "admin/articleManage";
    }

    //删除用户
    @RequestMapping(value = "deleteArticle",method = RequestMethod.GET)
    public String deleteArticleById( @RequestParam int id){
        service.deleteArticle(id);
        System.out.println("删除用户成功");
        return "admin/articleManage";
    }

    @RequestMapping("getArticleById")
    public  String getArticleById(Model model,@RequestParam int id){
        Article article=service.getArticleById(id);
        model.addAttribute("article",article);
        return "admin/updateArticle";
    }

    @RequestMapping(value = "updateArticle" ,method = RequestMethod.POST)
    public String updateAritcle(@RequestParam int id, @RequestParam String title,
                                @RequestParam String content,@RequestParam String categoryName){
        Article article=service.getArticleById(id);
        article.setUserName("DarLiu");
        article.setTitle(title);
        article.setCategoryName(categoryName);
        article.setContent(content);
        service.updateArticle(article);
        return "admin/articleManage";
    }
}
