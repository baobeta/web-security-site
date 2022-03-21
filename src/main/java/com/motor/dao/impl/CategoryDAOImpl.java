package com.motor.dao.impl;

import com.motor.dao.ICategoryDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.CategoryMapper;
import com.motor.model.Category;

import java.util.List;

public class CategoryDAOImpl extends AbstractDAO<Category> implements ICategoryDAO {
    @Override
    public List<Category> findAll() {
        String sql = "select * from Categories";
        return query(sql, new CategoryMapper());
    }

    @Override
    public Category findOne(int id) {
        String sql = "select * from Categories where id = ?";
        List<Category> category = query(sql, new CategoryMapper(), id);
        return category.isEmpty() ? null : category.get(0);
    }

    @Override
    public Long insert(Category category) {
        String sql = "INSERT INTO [dbo].[Categories] ([name]) VALUES (?);";
        return insert(sql, category.getName());
    }

    @Override
    public void update(Category category) {
        String sql = "UPDATE [dbo].[Categories] SET [name] = ? WHERE [id] = ?;";
        update(sql, category.getName(), category.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Categories] WHERE id = ?";
        update(sql, id);
    }
}
