package com.motor.service.impl;

import com.motor.dao.IUserDAO;
import com.motor.dao.impl.UserDAOImpl;
import com.motor.model.User;
import com.motor.service.IUserService;

import java.util.List;

public class UserServiceImpl implements IUserService {
    //    @Inject
    IUserDAO userDAO = new UserDAOImpl();

    @Override
    public List<User> findAll() {
        return userDAO.findAll();
    }

    @Override
    public List<User> findAllSeller() {
        return userDAO.findAllSeller();
    }

    @Override
    public User findOne(int id) {
        return userDAO.findOne(id);
    }

    @Override
    public User findOneWithUsername(String username) {
        return userDAO.findOneWithUsername(username);
    }

    @Override
    public User findOneWithEmail(String email) {
        return userDAO.findOneWithEmail(email);
    }

    @Override
    public User login(String username, String password) {
        return userDAO.login(username, password);
    }

    @Override
    public void updateInfo(User user) {
        userDAO.updateInfo(user);
    }

    @Override
    public void updateImage(User user) {
        userDAO.updateImage(user);
    }

    @Override
    public void updatePassword(User user) {
        userDAO.updatePassword(user);
    }

    @Override
    public void update(User user) {
        userDAO.update(user);
    }

    @Override
    public void delete(int id) {
        userDAO.delete(id);
    }

    @Override
    public Long insert(User user) {
        return userDAO.insert(user);
    }

    @Override
    public int countCustomer() {
        return userDAO.countCustomer();
    }

    @Override
    public int countSeller() {
        return userDAO.countSeller();
    }
}
