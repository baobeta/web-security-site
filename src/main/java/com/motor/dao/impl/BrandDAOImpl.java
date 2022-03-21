package com.motor.dao.impl;

import com.motor.dao.IBrandDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.BrandMapper;
import com.motor.model.Brand;

import java.util.List;

public class BrandDAOImpl extends AbstractDAO<Brand> implements IBrandDAO {
    @Override
    public List<Brand> findAll() {
        String sql = "select * from Brands";
        return query(sql, new BrandMapper());
    }

    @Override
    public Brand findOne(int id) {
        String sql = "select * from Brands where id = ?";
        List<Brand> brand = query(sql, new BrandMapper(), id);
        return brand.isEmpty() ? null : brand.get(0);
    }

    @Override
    public Long insert(Brand brand) {
        String sql = "INSERT INTO [dbo].[Brands] ([name]) VALUES (?);";
        return insert(sql, brand.getName());
    }

    @Override
    public void update(Brand brand) {
        String sql = "UPDATE [dbo].[Brands] SET [name] = ? WHERE [id] = ?;";
        update(sql, brand.getName(), brand.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Brands] WHERE id = ?";
        update(sql, id);
    }
}
