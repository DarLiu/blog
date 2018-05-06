package controller;

import model.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.ArticleService;

import java.util.List;

@Controller

public class IndexController {

    @Autowired
    private ArticleService service;


    //注意这儿，登录之后这儿需要回去session的值，从而在首页分割出来该博客主的文章
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(Model model){
        List<Article> articleList=service.getArticleListByName("DarLiu");
        List<Article> rankList=service.getRankByTime();
        model.addAttribute("rankList",rankList);
        model.addAttribute("articleList",articleList);
        return "page/index";
    }


    @RequestMapping(value = "index",method = RequestMethod.GET)
    public String toIndex(Model model){
        //获取用户的博客列表
        List<Article> articleList=service.getArticleList();
        List<Article> rankList=service.getRankByTime();
        System.out.println("获取到的list"+rankList);
        model.addAttribute("articleList",articleList);
        model.addAttribute("rankList",rankList);
        return "page/index";
    }


    @RequestMapping("getDetail")
    public String getArticleDetail(Model model, @RequestParam int id){
        Article article=service.getArticleById(id);
        List<Article> rankList=service.getRankByTime();
        model.addAttribute("rankList",rankList);
        model.addAttribute("article",article);
        return "page/detail";
    }

}
