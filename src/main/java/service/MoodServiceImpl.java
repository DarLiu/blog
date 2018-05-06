package service;

import dao.MoodDAO;
import model.Mood;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MoodServiceImpl implements  MoodService{

    @Autowired
    private MoodDAO dao;

    public List<Mood> getMoodListByNothing() {
        return dao.getMoodListByNothing();
    }

    //获取该用户的心情列表
    public List<Mood> getMoodList(String userName) {
        return dao.getMoodList(userName);
    }

    //通过id获取具体的心情
    public Mood getMoodById(int id) {
        return dao.getMoodById(id);
    }

    public void addMood(Mood mood) {
        dao.addMood(mood);
    }

    public void deleteMood(int id) {
        dao.deleteMood(id);
    }
}
