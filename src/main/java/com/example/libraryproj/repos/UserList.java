package com.example.libraryproj.repos;

import com.example.libraryproj.data.User;

import java.util.ArrayList;

public class UserList {
    private final ArrayList<User> userListArray = new ArrayList<>();
    private static UserList userList;

    public static UserList getUserList() {
        if (UserList.userList == null) {
            UserList.userList = new UserList();
        }
        return UserList.userList;
    }

    private UserList() {
    }

    public void insert(User user) {
        this.userListArray.add(user);
    }
    public int getSize() {
        return this.userListArray.size();
    }

    public User getUserById(int id) {
        for (User user : this.userListArray) {
            if (user.getId() == id) {
                return  user;
            }
        }
        return null;
    }

    public ArrayList<User> getUserListArray() {
        return userListArray;
    }
    @Override
    public String toString() {
        StringBuilder fullString = new StringBuilder();
        for (User user: this.userListArray) {
            fullString.append(user.toString()).append("<br>");
            fullString.append("<br>");
        }
        return fullString.toString();
    }
}
