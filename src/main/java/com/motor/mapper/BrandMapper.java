package com.motor.mapper;

import com.motor.model.Brand;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BrandMapper implements RowMapper<Brand> {
    @Override
    public Brand mapRow(ResultSet resultSet) {
        try {
            Brand brand = new Brand();
            brand.setId(resultSet.getInt("id"));
            brand.setName(resultSet.getString("name"));
            return brand;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
