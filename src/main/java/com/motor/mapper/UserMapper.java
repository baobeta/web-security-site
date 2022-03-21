package com.motor.mapper;

import com.motor.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<User> {
    @Override
    public User mapRow(ResultSet resultSet) {
        try {
            User user = new User();
            user.setId(resultSet.getInt("id"));
            user.setRole_id(resultSet.getInt("role_id"));
            user.setUsername(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
            user.setMail(resultSet.getString("mail"));
            user.setPhone(resultSet.getString("phone"));
            user.setfullname(resultSet.getString("fullname"));
            user.setImage(resultSet.getString("image"));
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
