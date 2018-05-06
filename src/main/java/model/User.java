package model;

import java.util.Date;

public class User {
    private Integer id;
    private String userName;
    private String password;
    private String introduce;
    private String avactorPath;
    private String realName;
    private Date birthday;
    private String nativePlace;
    private String nowPlace;
    private String work;
    private String likeBook;
    private String likeMusic;
    private String shortWord;

    public String getShortWord() {
        return shortWord;
    }

    public void setShortWord(String shortWord) {
        this.shortWord = shortWord;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getAvactorPath() {
        return avactorPath;
    }

    public void setAvactorPath(String avactorPath) {
        this.avactorPath = avactorPath;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getNativePlace() {
        return nativePlace;
    }

    public void setNativePlace(String nativePlace) {
        this.nativePlace = nativePlace;
    }

    public String getNowPlace() {
        return nowPlace;
    }

    public void setNowPlace(String nowPlace) {
        this.nowPlace = nowPlace;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public String getLikeBook() {
        return likeBook;
    }

    public void setLikeBook(String likeBook) {
        this.likeBook = likeBook;
    }

    public String getLikeMusic() {
        return likeMusic;
    }

    public void setLikeMusic(String likeMusic) {
        this.likeMusic = likeMusic;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", introduce='" + introduce + '\'' +
                ", avactorPath='" + avactorPath + '\'' +
                ", realName='" + realName + '\'' +
                ", birthday=" + birthday +
                ", nativePlace='" + nativePlace + '\'' +
                ", nowPlace='" + nowPlace + '\'' +
                ", work='" + work + '\'' +
                ", likeBook='" + likeBook + '\'' +
                ", likeMusic='" + likeMusic + '\'' +
                ", shortWord='" + shortWord + '\'' +
                '}';
    }
}
