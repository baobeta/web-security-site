package com.motor.mapper;

import com.motor.model.OrderDetail;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderDetailMapper implements RowMapper<OrderDetail> {
    @Override
    public OrderDetail mapRow(ResultSet rs) {
        try {
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setId(rs.getInt("id"));
            orderDetail.setQuantity(rs.getInt("quantity"));
            orderDetail.setUnit_price(rs.getInt("unit_price"));
            orderDetail.setProduct_id(rs.getInt("product_id"));
            orderDetail.setOrder_id(rs.getInt("order_id"));
            return orderDetail;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}

