package dao;

import model.Article;

import java.util.List;

public interface ArticleDAO {
    public  void addArticle(Article article);
    public  void deleteArticle(int id);
    public List<Article> getArticleListByName(String userName);
    public List<Article> getRankByTime();
    public List<Article> getArticleList();
    public List<Article> getLifeArticleList(String categoryName);
    public  void updateArticle(Article article);
    public Article getArticleById(int id);
}
