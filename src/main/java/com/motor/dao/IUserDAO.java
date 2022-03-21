package com.motor.dao;

import com.motor.model.User;

import java.util.List;

public interface IUserDAO {
    List<User> findAll();

    List<User> findAllSeller();

    User findOne(int id);

    User findOneWithUsername(String username);

    User findOneWithEmail(String email);

    User login(String username, String password);

    void updateInfo(User user);

    void updateImage(User user);

    void updatePassword(User user);

    void update(User user);

    void delete(int id);

    Long insert(User user);

    int countCustomer();

    int countSeller();


}
