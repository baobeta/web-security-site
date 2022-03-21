package com.motor.mapper;

import com.motor.model.Order;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderMapper implements RowMapper<Order> {
    @Override
    public Order mapRow(ResultSet rs) {
        try {
            Order order = new Order();
            order.setId(rs.getInt("id"));
            order.setCustomer_id(rs.getInt("customer_id"));
            order.setSeller_id(rs.getInt("seller_id"));
            order.setBuy_date(rs.getTimestamp("buy_date"));
            order.setPhone(rs.getString("phone"));
            order.setAddress(rs.getString("address"));
            order.setReceiver(rs.getString("receiver"));
            order.setPay_id(rs.getInt("pay_id"));
            order.setStatus(rs.getInt("status"));
            return order;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}

