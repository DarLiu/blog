package service;

import model.Mood;

import java.util.List;

public interface MoodService {
    public List<Mood> getMoodListByNothing();
    public List<Mood> getMoodList(String userName);
    public Mood getMoodById(int id);
    public void addMood(Mood mood);
    public void deleteMood(int id);
}
