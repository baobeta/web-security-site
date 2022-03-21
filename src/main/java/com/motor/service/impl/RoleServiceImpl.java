package com.motor.service.impl;

import com.motor.dao.IRoleDAO;
import com.motor.dao.impl.RoleDAOImpl;
import com.motor.model.Role;
import com.motor.service.IRoleService;

import java.util.List;

public class RoleServiceImpl implements IRoleService {
    //    @Inject
    IRoleDAO roleDAO = new RoleDAOImpl();

    @Override
    public List<Role> findAll() {
        return roleDAO.findAll();
    }

    @Override
    public Role findOne(int id) {
        return roleDAO.findOne(id);
    }
}
