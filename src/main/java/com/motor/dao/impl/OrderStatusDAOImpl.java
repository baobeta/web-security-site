package com.motor.dao.impl;

import com.motor.dao.IOrderStatusDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.OrderStatusMapper;
import com.motor.model.OrderStatus;

import java.util.List;

public class OrderStatusDAOImpl extends AbstractDAO<OrderStatus> implements IOrderStatusDAO {
    @Override
    public List<OrderStatus> findAll() {
        String sql = "select * from OrderStatus";
        return query(sql, new OrderStatusMapper());
    }

    @Override
    public OrderStatus findOne(int id) {
        String sql = "select * from OrderStatus where id = ?";
        List<OrderStatus> orderStatuses = query(sql, new OrderStatusMapper(), id);
        return orderStatuses.isEmpty() ? null : orderStatuses.get(0);
    }
}
