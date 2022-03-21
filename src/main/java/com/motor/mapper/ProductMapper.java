package com.motor.mapper;

import com.motor.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product> {
    @Override
    public Product mapRow(ResultSet resultSet) {
        try {
            Product product = new Product();
            product.setId(resultSet.getInt("id"));
            product.setName(resultSet.getString("name"));
            product.setPrice(resultSet.getInt("price"));
            product.setDescription(resultSet.getString("description"));
            product.setImage(resultSet.getString("image"));
            product.setCategory_id(resultSet.getInt("category_id"));
            product.setSeller_id(resultSet.getInt("seller_id"));
            product.setAmount(resultSet.getInt("amount"));
            product.setStatus(resultSet.getInt("status"));
            product.setBrand_id(resultSet.getInt("brand_id"));
            return product;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
