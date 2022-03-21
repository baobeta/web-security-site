package com.motor.service;

import com.motor.model.Role;

import java.util.List;

public interface IRoleService {
    List<Role> findAll();

    Role findOne(int id);
}
