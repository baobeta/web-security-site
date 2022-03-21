package com.motor.mapper;

import com.motor.model.CartItems;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CartItemsMapper implements RowMapper<CartItems>{

    @Override
    public CartItems mapRow(ResultSet resultSet) {
        try {
            CartItems brand = new CartItems();
            brand.setId(resultSet.getInt("id"));
            brand.setQuantity(resultSet.getInt("quantity"));
            brand.setUnitprice(resultSet.getInt("unit_price"));

            brand.setUid(resultSet.getInt("customer_id"));

            return brand;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}