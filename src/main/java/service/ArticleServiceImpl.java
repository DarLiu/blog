package service;

import dao.ArticleDAO;
import model.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleDAO dao;

    public void addArticle(Article article) {
         dao.addArticle(article);
    }

    public void deleteArticle(int id) {
        dao.deleteArticle(id);
    }

    public List<Article> getArticleList() {
        return dao.getArticleList();
    }

    public List<Article> getArticleListByName(String userName) {
        return dao.getArticleListByName(userName);
    }

    public List<Article> getLifeArticleList(String categoryName) {
        return dao.getLifeArticleList(categoryName);
    }

    public List<Article> getRankByTime() {
        return dao.getRankByTime();
    }

    public  void updateArticle(Article article){
        dao.updateArticle(article);
    }

    //通过ID获取Article
    public Article getArticleById(int id) {
        return dao.getArticleById(id);
    }
}
