package com.motor.dao;

import com.motor.model.Brand;

import java.util.List;

public interface IBrandDAO {
    List<Brand> findAll();

    Brand findOne(int id);

    Long insert(Brand brand);

    void update(Brand brand);

    void delete(int id);
}
