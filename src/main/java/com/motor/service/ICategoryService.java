package com.motor.service;

import com.motor.model.Category;

import java.util.List;

public interface ICategoryService {
    List<Category> findAll();

    Category findOne(int id);

    Long insert(Category category);

    void update(Category category);

    void delete(int id);
}
