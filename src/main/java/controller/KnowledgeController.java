package controller;

import model.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.ArticleService;

import java.util.List;

@Controller
public class KnowledgeController {

    @Autowired
    private ArticleService service;


    @RequestMapping("knowledge")
    public String index(Model model){
        List<Article> articleList=service.getArticleList();
        List<Article> rankList=service.getRankByTime();
        model.addAttribute("rankList",rankList);
        model.addAttribute("articleList",articleList);
        return "page/knowledge";
    }

}
