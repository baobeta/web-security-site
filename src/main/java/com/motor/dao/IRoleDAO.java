package com.motor.dao;

import com.motor.model.Role;

import java.util.List;

public interface IRoleDAO {

    List<Role> findAll();

    Role findOne(int id);
}
