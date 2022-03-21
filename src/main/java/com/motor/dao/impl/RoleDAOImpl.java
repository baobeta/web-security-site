package com.motor.dao.impl;

import com.motor.dao.IRoleDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.RoleMapper;
import com.motor.model.Role;

import java.util.List;

public class RoleDAOImpl extends AbstractDAO<Role> implements IRoleDAO {
    @Override
    public List<Role> findAll() {
        String sql = "select * from Roles";
        return query(sql, new RoleMapper());
    }

    @Override
    public Role findOne(int id) {
        String sql = "select * from Roles where id = ?";
        List<Role> roles = query(sql, new RoleMapper(), id);
        return roles.isEmpty() ? null : roles.get(0);
    }
}
