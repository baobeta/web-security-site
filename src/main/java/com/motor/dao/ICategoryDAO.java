package com.motor.dao;


import com.motor.model.Category;

import java.util.List;

public interface ICategoryDAO {
    List<Category> findAll();

    Category findOne(int id);

    Long insert(Category category);

    void update(Category category);

    void delete(int id);
}
