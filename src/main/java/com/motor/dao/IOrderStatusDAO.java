package com.motor.dao;

import com.motor.model.OrderStatus;

import java.util.List;

public interface IOrderStatusDAO {
    List<OrderStatus> findAll();

    OrderStatus findOne(int id);
}
