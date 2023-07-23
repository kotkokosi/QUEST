package com.example.jfi.classes;

public class User {
    private String name;
    private int countGame;
    private String ip;

    private static final User user = new User();
    public static User getUser() {
        return user;
    }
    private User() {
    }
    public int getCountGame() {
        return countGame;
    }

    public void setCountGame(int countGame) {
        this.countGame = countGame;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }




    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void plusCountGame(){
        countGame++;
    }
}
