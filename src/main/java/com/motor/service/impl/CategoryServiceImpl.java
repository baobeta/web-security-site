package com.motor.service.impl;

import com.motor.dao.ICategoryDAO;
import com.motor.dao.impl.CategoryDAOImpl;
import com.motor.model.Category;
import com.motor.service.ICategoryService;

import java.util.List;

public class CategoryServiceImpl implements ICategoryService {

    //    @Inject
    ICategoryDAO categoryDAO = new CategoryDAOImpl();

    @Override
    public List<Category> findAll() {
        return categoryDAO.findAll();
    }

    @Override
    public Category findOne(int id) {
        return categoryDAO.findOne(id);
    }

    @Override
    public Long insert(Category category) {
        return categoryDAO.insert(category);
    }

    @Override
    public void update(Category category) {
        categoryDAO.update(category);
    }

    @Override
    public void delete(int id) {
        categoryDAO.delete(id);
    }
}
