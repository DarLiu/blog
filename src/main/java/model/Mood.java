package model;

import java.util.Date;

public class Mood {
    private int id;
    private String userName;
    private String moodContent;
    private Date time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMoodContent() {
        return moodContent;
    }

    public void setMoodContent(String moodContent) {
        this.moodContent = moodContent;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Mood{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", moodContent='" + moodContent + '\'' +
                ", time=" + time +
                '}';
    }
}
