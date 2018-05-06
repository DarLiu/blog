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
public class LifeController {
    @Autowired
    private ArticleService service;

    @RequestMapping("slowLife")
    public String slowLife(Model model, @RequestParam String categoryName){
        List<Article> lifeList=service.getLifeArticleList(categoryName);
        List<Article> rankList=service.getRankByTime();
        model.addAttribute("rankList",rankList);
        model.addAttribute("lifeList",lifeList);
        return "page/slowLife";
    }

}
