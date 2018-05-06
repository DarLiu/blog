package service;

import model.Article;

import java.util.List;

public interface ArticleService {
    public  void addArticle(Article article);
    public  void deleteArticle(int id);
    public List<Article> getArticleList();
    public List<Article> getArticleListByName(String userName);
    public List<Article> getLifeArticleList(String categoryName);
    public List<Article> getRankByTime();
    public  void updateArticle(Article article);
    public Article getArticleById(int id);
}
