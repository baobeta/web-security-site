package com.motor.mapper;

import com.motor.model.OrderStatus;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderStatusMapper implements RowMapper<OrderStatus> {
    @Override
    public OrderStatus mapRow(ResultSet resultSet) {
        try {
            OrderStatus orderStatus = new OrderStatus();
            orderStatus.setId(resultSet.getInt("id"));
            orderStatus.setName(resultSet.getString("name"));
            return orderStatus;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
